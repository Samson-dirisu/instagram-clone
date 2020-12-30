import 'package:flutter/material.dart';
import 'package:whatsappclone/models/callsModel.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => Column(
        children: <Widget>[
          ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(callsModel[index].img),
                radius: 25,
              ),
              title: Text(callsModel[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: <Widget>[
                  Visibility(
                    child: callsModel[index].missedCall == true
                        ? Icon(Icons.call_received, color: Colors.red, size: 18)
                        : Icon(Icons.call_received,
                            color: Colors.green, size: 18),
                    replacement: Icon(
                      Icons.call_made,
                      color: Colors.green,
                      size: 18,
                    ),
                    visible: callsModel[index].madeCall == true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      callsModel[index].date,
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
              trailing: Visibility(
                child: callsModel[index].voiceCall == true
                    ? Icon(
                        Icons.call,
                        color: Theme.of(context).primaryColor,
                      )
                    : Icon(Icons.videocam,
                        color: Theme.of(context).primaryColor),
              )),
              
        ],
      ),
      itemCount: callsModel.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.grey[340],
        indent: 80,
      ),
       
    );
   
  }
}
