
import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatmoder.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget> [
          Divider(
            height: 10,
            indent: 80.0
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].img),

            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                Text(
                  dummyData[i].time,
                  style: TextStyle(
                    color: Colors.grey.shade600, 
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                
                                      child: Text(
                      dummyData[i].message,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15.0
                       )
                    ),
                  ),
                  Visibility(
                    
                      
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BoxShape.circle,
                        
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(dummyData[i].numOfChats, style: TextStyle(
                            color: Colors.white,
                           fontSize: 11
                          ),),
                        ),
                      ),
                   
                    visible: dummyData[i].isRead == false
                  )
                ],
              ),

            ),
          )
        ]
      ),
    );
  }
}