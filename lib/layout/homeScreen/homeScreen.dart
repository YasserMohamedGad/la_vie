
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:la_vie/modules/LeaveScreen/LeaveScreen.dart';
import 'package:la_vie/modules/personScreen/PersonScreen.dart';
import 'package:la_vie/modules/notificationScreen/notificationScreen.dart';
import 'package:la_vie/modules/scanScreen/scanScreen.dart';

class homeScreen extends StatefulWidget {


  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>with TickerProviderStateMixin {
  bool selected=false;
late  TabController tabBarController=TabController(length: 4, vsync: this);
int page=2;
GlobalKey<CurvedNavigationBarState>keybottomNavigation=GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screens = <Widget> [
      const LeaveScreen(),
      const ScanScreen(),
      homeScreen(),
      notificationScreen(),
      const PersonScreen(),



    ];
    var item= <Widget>[
      Image(image: AssetImage('assets/images/leave.png'),),
      Image(image: AssetImage('assets/images/qr-code-scan.png'),),
      Icon(Icons.home_outlined),
      Icon(Icons.notifications_active_outlined),
      Image(image: AssetImage('assets/images/person.png'),),
    ];
    return Scaffold(
      extendBody: true, //to make the back ground color of the carvied navigaton like the body not diffrent

      body:Column(

        children: [


          SizedBox(
            height: 40,
          ),
          Image(image:AssetImage('assets/images/lave_login_logo.png'),),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
               Padding(
                 padding: const EdgeInsetsDirectional.only(start: 10),
                 child: Container(
                   width:329 ,height:46,
                   color: Colors.grey.withOpacity(.2),
                   child: TextFormField(

                     decoration: InputDecoration(
                       hintText: '  Search',
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                       prefix: Icon(Icons.search,size: 17,color: Colors.black,),
                     ),
                     onTap: (){
                     },
                   ),
                 ),
               ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 51,height:46 ,
                child: IconButton(onPressed: (){

                },
                    icon: Icon(Icons.shopping_cart_outlined,color: Colors.white70
                  ,)
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
              )
             ],
            ),
         SizedBox(height: 15,),
      Container(

        child: TabBar(
            isScrollable: true,
         // labelPadding: EdgeInsetsDirectional.only(start:18 ,end:15 ,),
          labelColor:Colors.green ,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedLabelColor: Colors.grey,
          controller: tabBarController,
          indicatorColor: Colors.green ,
          indicatorSize: TabBarIndicatorSize.label,
            splashBorderRadius:BorderRadius.circular(11) ,

            tabs:[
         Container
           ( width: 70,height:35, decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
             color: Colors.grey.withOpacity(.2),
         ),
             child: Tab(child:Text('All') )),
          Container(
              width: 70,height:35, decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
            color: Colors.grey.withOpacity(.2),
          ),
              child:
              Tab(child:Text('Plants') )
          ),
          Container(width: 70,height:35, decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
            color: Colors.grey.withOpacity(.2),
          ),
              child:
              Tab(child:Text(' Seeds ') )
          ),
          Container(
              width: 70,height:35, decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
            color: Colors.grey.withOpacity(.2),
          ),
              child:
              Tab(child:Text(' Tools ') )
          ),

        ]),
      ),
          Container(
            width:double.maxFinite ,height:300 ,
            child: TabBarView(
              controller: tabBarController,
                children: [
              Text('this is a all'),
              Text('this is a Plants'),
              Text('this is a Seeds'),
              Text('this is a Tools'),
            ]
            ),
          ),

       ]
          ),
          bottomNavigationBar: CurvedNavigationBar(
        key: keybottomNavigation, items: item,backgroundColor:Colors.transparent,
            buttonBackgroundColor: Colors.green,
            index:page,
              height:40,
              onTap:(index){
          setState(() {

            this.page=index;
          });


              },

    ),




    );
  }
}
