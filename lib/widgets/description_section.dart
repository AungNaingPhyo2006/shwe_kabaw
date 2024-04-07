import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return Padding(
      padding : EdgeInsets.only(top:20),
      child: Column(
        children: [
          Text("Hello qwerrtty " , 
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign : TextAlign.justify
          ),
          SizedBox(height:20),
          Row(
            children: [
              Text("Course Length :", style : TextStyle(fontSize:18, fontWeight : FontWeight.w500)),
              SizedBox(height:5),
              Icon(Icons.timer , color : Color(0xFF674AEF)),
              SizedBox(height:5),
              Text("26 hours", style : TextStyle(fontSize:16, fontWeight : FontWeight.w500))
            ]
          ),
            Row(
            children: [
                Text("Rating : ", style : TextStyle(fontSize:18, fontWeight : FontWeight.w500)),
              SizedBox(height:5),
              Icon(Icons.star , color : Colors.amber),
              SizedBox(height:5),
              Text("4.5", style : TextStyle(fontSize:16, fontWeight : FontWeight.w500))
            ]
          )
        ]
      )
    );
  }
}