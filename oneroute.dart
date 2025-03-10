import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondroute.dart';

class OneRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OneRoute();
  final usercntroller = TextEditingController();
  final mobilecntroller = TextEditingController();
  late String show = "";
}

class _OneRoute extends State<OneRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One Route"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade50,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Column(
              children: [
                TextField(
                  controller: widget.usercntroller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: widget.mobilecntroller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Mobile",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade100,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (widget.usercntroller.text == "name" && widget.mobilecntroller.text == "mobile") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute(name: widget.usercntroller.text, mobile: widget.mobilecntroller.text)),
                        );
                      } else if (widget.usercntroller.text.isEmpty || widget.mobilecntroller.text.isEmpty) {
                        setState(() {
                          widget.show = "رقم الهاتف أو الاسم فارغ";
                        });
                      } else {
                        setState(() {
                          widget.show = "تأكد من الاسم او رقم الهاتف";
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.white))),
                ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.redAccent,
                    ),
                    child: Text("Close", style: TextStyle(fontSize: 25, color: Colors.white)))
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 70, 30, 0),
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blueGrey.shade50,
                        border: Border.all(color: Colors.blueAccent, width: 2)),
                    child: Text(
                      "${widget.show}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
