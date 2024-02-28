import "package:flutter/material.dart";
import "package:shwe_kabaw/views/playGround/info_page.dart";
import "package:shwe_kabaw/views/playGround/noti_page.dart";
import "package:shwe_kabaw/views/playGround/page_one.dart";
import "package:shwe_kabaw/views/playGround/search_page.dart";



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

 final int _current = 0;

  final List<Widget>_children = [
    const PageOne(),
    const SearchPage(),
    const InfoPage(),
    const  NotiPage()
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: () {
            // ignore: avoid_print
            print("Hello");
          },
          icon: const Icon(Icons.dehaze ,  color: Colors.white,),
         ),
        title: const Text("ANP  UI",
        style: TextStyle(
        color: Colors.white
        )
      ),
        actions: [
          IconButton(
            onPressed: (){
            // ignore: avoid_print
            print(" I am Noti");
          }, icon: const Icon(Icons.notifications , color: Colors.white,)
          ),
          IconButton(
            onPressed: (){
            // ignore: avoid_print
            print("I am Share");
          }, icon: const Icon(Icons.share , color: Colors.white,)
          ),
          IconButton(
            onPressed: (){
            // ignore: avoid_print
            print("I am Search");
          }, icon: const Icon(Icons.search , color: Colors.white,)
          )
        ],
      ),
     
      // body: const PageOne()   
      body: _children[_current]
    );
  }
}

// https://www.youtube.com/watch?v=IAkW-SdbLZQ&t=590s
// 26:23