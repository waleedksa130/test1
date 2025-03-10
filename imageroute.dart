import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImageRoute();
}

class _ImageRoute extends State<ImageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Route"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade50,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/download (1).jpg", width: 400),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 60),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade50,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/download.jpg", width: 400),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade50,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text("Back", style: TextStyle(fontSize: 25, color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
