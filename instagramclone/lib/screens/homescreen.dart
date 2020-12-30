import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/customize_widget/insta_body.dart';
import 'package:instagramclone/screens/profile.dart';


class HomeScreen extends StatefulWidget {

  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  final topBar = new AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Icon(Icons.camera_alt, color: Colors.black,),
      ),
      title: Text("Instagram", style: TextStyle(
        fontFamily: "Lobster_Two",
        fontWeight: FontWeight.w300,
        fontSize: 22,
        color: Colors.black
      )),
      backgroundColor: Colors.white,
      actions: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
          Icon(FontAwesomeIcons.desktop, size: 22.0),
          Positioned(
            right: 0,
            top:14,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: Colors.red
            ))
          ]),
        SizedBox(width: 20),
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
                   Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(FontAwesomeIcons.paperPlane, size: 26,),
          ),
          Positioned(
          
            right: 5,
            top: 5,
            child: Container(
              height: 15,
              width: 15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),
              child: Text('20', style: TextStyle(
                color: Colors.white,
                fontSize: 9
                //fontWeight: FontWeight.bold
              ))
            ))
          ]
        )
      ],
      elevation: 1
    );
    
int _currentIndex = 0;
final tabs = [
  InstaBody(),
  Center(child: Text('Search'),),
  Center(child: Text('Upload Photos')),
  Center(child: Text('favourite')),
  ProfileScreen(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: _currentIndex == 0 ? topBar : null,
    body: tabs[_currentIndex],
    bottomNavigationBar: instaButtomBar()
    
        );
      }


      /* 
      *Bottom navigation Bar
      */
    Widget  instaButtomBar() {
       
      return  BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,),
        title: Text('', style: TextStyle(
          fontSize: 0.0
        ))
         ),
        BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,),
        title: Text('', style: TextStyle(
          fontSize: 0.0)
        )
        ),
        BottomNavigationBarItem(icon:Container(
          alignment: Alignment.center,
          height: 30,
          width: 30.0,
          decoration: BoxDecoration(
            border: Border.all(color: _currentIndex == 2 ? Colors.black : Colors.black, width: 2),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Icon(Icons.add, size: 20, color: Colors.black,),

        ),
        title: Text('', style: TextStyle(
          fontSize: 0.0
        ),)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.black, ), 
        title:  Text('', style: TextStyle(
          fontSize: 0.0)
        )),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user, color: Colors.black,),
        title: Text('', style: TextStyle(
          fontSize: 0.0)
        )
         ),

         
      ],
      onTap: (index){
           setState((){
             _currentIndex = index;
           });
         }
      
      );
    }
    
  
}

