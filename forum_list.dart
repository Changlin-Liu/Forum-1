import 'package:flutter/material.dart';
import 'package:reach/global.dart';

class ForumListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForumListState();
  }
}


class ForumListState extends State {

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    var canCreate = false;

    for (var i=1; i<=5; i++){

      widgetList.add(
        SizedBox(
          height: 120.0,
          child: buildCard(),
        )
      );
    }

    return Scaffold(
      floatingActionButton: (canCreate)?
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>Navigator.pushNamed(context, '/notificationCreate'),
      ) : null,
       appBar: AppBar(title: Text('Forums'),),
      body: ListView(
        children: widgetList,
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}

Widget buildCard(){
  return Card(
    color: Colors.white,
    //阴影大小-默认2.0
    elevation: 5.0,
    child: Container (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget>[


          Row(
            children:<Widget>[
              Container(
                padding:EdgeInsets.only(left:10.0, top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Title',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ]
          ),


          Row(
              children:<Widget>[
                Container(
                    padding:EdgeInsets.only(left:10.0, top: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Username''.''Time: ''04/11/2018 18:47',
                            textAlign: TextAlign.start,
                            style:TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                          )
                        ]
                    )
                )
              ]
          ),

          Row(
              children:<Widget>[
                Container(
                    padding:EdgeInsets.only(left:10.0, top: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('subtitle',
                            textAlign: TextAlign.start,
                            style:TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                        ]
                    )
                )
              ]
          ),
          Row(
              children:<Widget>[
                Container(
                    padding:EdgeInsets.only(left:320.0, top: 10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.more_horiz, size: 22.0, color: Colors.black54),
                        ]
                    )
                )
              ]
          ),
        ]

    ),
    ),
  );
}