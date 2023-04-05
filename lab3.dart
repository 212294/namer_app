import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  final _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Red', 'score':10}, 
          {'text':'White', 'score':7}, 
          {'text': 'Blue', 'score':5}, 
          {'text':'Sage', 'score':3}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
            {'text':'Rabbit', 'score':10}, 
            {'text':'Dog', 'score':7}, 
            {'text':'Snake','score':5}, 
            {'text':'Lizzard','score':3}
          ],
      },
      {
        'questionText': 'Who\'s your favourite singer??',
        'answers': [
            {'text':'Michael Bolton','score':10}, 
            {'text':'Lana Del Ray','score':7}, 
            {'text':'Black Dog Bone','score':5}, 
            {'text':'Tulus','score':3}
          ],
      },
    ];
  var _questionIndex=0;
  var _totalScore=0;
  void _resetQuiz() { 
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
        : Result(_totalScore, _resetQuiz),
      ),
    );
  }
     void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
  }
