import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller = PageController();
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:Color(0xff3583cc),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: Height/1.7,
            child: PageView(
              controller: Controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          // dot indicators
          SmoothPageIndicator(
            controller: Controller,
            count: 3,
            effect: ScrollingDotsEffect(
              //activeDotColor: const Color(0xff1d2a40),
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 15,
              dotWidth: 14,
              spacing: 16,
              //verticalOffset: 50,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Padding(
              padding: EdgeInsets.only(right:Width/5),
              child: TextButton(onPressed: (){},
                  child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
            ),
             Padding(
              padding: EdgeInsets.only(left: Width/5),
              child: TextButton(onPressed: (){}, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
              ),
            )
          ],)

        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Image(image: AssetImage('assets/images/page1.png')),
          Text('Tracking' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
          SizedBox(height: Height/40,),
          Padding(
            padding:  EdgeInsets.only(left: Width/20),
            child: Text('App is based  on  tracking the location details of the employee login & logout time', style:TextStyle(color: const Color(0xfff5faf7), fontSize: Height/30, fontWeight:  FontWeight.normal) ),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        children:  [
          Padding(
            padding: EdgeInsets.symmetric(vertical:Width/10),
            child: const Image(image: AssetImage('assets/images/page2.png')),
          ),
          Text('Monitoring' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),)
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        children:  [
          Padding(
            padding: EdgeInsets.symmetric(vertical:Width/10),
            child: const Image(image: AssetImage('assets/images/page3.png')),
          ),
          Text('Visualizing' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),)
        ],
      ),
    );
  }
}


