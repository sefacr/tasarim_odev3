import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State <MainScreen> createState() =>  _MainScreenState();
}

class  _MainScreenState extends State <MainScreen> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Design Book"),
        leading:
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab( 
              text: "New Design",
            ),
            Tab(
              text: "Favorite",
            ),
            Tab(
              text: "My Design",
            ),  
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("selam"),
          Row(
            children: [
              Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text("Whatsapp", style: TextStyle(fontSize: 36, color: Colors.red, fontWeight: FontWeight.bold),),
          ),
              Text("2342data")
            ],
          ),
          
          Text("329I3209ED"),
          Text("^'+%+^+'&%+^"),

        ],
      ),
    );
  }
}