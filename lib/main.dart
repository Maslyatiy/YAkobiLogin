import 'dart:html';import 'package:flutter/material.dart';void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return MaterialApp(

      home: PageA(),    );  }
}


class PageA extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Алексей',style: TextStyle(color: Colors.blue),),        backgroundColor: Colors.yellow,      ),      body: Center(

      child: Container(
        width: 600,          height: 800,          decoration: BoxDecoration(
          color: Colors.grey,                  borderRadius: BorderRadius.circular(25)
      ),          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,          children:[
        const Text(

          "Login", style: TextStyle(
            fontSize: 50,              color: Colors.yellow            ),            ),       TextFormField(

          decoration: InputDecoration(
            labelText: "Бо",          ),        ),            TextFormField(
          decoration: InputDecoration(
              labelText: "Скоро в школу"              ),            ),
        Container(
            margin: EdgeInsets.all(40),
            child:
            TextButton(

                child: Text("NEXT", style: TextStyle(color:Colors.yellow, fontSize: 25)),style: TextButton.styleFrom(

              backgroundColor: Colors.redAccent,            ),                onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageB()));    }
            )
        )







      ],        ),      ),      ),    );  }
}

class PageB extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Можжухин'),          backgroundColor: Colors.blue,        ),
        body: Center(

          child:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                ElevatedButton(onPressed:(){
                  Navigator.pop(context);
                },

                  child: Text("Назад",
                  ),
                )




              ],),      ),         // child:         //      ElevatedButton(         //        child: const Text('Go back'),         //        onPressed: () {         //          Navigator.pop(context);         //        },         //      ),        )
        ));  }
}