import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  final myUnameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUname, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _formKey,
        appBar: AppBar(
            //title: Text('Login Screen App'),
            ),

        //var column = Column(children: <Widget>[
        //crossAxisAlignment: CrossAxisAlignment.start,
        body: Form(
            key: _formKey,
            //Padding(
            // children: padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login Form',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                //...end untuk tampilan login form//

                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //validasi
                    // TextFormField(
                    //cek data field nya kosong
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Input Username';
                      }
                      return null;
                    },

                    //end validasi

                    controller: myUnameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                //end untuk tampilan user name//

                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    maxLength: 16,
                    maxLengthEnforced: true,
                    obscureText: true,
                    controller: myPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                //end untuk tampilan username//

                //tampilan tombol text lupa password//
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text(''),
                ),

                //end tampilan tombol text //

                //awal mula synta tampilan tombol//

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Login'),
                        onPressed: () {
                          //cek apakah uname dan password adalah admin
                          //ngambil value dari widget textfield
                          nUname = myUnameController.text;
                          nPassword = myPasswordController.text;

                          // logika perbandingan nya
                          if (_formKey.currentState.validate()) {
                            if ((nUname == 'admin') && (nPassword == 'admin')) {
                              //tambah aksi pindah
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageHome(
                                            nama: nUname,
                                            password:
                                                nPassword, // variable yang di pass ke page home
                                          )));
                              //akhir aksi pindah

                            } else {
                              //print("usrname dan paswword salah");
                              Fluttertoast.showToast(
                                  msg: "Username dan Password Salah",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 3,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.red,
                                  fontSize: 13.0);
                            }
                          }
                        })),

                Container(
                    child: Row(
                  children: <Widget>[
                    Text(''),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Create Account ',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
