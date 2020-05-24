import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int lnum=1;
  int rnum=1;
  void change()
  {
    setState(() {
      lnum=Random().nextInt(6)+1;
      rnum=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed:(){
                  setState(() {
                    change();
                  });
                },

                child: Image.asset('images/dice$lnum.png')
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: ()
                {
                  change();

                },
                child: Image.asset('images/dice$rnum.png'),

              ),
            )
          ],
        ),
      ),

    );
  }
}




