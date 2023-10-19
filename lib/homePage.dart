import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
        centerTitle: true,
        titleSpacing: 20,
        actions: [
          SizedBox(width: 50,),
          PopupMenuButton(
            itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Home"),value: "home",),
              PopupMenuItem(child: Text("History"),value: "history",),
              PopupMenuItem(child: Text("New Tab"),value: "new tab",),
              PopupMenuItem(child: Text("Downloads"),value: "downloads",),
              PopupMenuItem(child: Text("Exit"),value: "exit",),
            ];
          },
          offset: Offset(200, 80),
          onSelected: (value) {
            print("You Selected $value");
          },
      )],
      ),
      body: SafeArea(child: Center()),
    );
  }
}