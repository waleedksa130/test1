import 'package:flutter/material.dart';
import 'secondroute.dart';

class OneRoute extends StatefulWidget {
  @override
  _OneRouteState createState() => _OneRouteState();
}

class _OneRouteState extends State<OneRoute> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  String errorMessage = ""; // متغير لتخزين رسالة الخطأ

  void login() {
    String name = nameController.text.trim();
    String mobile = mobileController.text.trim();

    if (name.isEmpty || mobile.isEmpty) {
      setState(() {
        errorMessage = "الاسم أو رقم الهاتف فارغ"; // عرض رسالة عند الحقول الفارغة
      });
    } else if (name != "name" || mobile != "mobile") {
      setState(() {
        errorMessage = "تأكد من الاسم أو رقم الهاتف"; // عرض رسالة عند القيم الغير صحيحة
      });
    } else {
      setState(() {
        errorMessage = ""; // مسح الرسالة إذا كانت البيانات صحيحة
      });
      // الانتقال إلى الصفحة الثانية
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondRoute(name: name, mobile: mobile),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('One Route'), backgroundColor: Colors.teal),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Container الأزرق الذي يحتوي على الحقول والأزرار
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.shade100,
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
                  // حقول الإدخال (اسم ورقم الهاتف)
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name', fillColor: Colors.white, filled: true),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: mobileController,
                    decoration: InputDecoration(labelText: 'Mobile', fillColor: Colors.white, filled: true),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 20),
                  // أزرار داخل نفس الكونتينر
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: login,
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // كونتينر لعرض رسالة الخطأ فقط عند الحاجة
            Container(
              width: 300,
              height: 60,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: errorMessage.isNotEmpty
                    ? Text(
                  errorMessage,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
                    : SizedBox.shrink(), // لا يظهر شيء إذا كانت الرسالة فارغة
              ),
            ),
          ],
        ),
      ),
    );
  }
}
