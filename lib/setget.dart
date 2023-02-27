import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefsetget extends StatefulWidget {
  const Sharedprefsetget({Key? key}) : super(key: key);

  @override
  State<Sharedprefsetget> createState() => _SharedprefsetgetState();
}

class _SharedprefsetgetState extends State<Sharedprefsetget> {
  String v = "anu";


  setdate()async{

    SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.setString("name", "abhi");

  }
  getdate()async{

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var data = await sharedPreferences.getString("name");

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: ElevatedButton(
              child: Text("sumbit"),
              onPressed: (){
                setdate();
                // v = "ammu";
              },
            ),
          ), Center(
            child: ElevatedButton(
              child: Text("print"),
              onPressed: (){
                // print(v);
                getdate();
              },
            ),
          ),
        ],
      ),
    );
  }
}
