import 'package:flutter/material.dart';
import 'package:shwe_kabaw/views/course_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


//Creating Static data in lists
static const List catNames =  [
  "Category",
  "Classes",
  "Free Course",
  "Book Store",
  "Live Course",
  "Leader Board"
];

static const List<Color> catColors =  [
  Color(0XFFFFCF2F),
  Color(0XFF6FE08D),
  Color(0XFF61BDFD),
  Color(0XFFFC7C7F),
  Color(0XFFCB84FB),
  Color(0XFF78E667),
];

static const List<Icon> catIcons = [
  Icon(Icons.category , color: Colors.white , size: 30),
  Icon(Icons.video_library , color: Colors.white , size: 30),
  Icon(Icons.assignment , color: Colors.white , size: 30),
  Icon(Icons.store , color: Colors.white , size: 30),
  Icon(Icons.play_circle_fill , color: Colors.white , size: 30),
  Icon(Icons.emoji_events , color: Colors.white , size: 30),
];

static const imageList = [
  "carOne",
  "carTwo",
  "carThree",
  "carFour",
  "carFive",
];

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
                child: Text("Hi ,Aung Naing Phyo", style: TextStyle(color:Colors.white,fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 1, wordSpacing: 1),),),
                Container(
                  margin: EdgeInsets.only(top: 5 , bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25
                      )
                    )
                  )
                ),
              ],
            ),
          ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child:  Column(
            children: [
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                  childAspectRatio: 1.1
                  ),
                  itemBuilder: (context , index) {
                    return Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color : catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: catIcons[index])
                        ),
                          SizedBox(height: 10),
                          Text(
                            catNames[index],
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                      ]
                    );
                  }
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                      "Courses",
                       style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                       )
                    ),
                     Text(
                      "See All",
                       style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF674AEF)
                       )
                    )
                ]
              ),
              SizedBox(height: 10),
              GridView.builder(
                 itemCount: imageList.length,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25 ) / (4 * 240) ,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                           MaterialPageRoute(
                            builder: (context) => 
                            CourseScreen(imageList[index]),
                            ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset( 'assets/images/${imageList[index]}.png',scale: 0.5,)
                            ),
                          SizedBox(height:3),
                          Text(
                            imageList[index],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6)
                            )
                          ),
                           SizedBox(height:5),
                          Text(
                            "55 Videos",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5)
                            )
                          )
                          ]
                        ),
                      ),
                    );
                  },
                  )
            ]
          )
        )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),

        ])
    );
    
  }
}