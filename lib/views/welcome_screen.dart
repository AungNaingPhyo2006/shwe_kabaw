import 'package:flutter/material.dart';
import 'package:shwe_kabaw/views/home_screen.dart';
import 'dart:async'; 

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // <==========>
     // Use a GlobalKey to access the Navigator state
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    // Function to navigate to HomeScreen after 5 seconds
    void navigateToHomeScreen() {
      Timer(Duration(seconds: 5), () {
        navigatorKey.currentState?.pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      });
    }

    // Call navigateToHomeScreen when the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigateToHomeScreen();
    });

    //<==========>
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Color(0xff674AEF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/car.png",
                  scale: 0.5,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: const BoxDecoration(
                  color: Color(0xff674AEF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Learning is Everything.",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Learning with pleasure with ANP, wherever you are.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.6)),),
                    ),
                    SizedBox(height: 60,),
                    Material(
                      color: Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: 
                            (context) => HomeScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                          child: Text("Get Start", style: TextStyle(
                            color :Colors.white, 
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//https://www.youtube.com/watch?v=ucwBcTgxyME  31:51