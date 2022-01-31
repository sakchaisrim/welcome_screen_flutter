import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1.0,1.0),
            colors: [Colors.blue, Colors.teal],
            tileMode: TileMode.repeated
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _textHeader(),
            _textWelcome(),
            _buttonStart(),
          ],
        ),
      ),
    );
  }
}

Widget _textHeader(){
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.help, color: Colors.white,)
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            onSurface: Colors.white,
          ),
          onPressed: null,
          child: Text('ช่วยเหลือ:'),
        ),
        Container(
          width: 1.0,
          height: 20.0,
          color: Colors.white70,
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
            onSurface: Colors.white,
          ),
          onPressed: null,
          child: Text('ภาษาไทย'),
        ),
      ],
    ),
  );
}
Widget _textWelcome(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "สวัสดี",
        style: TextStyle(
          fontSize: 36.0,
          color: Colors.white,
          fontWeight:  FontWeight.bold,
          fontFamily: 'Kanit'
        ),
      ),
      Text(
        "ยินดีต้อนรับสู่บริการโมบายส์แบงก์กิ้ง",
        style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight:  FontWeight.bold,
            fontFamily: 'Kanit'
        ),
      ),
    ],
  );
}
Widget _buttonStart(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,right: 16.0, bottom: 40.0),
    child: SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          onSurface: Colors.white,

        ),
        onPressed: (){},
        child: Text('เริ่มต้นการใช้งาน'),
      ),


    ),
  );
}