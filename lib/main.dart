import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: boattictactoe(),
  ));
}

class boattictactoe extends StatefulWidget {
  const boattictactoe({Key? key}) : super(key: key);

  @override
  State<boattictactoe> createState() => _boattictactoeState();
}

class _boattictactoeState extends State<boattictactoe> {

  List l = ["", "", "", "", "", "", "", "", ""];
  List<bool> temp = List.filled(9, true);
  // List<bool> l1 = List.filled(9, true);
  int t = 0;
  int k = 0;
  int count = 0;
  int xScore = 0;
  int compScore = 0;
  String message = "";
  String _player = "X";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Boat Tic Tac Tow",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => temp[0]?get(0):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[0]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[1]?get(1):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[1]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[2]?get(2):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[2]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => temp[3]?get(3):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[3]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[4]?get(4):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[4]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: 0.0, bottom: 10.0, left: 0.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[5]?get(5):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[5]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: 0.0, bottom: 10.0, left: 0.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(
                onTap: () => temp[6]?get(6):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("${l[6]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[7]?get(7):null,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("${l[7]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  margin: EdgeInsets.only(
                      top: 0.0, bottom: 10.0, left: 0.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              )),
              Expanded(child: InkWell(
                onTap: () => temp[8]?get(8):null,
                child: Container(
                  height: double.infinity,
                  child: Text("${l[8]}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: 0.0, bottom: 10.0, left: 0.0, right: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                ),
              ))
            ],
          )),
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 0.0,bottom: 10.0,left: 10.0,right: 10.0),
            alignment: Alignment.center,
            child: Text("Your Score is:= ${xScore}",
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0,color: Colors.black),
            ),
          )),
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 0.0,bottom: 10.0,left: 10.0,right: 10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0,color: Colors.black),
            ),
            child: Text("Computer Score is:= ${compScore}",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
          )),
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 0.0, bottom: 10.0, left: 10.0, right: 10.0),
            alignment: Alignment.center,
            child: Text("Player ${_player} 's Turn",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          )),
          Expanded(child: Container(
            margin: EdgeInsets.only(top: 0, bottom: 10.0, left: 10.0, right: 10.0),
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {
              // reset();
            l=List.filled(9, "");
            temp = List.filled(9, true);
            t = 0;
            k = 0;
            count = 0;
            message = "";
            _player = "X";
            setState(() {});
            }, child: Text(
              "RESET",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )),
          )),
          Expanded(child: Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
            child: Text("${message}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          ))
        ],
      ),
    );
  }

  // reset(){
  //   l=List.filled(9, "");
  //   temp = List.filled(9, true);
  //   t = 0;
  //   k = 0;
  //   count = 0;
  //   message = "";
  //   _player = "X";
  //   setState(() {});
  // }

  win(){
    if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X"){
      for(int i = 0;i < 9; i++)
      {
          if(l[i]=="")
            {
                l[i]=" ";
                count++;
            }
        setState(() {

        });
      }
      message = "X is Win!...";
      xScore++;
      // reset();
      setState(() {});

    }

    else if (l[0] == "O" && l[1] == "O" && l[2] == "O" ||
             l[3] == "O" && l[4] == "O" && l[5] == "O" ||
             l[6] == "O" && l[7] == "O" && l[8] == "O" ||
             l[0] == "O" && l[3] == "O" && l[6] == "O" ||
             l[1] == "O" && l[4] == "O" && l[7] == "O" ||
             l[2] == "O" && l[5] == "O" && l[8] == "O" ||
             l[0] == "O" && l[4] == "O" && l[8] == "O" ||
             l[2] == "O" && l[4] == "O" && l[6] == "O") {

      for(int i=0;i<9;i++)
      {
        if(l[i]=="")
        {
          l[i] = " ";
          count++;
        }
        setState(() {

        });
      }
      message = "O is Win!...";
      compScore++;
      // reset();
      setState(() {});

    }
    else if(count == 9){
      message = "Match Draw!...";
    }
    // reset();
    setState(() {});
  }

  get(int i) {
    if(count == 9)
      {
        return;
      }
    k++;
     l[i] = "X";
    l[i] = _player;
    _player = _player == "X" ? "O" : "X";
     count++;
     // print("count := ${count}");
   // l[i] = _player;
   // _player = _player == "X" ? "O" : "X";
    temp[i] = false;
    if (k < 5) {
      while (true) {
        t = Random().nextInt(9);
        if (l[t] == "") {
           // l[t] = "O";
          l[t] = _player;
          _player = _player == "X" ? "O" : "X";
           count++;
       //   l[t] = _player;
       //     _player = _player == "X" ? "O" : "X";
          temp[t] = false;
          break;
        }
      }
      // win();
    }
    setState(() {
      win();
    });
  }
}