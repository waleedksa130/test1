import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'imageroute.dart';

class SecondRoute extends StatefulWidget {
  final name;
  final mobile;

  const SecondRoute({super.key, required this.name, required this.mobile});
  @override
  State<StatefulWidget> createState() => _SecondRoute();
}

class _SecondRoute extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  alignment: Alignment.center,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.blueGrey.shade50,
                      border: Border.all(color: Colors.blueAccent, width: 2)),
                  child: Text(
                    "Name: ${widget.name}" + "\n" + "Mobile: ${widget.mobile}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text("Google", style: TextStyle(fontSize: 25, color: Colors.white))),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    fixedSize: Size(140, 70),
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                    backgroundColor: Colors.white,
                  ),
                  icon: Icon(Icons.wifi_calling_3_sharp, size: 50, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blueGrey.shade100,
                border: Border.all(color: Colors.blueAccent, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: IconButton.styleFrom(
                      fixedSize: Size(140, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.white,
                    ),
                    icon: Icon(Icons.login_outlined, size: 50, color: Colors.redAccent)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ImageRoute()));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 70),
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.blueAccent)),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text("Image", style: TextStyle(fontSize: 25, color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
