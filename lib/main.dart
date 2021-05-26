import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:NewsFeed(),
  ));
}
class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home),
                  onPressed: (){
                print("home icon");

                  }),
              IconButton(icon: Icon(Icons.person_add_alt),
                  onPressed: (){
                print("friend request icon");
                  }),
              IconButton(
                icon: Icon(Icons.video_call),
                onPressed: (){
                  print("video section icon");
                }),
              IconButton(icon: Icon(Icons.verified_user),
                  onPressed: (){
                print("user icon");
                  })
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/4g.jpg'),
                    ),
                    title: Text("user 1"),
                    subtitle: Text("may 25 2021"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text("DeadLines help you keep moving forward and deliver content faster"),
                  Expanded(
                      child: Image.asset(
                          'images/dl.png'
     ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Row(
                    children:[
                      IconButton(icon: Icon(Icons.thumb_up_alt), onPressed: (){}),
                      Text("Like")
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.read_more), onPressed: (){}),
                      Text("Read more")
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.share), onPressed:(){}),
                      Text("share")
                    ],
                  ),
                  ],
                  ),
                ],

              ),
            ),
          )
        ],
      )
    );
  }
}


