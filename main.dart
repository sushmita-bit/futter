import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScoreApp",
      home: ScoreHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {

  int number=0;

  void increaseNumber(){
    setState(() {
      number++;
    });
  }

  void decreaseNumber(){
    setState(() {
      number--;
    });
  }

  void resetNumber(){
    setState(() {
      number=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text("Score Changer") ,
        centerTitle: true,


      ) ,


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(child: Text("Score is", style: TextStyle(fontSize: 30, color: Colors.green.shade900 ),)),

          SizedBox(height: 30),
          Center(child: Text(number.toString(), style: TextStyle(fontSize: 100, color: Colors.green.shade900 ),)),

          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
          RaisedButton(color: Colors.green,child:Text("INCREASE",style: TextStyle(fontSize: 20,color: Colors.white)),onPressed: increaseNumber,),
          SizedBox(width: 20,),
          RaisedButton(color: Colors.red,child:Text("DECREASE",style: TextStyle(fontSize: 20,color: Colors.white)),onPressed: decreaseNumber,)
    ])

          

        ],
      ),

    );
  }
}

