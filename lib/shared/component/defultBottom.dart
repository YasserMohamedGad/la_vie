import 'package:flutter/material.dart';

Widget defultBotton({ double width=double.infinity,Color background=Colors.green,
  required Function function,
  required String text,
}) =>MaterialButton(onPressed: (){
  function();
},
  child:Container(
    width: width,
    color: background,
    height:40,padding: EdgeInsets.only(top: 5,bottom: 5,),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(color: Colors.white,fontSize:17,fontWeight: FontWeight.bold ),
      textAlign: TextAlign.center,
    ),
  ),
);