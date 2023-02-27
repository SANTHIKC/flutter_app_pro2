import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpreferancetextfeild extends StatefulWidget {
  const Sharedpreferancetextfeild({Key? key}) : super(key: key);

  @override
  State<Sharedpreferancetextfeild> createState() => _SharedpreferancetextfeildState();
}

class _SharedpreferancetextfeildState extends State<Sharedpreferancetextfeild> {
  TextEditingController txt=TextEditingController();
  setda()async{
    SharedPreferences nm=await SharedPreferences.getInstance();
    nm.setString("name", txt.text);
    print(setda);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: txt,
              decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(onPressed: (){
                setda();
              }, child: Text("Submit")),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(onPressed: ()async{
                SharedPreferences rs=await SharedPreferences.getInstance();
                var data=await  rs.getString("name");
                print(data);
              }, child: Text("Press")),
            ),
          ],
        ),
      ),

    );
  }
}
