
import 'package:flutter/material.dart';
import 'package:la_vie/shared/component/defultBottom.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();

}
class _loginScreenState extends State<loginScreen> {
  bool isloginScreen=true;
  var emailControler= TextEditingController();
  var passwordControler= TextEditingController();
  var signupLastNameControler=TextEditingController();
  var signupFristNameControler=TextEditingController();
  var signupPasswordControler=TextEditingController();
  var signupPasswordConfirmControler=TextEditingController();
  var singnuoEmailControler=TextEditingController();
  bool isShow=true;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
   body: SingleChildScrollView(
     child: Column(
       children: [
         Align(alignment: AlignmentDirectional.topEnd,
           child: Image(alignment: AlignmentDirectional.topCenter,
               image: AssetImage('assets/images/image 68_up.png')),
         ),
        SizedBox(height:10 ),
         Image(
             image: AssetImage('assets/images/lave_login_logo.png')),
      SizedBox(
        height:20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         GestureDetector(
           onTap: (){
             setState(() {
               isloginScreen=true;
             });
           },
           child: Column(
             children: [
               Text('SignUp',style: TextStyle(fontSize:20,color:isloginScreen?Colors.green:Colors.grey),),
               if(isloginScreen)
               Container(
                 height:2,width:55,color: Colors.green,
               ),

             ],
           ),
         ),
          GestureDetector(
            onTap: (){
              setState(() {
                isloginScreen=false;
              });
            },
            child: Column(
              children: [
                Text('Login',style: TextStyle(fontSize: 20,
                    color:isloginScreen?Colors.grey:Colors.greenAccent,),
                ),
                if(!isloginScreen)
                Container(
                  height:2,width:50,color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
         //this if for togle between login and signUP
         if(!isloginScreen)
           //this contanar is login section
         Container(
           padding: EdgeInsetsDirectional.only(top:55),
           child: Column(
             //login section
             children: [
               TextFormField(
                 controller:emailControler,
                 decoration: InputDecoration(
                   labelText: 'Email',
                   prefixIcon: Icon(Icons.email) ,
                   border: OutlineInputBorder(),
                 ),
                 keyboardType: TextInputType.emailAddress,
                   onFieldSubmitted:(value){
                     print(value);
                   },
                 onChanged: (value){
                   print(value);
                 },
                 validator: (value){
                   if(value!.isEmpty){
                     return 'emalil adress must be not empty';
                   }
                   return null;
                 },
               ),
               SizedBox(
                 height: 40,
               ),
               TextFormField(
                 controller: passwordControler,
                 decoration: InputDecoration(
                   labelText: 'Password',
                   prefixIcon: Icon(Icons.lock) ,
                   suffixIcon:  IconButton(onPressed:(){
                     setState(() {
                       isShow=!isShow ;
                     });
                   },
                     icon:isShow? Icon(Icons.visibility):Icon(Icons.visibility_off),
                   ),
                   border: OutlineInputBorder(),
                 ),
                 keyboardType:TextInputType.visiblePassword ,
                 obscureText: isShow,
                 onFieldSubmitted:(value){
                   print(value);
                 },
                 onChanged: (value){
                   print(value);
                 },
                 validator: (value){
                   if(value!.isEmpty){
                     return 'Password must be not empty';
                   }
                   return null;
                 },
               ),
               SizedBox(
                 height: 20,
               ),
               defultBotton(
                 text:'Login',
                   function:(){
                   }
               ),
               SizedBox(
                 height: 20,
               ),
               Row(
                 children: [
                   Container(
                     color:Colors.grey,
                     height:2,
                     width:150,
                   ),
                   Text('Or continue with'),
                   Container(
                     color: Colors.grey,
                     height:2,
                     width:145,
                   ),
                 ],
               ),
               SizedBox(
              height:20 ,
               ),
               Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Container(


                     child: MaterialButton(
                       onPressed: () {
                       },

                       child: Image(
                         image:AssetImage('assets/images/Google.png'),
                       ),
                     ),
                   ),
                   Container(
                     child:
                     MaterialButton(
                       onPressed: () {

                       },
                       child: Image(
                         image:AssetImage('assets/images/Facebook.png'),
                       ),
                     ),

                   ),
                 ],

               ),
               Container(
                 alignment: AlignmentDirectional.bottomStart,
                 child: Image(image:AssetImage(
                     'assets/images/signup_down.png'
                 ),),
               ),
             ],
           ),
         ),
         //this if for togle betwwen login and signUP
         if(isloginScreen)
         //signup section
           Container(

             padding: EdgeInsetsDirectional.only(top:50 ),
             child: Column(
               children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width:160,height:46,
                    child: TextFormField(
                      decoration:InputDecoration(labelText:'First name',border: OutlineInputBorder()),
                      keyboardType: TextInputType.text,
                      onFieldSubmitted:(value){
                        print(value);
                      },
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'emalil adress must be not empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width:160,height:46,
                    child: TextFormField(
                      decoration:InputDecoration(labelText:'Last name',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.text,
                      onFieldSubmitted:(value){
                        print(value);
                      },
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'emalil adress must be not empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  ],
              ),
                 SizedBox(
                   height:15,
                 ),
                 TextFormField(
                   controller:singnuoEmailControler,
                   decoration: InputDecoration(
                     labelText: 'Email',
                     prefixIcon: Icon(Icons.email),
                     border:OutlineInputBorder(),
                   ),
                   keyboardType: TextInputType.emailAddress,
                   onFieldSubmitted:(value){
                     print(value);
                   },
                   onChanged: (value){
                     print(value);
                   },
                   validator: (value){
                     if(value!.isEmpty){
                       return 'emalil adress must be not empty';
                     }
                     return null;
                   },
                 ),

                 SizedBox(
                   height:15,
                 ),
                 TextFormField(
                   controller: signupPasswordControler,
                   decoration: InputDecoration(
                     labelText: 'Password',
                     prefixIcon: Icon(Icons.lock) ,
                     suffixIcon:  IconButton(onPressed:(){
                       setState(() {
                         isShow=!isShow ;
                       });
                     },
                       //this togle between the icons of password
                       icon:isShow? Icon(Icons.visibility):Icon(Icons.visibility_off),
                     ),
                     border: OutlineInputBorder(),
                   ),
                   keyboardType:TextInputType.visiblePassword ,
                   obscureText: isShow,
                   onFieldSubmitted:(value){
                     print(value);
                   },
                   onChanged: (value){
                     print(value);
                   },
                   validator: (value){
                     if(value!.isEmpty){
                       return 'Password must be not empty';
                     }
                     return null;
                   },
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 TextFormField(
                   controller: signupPasswordConfirmControler,
                   decoration: InputDecoration(
                     labelText: 'Confirm Password',
                     prefixIcon: Icon(Icons.lock) ,
                     suffixIcon:  IconButton(onPressed:(){
                       setState(() {
                         isShow=!isShow ;
                       });
                     },
                       //this togle between the icons of password
                       icon:isShow? Icon(Icons.visibility):Icon(Icons.visibility_off),
                     ),
                     border: OutlineInputBorder(),
                   ),
                   keyboardType:TextInputType.visiblePassword ,
                   obscureText: isShow,
                   onFieldSubmitted:(value){
                     print(value);
                   },
                   onChanged:(value){
                     print(value);
                   },
                   validator: (value){
                     if(signupPasswordConfirmControler==signupPasswordControler){
                       return 'Password Wrong in confirm password';
                     }
                     return null;
                   },
                 ),
                 SizedBox(
                   height: 15 ,
                 ),
                 defultBotton(
                   text: "Sign Up",
                   function: (){
                   },
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 Row(
                   children: [
                     Container(
                       color:Colors.grey,
                       height:2,
                       width:150,
                     ),
                     Text('Or continue with'),
                     Container(
                       color: Colors.grey,
                       height: 2,
                       width:145,
                     ),

                   ],
                 ),
                 Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                   Container(


                     child: MaterialButton(
                       onPressed: () {
                       },

                       child: Image(
                         image:AssetImage('assets/images/Google.png'),
                       ),
                     ),
                   ),
                     Container(
                       child:
                         MaterialButton(
                           onPressed: () {

                           },
                           child: Image(
                             image:AssetImage('assets/images/Facebook.png'),
                           ),
                         ),

                     ),

                   ],
                 ),
                 Container(
                   alignment: AlignmentDirectional.bottomStart,
                   child: Image(image:AssetImage(
                       'assets/images/signup_down.png'
                   ),),
                 ),

               ]
             ),
           ),


       ],
     ),
   ),
    );
  }
}

