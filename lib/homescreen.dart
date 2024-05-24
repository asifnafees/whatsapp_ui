import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/Status.dart';
import 'package:whatsapp_ui/constants/calls.dart';
import 'package:whatsapp_ui/constants/chats.dart';
import 'package:whatsapp_ui/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:
    Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
      title: Text('Whatsapp',style: AppbarHeadStyle,),
      actions: [

        Icon(Icons.search_rounded,color: Colors.white,),
        SizedBox(width: 20,),
       PopupMenuButton(child:  Icon(Icons.more_vert_outlined,color: Colors.white,),
         color: Colors.white,
         itemBuilder: (context) => [
           PopupMenuItem(child: Text('New group')),
           PopupMenuItem(child: Text('New broadcast')),
           PopupMenuItem(child: Text('Linked devices')),
           PopupMenuItem(child: Text('Starred messages')),
           PopupMenuItem(child: Text('Setting')),
         ],),
        SizedBox(width: 10,),
      ],
        bottom: TabBar(indicatorColor: Colors.white,
            tabs: [
          Tab(child: Icon(Icons.camera_alt,color: Colors.white,),),
          Tab(child: Text('Chats',style: TabbarStyle,),),
          Tab(child: Text('Status',style: TabbarStyle,),),
          Tab(child: Text('Calls',style: TabbarStyle,),),

        ]),
      ),
      body: TabBarView(children: [
        Icon(Icons.camera_alt,size: 100,color: Colors.black12,),
        Chats(),
        Status(),
        Calls()
      ]),
    ));
  }
}
