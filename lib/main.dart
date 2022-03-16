import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialExample()); 
}

class MaterialExample extends StatefulWidget {
 @override 
 _MaterialExampleState createState() => _MaterialExampleState();
}

class _MaterialExampleState extends State<MaterialExample> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40 ),
              child: Container(
                child: FlutterLogo(),
                width: 70,
                height: 70,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xffd8d8d8)),
              ) 
            ),
                        Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40 ),
              child: Text("Hello\nWelcome Back", 
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ) 
            )  
            ,
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40 ),
              child: TextField(
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                decoration: InputDecoration(labelText: "USERNAME",
                  labelStyle: TextStyle(fontSize: 20, color: Color(0xffd8d8d8))
                ),
              ) 
            )  ,
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40 ),
              child: Stack(children: [
                TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(labelText: "PASSWORD",
                    labelStyle: TextStyle(fontSize: 20, color: Color(0xffd8d8d8))
                  ),
                ),
                Text("SHOW", style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold)) 
              ], alignment: AlignmentDirectional.centerEnd,
              )
            ),
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: onSignIn,
                  style:                ButtonStyle( shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red))) ),  
                  child: Text("SIGN IN", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.bold)),
                ),
              )   
            )
            ,
            Container(
              width: double.infinity,
              height: 50,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NEW USER? SIGNUP", 
                  style: TextStyle(color: Color(0xffd8d8d8), fontWeight: FontWeight.bold))
                  , Text("FORGOT PASSWORD",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)
                  )
                ]

                           )
            )
          ],)
        ) 
      )
    );
  }
  void onSignIn() {}
}