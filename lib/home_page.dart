import 'package:flutter/material.dart';
import 'Login_Screen.dart';

class PageHome extends StatefulWidget {
  final String nama;
  final String password;

  //constructor

  PageHome({Key key, @required this.nama, @required this.password})
      : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page Home'),
          backgroundColor: Colors.blue,
        ),

        //
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Welcome Back : ${widget.nama}',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                  //style: TextStyle(Colors.blue)
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Your Password is : ' + widget.password,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                  // style: TextStyle(Colors.blue)
                )),

            // FlatButton(
            //   onPressed: () {

            //     //tambah aksi pindah
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => (LoginPage)));
            //   },
            //   textColor: Colors.blue,
            //   child: Text('Log Out'),
            // ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Log Out'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }

                    //akhir aksi pindah
                    ))
          ]

              //Text('Your Password is : ' + widget.password)

              ),
        ));
  }
}
