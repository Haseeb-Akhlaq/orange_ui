import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/widget/form1.dart';
import 'package:flutter_app_ui/widget/form2.dart';
import 'package:flutter_app_ui/widget/form3.dart';
import 'package:flutter_app_ui/widget/form4.dart';
import 'package:flutter_app_ui/widget/form5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'OpenSans'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool step2Done = false;
  bool step3Done = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 50),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xfff06726),
                            width: 2,
                          )),
                      child: Text(
                        '1',
                        style:
                            TextStyle(color: Color(0xfff06726), fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 2,
                      color: step2Done
                          ? Color(0xfff06726)
                          : Color(0xfff06726).withOpacity(0.3),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: step2Done
                                ? Color(0xfff06726)
                                : Color(0xfff06726).withOpacity(0.3),
                            width: 2,
                          )),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: step2Done
                                ? Color(0xfff06726)
                                : Color(0xfff06726).withOpacity(0.3),
                            fontSize: 30),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 2,
                      color: step3Done
                          ? Color(0xfff06726)
                          : Color(0xfff06726).withOpacity(0.3),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: step3Done
                                ? Color(0xfff06726)
                                : Color(0xfff06726).withOpacity(0.3),
                            width: 2,
                          )),
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: step3Done
                                ? Color(0xfff06726)
                                : Color(0xfff06726).withOpacity(0.3),
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 50),
                    Text(
                      'Verifikasi \n     KTP',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    SizedBox(width: 35),
                    Text(
                      '    Formulir\n  Pengajuan',
                      style: TextStyle(
                          color: step2Done ? Colors.black : Colors.grey,
                          fontSize: 12),
                    ),
                    SizedBox(width: 45),
                    Text(
                      'Keputusan',
                      style: TextStyle(
                          color: step3Done ? Colors.black : Colors.grey,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                shadowColor: Colors.black,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form1(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                shadowColor: Colors.black,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form2(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                shadowColor: Colors.black,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form3(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Form4(),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                shadowColor: Colors.black,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form5(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  10,
                )),
                shadowColor: Colors.black,
                elevation: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form6(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  if (step2Done == false) {
                    setState(() {
                      step2Done = true;
                    });
                    return;
                  }
                  if (step3Done == false) {
                    setState(() {
                      step3Done = true;
                    });
                    return;
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff06726),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class Form6 extends StatefulWidget {
  @override
  _Form6State createState() => _Form6State();
}

class _Form6State extends State<Form6> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        accentColor: Colors.black,
        unselectedWidgetColor: Colors.black,
      ),
      child: ExpansionTile(
        initiallyExpanded: isExpanded,
        childrenPadding: EdgeInsets.all(16).copyWith(top: 0),
        title: Text(
          'Data Rekening Pencairan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bank',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bank',
                      style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Nomor Rekening',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'rekening',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nama Pemilik Rekening',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pemilik',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          )
        ],
        onExpansionChanged: (isExpanded) => () {
          print('adssad');
        },
      ),
    );
  }
}
