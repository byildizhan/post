import 'package:alidemircan/detailpage.dart';
import 'package:alidemircan/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Consumer<HomePageProvider>(
            builder: ((context, viewModel, child) {
              return ListView.builder(
                itemCount: viewModel.postList.length,
                itemBuilder: ((context, index) {
                  var post = viewModel.postList[index];
                  return Card(
                    color: Colors.grey.withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    child: ListTile(
                      leading: const Icon(Icons.adb_rounded,
                          color: Colors.white, size: 50),
                      title: Text(post.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(post.body,
                          style: TextStyle(color: Colors.white)),
                      trailing: Text(post.userId.toString(),
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      postsModel: post,
                                    )));
                      },
                    ),
                  );
                }),
              );
            }),
          ),
        ),
      ),
    );
  }
}
