import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,
                    size: 30,
                    color: Colors.white,),
                     Icon(Icons.notifications,
                    size: 30,
                    color: Colors.white,)
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text("Hi ,Programmer", style: TextStyle(color:Colors.white,fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 1, wordSpacing: 1),),),
                
              ],
            ),
          ),

        ],
      ),
    );
    
  }
}