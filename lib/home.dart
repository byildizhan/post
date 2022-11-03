// ignore_for_file: prefer_const_constructors

import 'package:alidemircan/detailpage.dart';
import 'package:alidemircan/state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'posts_model.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  @override
  Widget build(BuildContext context) {
    Function func = Provider.of<DateTimes>(context).func;
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
          child: FutureBuilder<List<PostsModel>>(future: Provider.of<DateTimes>(context).getUsers(), builder: (context, snapshot){
            if(snapshot.hasData){
              var postlist = snapshot.data!;
              return ListView.builder(
                itemBuilder: ((context, index) {
                var post = postlist[index];
                return Card(
                  color: Colors.grey.withOpacity(0.4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                  child: ListTile(
                    leading: const Icon(Icons.adb_rounded, color: Colors.white, size: 50),
                    title: Text(post.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text(post.body, style: TextStyle(color: Colors.white)),
                    trailing: Text(post.userId.toString(), style: TextStyle(color: Colors.white)),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                      func(post.title, post.body, post.id);
                    },
                  ),
                );
              }),itemCount: postlist.length,
                  );
            }else if(snapshot.hasError){
              return const Text('error');
            }else{
              return const CircularProgressIndicator();
            }
          },),
        ),
      ),
    );
  }
}

