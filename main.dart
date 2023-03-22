import 'package:first1/Fragment/AlarmFragment.dart';
import 'package:first1/Fragment/BalanceFragment.dart';
import 'package:first1/Fragment/ContactFragment.dart';
import 'package:first1/Fragment/EmailFragment.dart';
import 'package:first1/Fragment/HomeFragment.dart';
import 'package:first1/Fragment/PersonFragment.dart';
import 'package:first1/Fragment/SearchFragment.dart';
import 'package:first1/Fragment/SettingsFragment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }





var MyItems=[
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"a"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"b"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"c"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"d"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"e"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"f"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"g"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"h"},
  {"img":"https://media.istockphoto.com/id/1387945043/photo/computer-technology-background-digital-data-flow-network-connection-structure-big-data.jpg?b=1&s=170667a&w=0&k=20&c=Sd255zPE6kBUU_EE3omdvL5GNWQdfSeOBmHBdEObCJc=","title":"i"},

];



  @override
  Widget build(BuildContext context) {
    


    
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("tab bar"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.search),text: "Search",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
                Tab(icon: Icon(Icons.email),text: "Email",),
                Tab(icon: Icon(Icons.contact_mail),text: "Contact",),
                Tab(icon: Icon(Icons.person),text: "Person",),
                Tab(icon: Icon(Icons.access_alarm),text: "Alarm",),
                Tab(icon: Icon(Icons.account_balance),text: "Blance",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingsFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),


            ],
          ),

        )
    );
  }

}