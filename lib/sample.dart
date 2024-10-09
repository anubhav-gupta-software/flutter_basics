// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
// //ordered, can have duplicates
//   List numbers = [1,2,3,4,5,"jello"];
//   //only List also works if not sure what to add
//   //List<String> or any datatype
//   for(int i =0;i<numbers.length;i++){
//     print(numbers[i]);
// }

// //unordered, unique
// Set<String> uniqueNames = {"A","B","C"};
// print(uniqueNames);

// Map<String, int> user = {
//   "age":5,
//   "height":23
// };//also can use Map user =  instead of having datatypes
// print(user["age"]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //EVERYTHING IS A WIDGET
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(//Scaffold is like a skeleton widget that holds the different parts of the app
        backgroundColor: Color.fromARGB(255, 166, 213, 251),
        appBar: AppBar(
          centerTitle: true,
          title: Text("My App Bar", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu, color: Colors.white,),//left side
          actions:[IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white,)),],
          elevation: 0,
        ),
        body: ListView(//Listview is just like column but in a list so no overflow occurs
          //mainAxisAlignment: MainAxisAlignment.center,
          //can use spaceBetween, spaceEvenly, center, end
          //crossAxisAlignment: CrossAxisAlignment.center,
          //start, end, with respect to bigger box (not sure ig)
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              
              width:400,
              color: Colors.deepPurple,
            ),
              Container(
              
              width:400,
              color: Colors.deepPurple[300],
            ),
              Container(
              
              width:400,
              color: Colors.deepPurple[100],
            ),
          //ListView.builder(
          // itemCount: names.length,
          // itemBuilder: (context,index) => ListTile(
          //   title: Text(names[index]),
          // ))
            //1st box
          // Expanded(
          //   child: Container(
              
              
          //     color: Colors.deepPurple[400]
          //   )),
          //   Expanded(
          //     flex:2,//ratios w.r.t other containers
          //   child: Container(
              
              
          //     color: Colors.deepPurple[200]
          //   )),
          //   Expanded(
          //   child: Container(
              
          //     color: Colors.deepPurple[100]
          //   )),
          ]
        ),
        // Center(
        //   child:Container(
        //   height:300,
        //   width:300,
          
        //   padding: EdgeInsets.all(25),
        //   //padding: EdgeInsets.only(left: 25.35),
        //   //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25.34),
        //   decoration: BoxDecoration(
        //     color: Colors.deepPurple,
        //     //curve the corners
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   // child:Text(
        //   //   "Anubhav Gupta",
        //   //   style: TextStyle(
        //   //     color: Colors.white,
        //   //     fontSize: 28,
        //   //     fontWeight: FontWeight.bold,
        //   //   ),
        //   //),
        //   child: Icon(
        //     Icons.favorite, color: Colors.white,
        //     size: 64,
        //   ),
        // ),
        // )
      ),

    );
  }
}
