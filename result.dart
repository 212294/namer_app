import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);
  String get resultPhrase{
    String resultText='You did it !';
    if(resultScore<=8){
      resultText='You are okay';
    } else if (resultScore<=12){
      resultText='Pretty good!';
    } else if (resultScore<=16){
      resultText='Awesome!';
    } else {
      resultText='I like you!';
    }
   return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:[
          Text(resultPhrase, style:TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          /*FlatButton(
            child : Text('Restart quiz!'),
            TextColor:Colors.blueAccent,
            onPressed:resetHandler),
        ],
      ),*/
      TextButton(
      onPressed: resetHandler(),
      child: Container(
      color: Color.fromARGB(255, 215, 231, 215),
      padding: const EdgeInsets.all(14),
      child: const Text(
        'Restart Quiz',
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
      ),
      )],),
      );
  }
}