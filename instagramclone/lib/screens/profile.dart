import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/customize_widget/favourite_pictures.dart';
import 'package:instagramclone/customize_widget/grid_pictures.dart';
import 'package:instagramclone/customize_widget/single_pictures.dart';
import 'package:instagramclone/models/users_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;



  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0);
  
  }

  /*
  *App Bar
  */
  final appbar = SliverAppBar(
    floating: true,
    title: Text(
      usModel[0].name + " ˇ",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'IstokWeb',
          color: Colors.black),
    ),
    backgroundColor: Colors.white,
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.av_timer,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: null)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          appbar,
          SliverList(
            delegate: SliverChildListDelegate([
              Divider(color: Colors.grey.shade300),
              Container(
                alignment: Alignment.topCenter,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _profilePicture(),
                      _profileCounts(),
                    ]),
              ),
              _profileInfomation(),
              _tabBar(),
              Expanded(child: SliverFillRemaining(child: _tabBarView()))
            ]),
          ),
        ],
      ),
    );
  }

  Widget _profilePicture() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5, 10.0, 20.0),
      child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
        Container(
          height: 87.0,
          width: 87.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(usModel[0].img), fit: BoxFit.cover)),
        ),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          height: 25.0,
          width: 25.0,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle),
          child: Icon(
            Icons.add,
            size: 17.0,
            color: Colors.white,
          ),
        ))
      ]),
    );
  }

/*
* Profile counts that includes
*number of posts,
* Followers Count,
* Following Count.
*/
  Widget _profileCounts() {
    return Container(
      width: 240.0,
      child: Column(
        children: <Widget>[
          Container(
            width: 237,
            margin: EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
            padding: EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '1,884',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text('150M',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text('0',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),

          //Posts, F0llowers, Following
          Container(
            width: 227.0,
            padding: EdgeInsets.only(right: 10.0, left: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Posts",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'IstokWeb')),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Followers",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'IstokWeb')),
                ),
                Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 16, fontFamily: 'IstokWeb'),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 9.0, top: 8.0),
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.only(bottom: 0),
                width: 224.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Text("Edit Profile",
                    style: TextStyle(
                        fontFamily: 'IstokWeb', fontWeight: FontWeight.bold))),
          ),
        ],
      ),
    );
  }

  Widget _profileInfomation() {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(left: 14.0, bottom: 8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text(
                "Samson Dirisu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IstokWeb',
                    fontSize: 15.5),
              ),
            ),
            Text(
              "Fun Personified",
              style: TextStyle(fontFamily: 'IstokWeb', fontSize: 15.5),
            ),
            Text(
              "T e c h enthusiast",
              style: TextStyle(fontFamily: 'IstokWeb', fontSize: 15.5),
            ),
            Text(
              "Software D e v e l o p e r",
              style: TextStyle(fontFamily: 'IstokWeb', fontSize: 15.5),
            ),
            Text(
              "1 me",
              style: TextStyle(
                fontFamily: 'IstokWeb',
                fontSize: 15.5,
              ),
            )
          ]),
    );
  }

  //ict mentorship forex trade

  Widget _tabBar() {
    return TabBar(
        controller: _tabController,
         unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.blue,
        labelColor: Colors.grey,
        tabs: [
          Icon(
            FontAwesomeIcons.th,
            size: 25.0, color: _tabController.index == 0 ? Colors.blue : Colors.grey
          ),
          Icon(
            Icons.account_balance_wallet,
            color: _tabController.index == 1 ? Colors.blue : Colors.grey,
            size: 28.0,
          ),
          Icon(
            MdiIcons.contactsOutline,
            size: 28.0, color: _tabController.index == 2 ? Colors.blue : Colors.grey
          )
        ]);
  }

  Widget _tabBarView() {
    return TabBarView(controller: _tabController, children: <Widget>[
      GridPictures(),
      SinglePictures(),
      FavouritePictures()
    ]);
  }
}
