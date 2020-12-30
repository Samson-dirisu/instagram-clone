import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/status.dart';

import 'call.dart';
import 'camera.dart';
import 'chat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> 
with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            
            Tab(child: Text('CHATS', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 14
            )),),
            Tab(child: Text('STATUS', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 14
            ))),
            Tab(child: Text('CALLS', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 14
            ))),
          ],
        ),
        actions: <Widget>[Icon(Icons.search),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0) ,),
        Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children:<Widget> [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ] 
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.message, color: Colors.white,),

          onPressed: () => debugPrint('pressed'),
         

        )

      );
      
      
    
  }
}