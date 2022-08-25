import 'package:flutter/material.dart';

class notificationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            SizedBox(height:34 ,),
            Image(image:AssetImage('assets/images/Notification.png')),
            SizedBox(height:34 ,),
            Column(
              children: [
                Row(
                  children: [
                    Image(image:AssetImage('assets/images/joy_avatar.png')),
                    SizedBox(width: 10,),
                    Image(image:AssetImage('assets/images/Joy_notification.png')),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43.0),
                  child: Align(alignment: AlignmentDirectional.centerStart,
                      child: Image(image:AssetImage('assets/images/Text.png'))),
                ),
                SizedBox(height:10 ,),
                Image(image:AssetImage('assets/images/Line 5.png')),

              ],
            ),
           Column(
             children: [

               SizedBox(height: 10,),
               Row(
                 children: [
                   Image(image:AssetImage('assets/images/dennis.png')),
                   SizedBox(height: 60,width: 305,
                       child: Padding(
                         padding: const EdgeInsets.only(left:7.0),
                         child: Image(image:AssetImage('assets/images/dennis_talk.png')),
                       )),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left:35.0),
                 child: Row(
                   children: [
                     Image(image:AssetImage('assets/images/Rectangle 128.png')),
                     Image(image:AssetImage('assets/images/Dennis_notification.png')),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(right: 200),

                 child: SizedBox(height: 15,
                     child: Image(image:AssetImage('assets/images/Text2.png'))),
               ),
               SizedBox(height: 16),
               Image(image:AssetImage('assets/images/Line 5.png')),

             ],
           ),
            SizedBox(height: 16),

            Column(
              children: [
                Row(
                  children: [
                    Image(image:AssetImage('assets/images/john.png')),
                    SizedBox(width: 10,),
                    Image(image:AssetImage('assets/images/John_notification.png')),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43.0,top: 7,),
                  child: Align(alignment: AlignmentDirectional.centerStart,
                      child: Image(image:AssetImage('assets/images/Text3.png'))),
                ),
                SizedBox(height:10 ,),
                Image(image:AssetImage('assets/images/Line 5.png')),

              ],
            ),
            SizedBox(
              height:10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image(image:AssetImage('assets/images/joy_avatar.png')),
                    SizedBox(width: 10,),
                    Image(image:AssetImage('assets/images/Joy_notification.png')),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43.0),
                  child: Align(alignment: AlignmentDirectional.centerStart,
                      child: Image(image:AssetImage('assets/images/Text.png'))),
                ),
                SizedBox(height:10 ,),
                Image(image:AssetImage('assets/images/Line 5.png')),

              ],
            ),
            Column(
              children: [

                SizedBox(height: 10,),
                Row(
                  children: [
                    Image(image:AssetImage('assets/images/dennis.png')),
                    SizedBox(height: 60,width: 305,
                        child: Padding(
                          padding: const EdgeInsets.only(left:7.0),
                          child: Image(image:AssetImage('assets/images/dennis_talk.png')),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:35.0),
                  child: Row(
                    children: [
                      Image(image:AssetImage('assets/images/Rectangle 128.png')),
                      Image(image:AssetImage('assets/images/Dennis_notification.png')),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 200),

                  child: SizedBox(height: 15,
                      child: Image(image:AssetImage('assets/images/Text2.png'))),
                ),
                SizedBox(height: 16),
                Image(image:AssetImage('assets/images/Line 5.png')),

              ],
            ),
            SizedBox(
              height:16,
            ),

            Column(
              children: [
                Row(
                  children: [
                    Image(image:AssetImage('assets/images/john.png')),
                    SizedBox(width: 10,),
                    Image(image:AssetImage('assets/images/John_notification.png')),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43.0,top:7,),
                  child: Align(alignment: AlignmentDirectional.centerStart,
                      child: Image(image:AssetImage('assets/images/Text3.png'))),
                ),
                SizedBox(height:10 ,),
                Image(image:AssetImage('assets/images/Line 5.png')),

              ],
            ),
















          ],
        ) ,






      ),
    );
  }
}
