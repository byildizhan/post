// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.only(top: 200),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/photos/photo.jpg')
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 30,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Icon(Icons.comment_outlined, size: 40, color: Colors.red),
                  const Icon(Icons.heart_broken_outlined, size: 40, color: Colors.white,),
                  const Icon(Icons.access_time_outlined, size: 40, color: Colors.white,)
                  ],
                ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(11),
                height: 220,
                width: 350,
                margin: EdgeInsets.only(top: 200 , left: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Column(
                  children: [
                    Text(widget.tit, style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),),
                    Spacer(),
                    Text(widget.lead, style: TextStyle(color: Colors.white)),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45),bottomRight: Radius.circular(45))
                      ),
                      margin: EdgeInsets.only(top: 20, left: 190),
                      alignment: Alignment.center,
                      child: Text(widget.id.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),),
                    )
                ]
                ),
              )
            ],
          )
            ),
      ),
      );
  }
}


