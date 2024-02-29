import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _PageOne();
// }

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container( 
      color:Colors.grey[200],
      child:  ListView(
        children:  [ 
          const SizedBox( 
            width: double.infinity,
            // child:  Image(image : AssetImage("assets/images/CityAndRoad.png", ) , fit: BoxFit.contain,),
            child:  Stack( 
               alignment: Alignment.center,
              children: [ 
                Image(image : AssetImage("assets/images/CityAndRoad.png", ) , width: double.infinity, fit: BoxFit.cover,),
                // Text("Aung Naing Phyo" , style:TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                Text("Aung Naing Phyo",
                    style: TextStyle(
                      inherit: true,
                      fontSize: 24,
                      color: Colors.blue,
                      shadows: [
                        Shadow( // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.yellow
                        ),
                        Shadow( // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.yellow
                        ),
                        Shadow( // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.yellow
                        ),
                        Shadow( // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.yellow
                        ),
                      ]
                    ),
                )

              ],
            )
          ),
            Container( 
            color: Colors.amber[100],
            padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const  Text('Person', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox( 
                    height: 100, //အပေါ်မှာလည်း listView ရှိလို့ height ပါရမည်။
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [ 
                         Image(image: AssetImage("assets/icons/icon1.png"), width: 90, height:90),
                         Image(image: AssetImage("assets/icons/icon2.png"),width: 90, height:90),
                         Image(image: AssetImage("assets/icons/icon3.png"),width: 90, height:90),
                         Image(image: AssetImage("assets/icons/icon4.png"),width: 90, height:90),
                         Image(image: AssetImage("assets/icons/icon5.png"),width: 90, height:90),
                      ],
                    )
                  )
              ],
            )
        
          ),
           Container( 
            padding: const EdgeInsets.all(15),
            child : Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
               const Text("Products" , style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox( 
                  height: 200,
                  child: ListView( 
                    scrollDirection: Axis.horizontal,
                    children: [ 
                      Card( 
                        child: Container( 
                          // width:150,
                          // height:100,
                          // color: Colors.blue,
                          padding :const EdgeInsets.all(15),
                          child: const Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Image(image: AssetImage("assets/images/Bitmap.png" , ),fit: BoxFit.fill, ),
                              Padding(padding: EdgeInsets.only(top: 15), 
                               child: Text( 
                                "Marcede Binz",
                                style: TextStyle( 
                                  fontSize: 16,
                                ),
                               ),
                              ), 
                                Padding(padding: EdgeInsets.only(top: 5), 
                               child: Text( 
                                "\$150000",
                                style: TextStyle( 
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                               ),
                              ),
                              ]
                          ),
                        ),
                      ),
                      Card( 
                        child: Container( 
                          // width:150,
                          // height:100,
                          // color: Colors.blue,
                          padding :const EdgeInsets.all(15),
                          child: const Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Image(image: AssetImage("assets/images/Normal.png" , ),fit: BoxFit.fill, ),
                              Padding(padding: EdgeInsets.only(top: 15), 
                               child: Text( 
                                "Mark II",
                                style: TextStyle( 
                                  fontSize: 16,
                                ),
                               ),
                              ), 
                                Padding(padding: EdgeInsets.only(top: 5), 
                               child: Text( 
                                "\$120000",
                                style: TextStyle( 
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                               ),
                              ),
                              ]
                          ),
                        ),
                      ),
                      Card( 
                        child: Container( 
                          // width:150,
                          // height:100,
                          // color: Colors.blue,
                          padding :const EdgeInsets.all(15),
                          child: const Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Image(image: AssetImage("assets/images/Family.png" , ),fit: BoxFit.fill, ),
                              Padding(padding: EdgeInsets.only(top: 15), 
                               child: Text( 
                                "Range Rover",
                                style: TextStyle( 
                                  fontSize: 16,
                                ),
                               ),
                              ), 
                                Padding(padding: EdgeInsets.only(top: 5), 
                               child: Text( 
                                "\$110000",
                                style: TextStyle( 
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                               ),
                              ),
                              ]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
           )
        ],
      ),
    );
  }
}