

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/customize_widget/stories.dart';
import 'package:instagramclone/models/users_model.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usModel.length,
      itemBuilder: (context, index) => index == 0 ? SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             InstaStories(),
             Divider(
               color: Colors.grey.shade300
             )
           ],
         )

      )
       : Column(
        mainAxisAlignment: MainAxisAlignment.start,
       mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(usModel[index].img),
                      radius: 20,
                    ),
                  ),
                  Text(usModel[index].name, style: TextStyle(
                    //fontFamily: 'IstokWeb',
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ))
                ],)
              ),
              Icon(Icons.more_vert)
            ],),
            Container(
              height: 390,
              width: MediaQuery.of(context).size.width,
              child: Flexible(
                
                fit: FlexFit.loose,
                child: Image(
                 image: AssetImage(usModel[index].img),
                 fit: BoxFit.cover
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
              Container(
               // margin: EdgeInsets.only(left: 1),
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(FontAwesomeIcons.heart,color: Colors.black, size: 24,), onPressed: null),
                    IconButton(icon: Icon(FontAwesomeIcons.comment, size: 24, color: Colors.black), onPressed: null),
                    IconButton(icon: Icon(FontAwesomeIcons.paperPlane, size: 24, color: Colors.black), onPressed: null)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(icon: Icon(FontAwesomeIcons.bookmark, size: 24, color: Colors.black), onPressed: null),
              )
              ]
            ),
            Padding(
              padding: const EdgeInsets.only(top:3.0, left: 8, bottom: 8),
              child: Text(usModel[index].likes, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: Row(
                children: <Widget>[
                  Text( usModel[index].name, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )),
                   SizedBox(
                      width: 7
                    ),
                  Text( usModel[index].caption, style: TextStyle(
                    fontSize: 15
                  )),
                ],
              ),
            ),
           
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Text( "View all 15 comments", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
                  child: Row(children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(usModel[0].img),
                      radius: 18
                    ),
                    SizedBox(
                      width: 7
                    ),
                    Text( "Add a comment...", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  )),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 18.0),
                  child: Text(usModel[index].date, style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),),
                )
        ],
        
    )
    );
  }
}

