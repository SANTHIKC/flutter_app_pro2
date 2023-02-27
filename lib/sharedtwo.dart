import 'package:flutter/material.dart';
import 'package:flutter_app_pro2/sharedwithtwopage.dart';
import 'package:flutter_app_pro2/sharedwithtwopages.dart';

class Sharedtwo extends StatefulWidget {
  const Sharedtwo({Key? key}) : super(key: key);

  @override
  State<Sharedtwo> createState() => _SharedtwoState();
}

class _SharedtwoState extends State<Sharedtwo> {
  TextEditingController tx = TextEditingController();
  TextEditingController tx1 = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            " Add Notes",
            style: TextStyle(color: Colors.black),
          )),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Row(
              children: [
                Text("Titile"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: tx,
                decoration: InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Row(
              children: [
                Text("Contact"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: tx1,
                decoration: InputDecoration(
                    hintText: "contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Datas.notes.add({"title":tx.text,"contact":tx1.text});
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedWithtwopage(),));
                },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
