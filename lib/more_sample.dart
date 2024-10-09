// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp());
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
   MyApp({super.key});

List names = ["Anubhav","Harry","Bihari","Deluxe"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 166, 213, 251),
        // body: ListView.builder(
        //   itemCount: names.length,
        //   itemBuilder: (context,index) => ListTile(
        //     title: Text(names[index]),
        //   ))
        // body: GridView.builder(
        // itemCount: 64,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //  itemBuilder: (context,index)=>Container(
        //   color:Colors.deepPurple,
        //   margin:EdgeInsets.all(2),
        //  ))
        // body: Stack(
        //   alignment: Alignment.bottomRight,
        //   //center, bottomRight and stuff
        //   children:[
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.deepPurple,
        //     ),
        //                 Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[300],
        //     ),
        //                 Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.deepPurple[100],
        //     ),
        //   ]
        // )
        body: 
        Center(
        child: GestureDetector(
          onTap: ()=>{
            //doSomething
            print("User Tapped")
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[300],
            child: Center(child: Text("Touch this text")),
          
          ),
        ))
      ),

    );
  }
}
