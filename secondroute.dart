import 'package:flutter/material.dart';
import 'imageroute.dart'; // تأكد من أنك قد استوردت صفحة ImageRoute هنا.

class SecondRoute extends StatelessWidget {
  final String name;
  final String mobile;

  const SecondRoute({super.key, required this.name, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الكونتينر الذي يحتوي على الاسم ورقم الجوال
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Name: $name", // عرض الاسم
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mobile: $mobile", // عرض رقم الجوال
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30), // مسافة بين الكونتينرين
            // الكونتينر الذي يحتوي على الأزرار
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Google"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.wifi_calling_3_sharp, size: 50, color: Colors.teal),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context), // العودة للصفحة السابقة
                        icon: Icon(Icons.logout, size: 50, color: Colors.redAccent),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // الانتقال إلى صفحة ImageRoute
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ImageRoute()), // التوجيه إلى صفحة ImageRoute
                          );
                        },
                        child: Text("Image"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
