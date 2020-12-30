import 'package:flutter/material.dart';
import 'package:instagramclone/models/users_model.dart';

class InstaStories extends StatefulWidget {
  @override
  _InstaStoriesState createState() => _InstaStoriesState();
}


class _InstaStoriesState extends State<InstaStories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: usModel.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Stack(
            alignment: Alignment.center,
            
            children: <Widget>[
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow.shade400,
                      Colors.pink.shade400,
                      Colors.purple.shade400
                    ])
                ),
              ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(usModel[index].img),
                    fit: BoxFit.cover
                     ),
                    border: Border.all(
                      color: Colors.white,
                      width: 2
                    )
                ),
                margin:const EdgeInsets.symmetric(horizontal: 1) ,
              ),
              index == 0 ? Positioned(
                right: 3,
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0
                    )
                  ),
                  child: Text("+", style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),),
                )) : Container()
            ],
      ),

      Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
          child: Text(usModel[index].name, style: TextStyle(
           // fontFamily: "IstokWeb",
            fontSize: 13,
            color: Colors.black
          ),),
      ),
                    ]
          ),
        )
      ),
    );
  }

}