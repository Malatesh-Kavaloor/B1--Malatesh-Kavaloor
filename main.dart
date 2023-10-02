import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_login/home.dart';
import 'package:my_login/password.dart';
import 'package:my_login/signin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  ));
}

class login extends StatelessWidget {
  login({Key? key}) : super(key:key);
  final GlobalKey<FormState> _key=new GlobalKey<FormState>();
  final usercontroller=TextEditingController();
  final passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:   BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/backLog.jpg'),fit: BoxFit.cover)),

      child:   Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            Container(
                padding: EdgeInsets.only(left: 565,top: 35),
                child: Column(
                    children: [

                      Text('Login',style: TextStyle(color: Colors.black, fontSize: 60, fontWeight: FontWeight.bold)),
                      SizedBox(height: 35),
                      Image.asset('avtr.png',height: 100,width: 100,)
                    ])),

            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.4,
                    right: 400,
                    left: 400),
                child:Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if(value==null || value.isEmpty || !RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                            return "Enter valid Email ID";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(

                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock)),
                        validator: (value){
                          if(value==null|| value.isEmpty||!RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value) || value.length < 7){
                            return "Password contain atleast one Capital Letter, Small Letters, Numbers, \na special character & min length 6";
                          }

                          return null;
                        }
                        ,),

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if(_key.currentState!.validate()){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())

                                  );
                                }
                              }
                              ,
                              child: Text("Signin",style: TextStyle(color: Colors.black),),),
                          ]
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));

                            }, child: Text("Sign up",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                    fontSize: 16
                                ))),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>pass()));

                            }, child: Text("Forgot Password",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                    fontSize: 16)))
                          ]
                      )


                    ],
                  ),)
            )
          ],
        ),
      ),
    );  }
}




