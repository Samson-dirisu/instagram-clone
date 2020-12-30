import 'package:flutter/material.dart';
import 'package:whatsappclone/models/statusmodel.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  bool myStatus;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext contex, int index) =>
            Column(children: <Widget>[
              Container(
                child: ListTile(
                  leading: Container(
                    
                    decoration: BoxDecoration(
                      
                      border: stModel[index].viewedStatus ? 
                      Border.all(color: Colors.grey, width: 2) :
                      Border.all(color: Colors.blue, width: 2),
                      shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(stModel[index].img),
                        radius: 24,
                        
                      ),
                    ),
                  ),
                  title: Text(stModel[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text(
                    stModel[index].date,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
               trailing: Container(
                 child: Visibility(
                   child: Icon(
        Icons.more_horiz,
        color: Theme.of(context).primaryColor,
      ),
      visible: stModel[index].personalUser,)
               ),
                ),
                
              ),
            ]),
        separatorBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return bar();
          } else {
            return Divider(
              color: Colors.grey[340],
              indent: 80,
              height: 10,
            );
          }
        },
        itemCount: stModel.length);
  }

  // Widget mine() {
  //   return ListTile(
  //     leading: CircleAvatar(
  //       backgroundImage: AssetImage(privateModel[0].img),
  //       radius: 30,
  //       foregroundColor: Theme.of(context).primaryColor,
  //     ),
  //     title: Text(
  //       privateModel[0].name,
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //     subtitle: Padding(
  //       padding: const EdgeInsets.only(top: 3.0),
  //       child: Text(
  //         privateModel[0].date,
  //         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
  //       ),
  //     ),
  //     trailing: Icon(
  //       Icons.more_horiz,
  //       color: Theme.of(context).primaryColor,
  //     ),
  //   );
  // }

  Widget bar() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 40.0,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            "Recent updates",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
