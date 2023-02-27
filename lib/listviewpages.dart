import 'package:flutter/material.dart';
import 'package:flutter_app_pro2/sharedwithtwopages.dart';

import 'listviewpage2.dart';

class  ListViewpages extends StatefulWidget {
  const  ListViewpages({Key? key}) : super(key: key);

  @override
  State< ListViewpages> createState() => _ListViewpagesState();
}

class _ListViewpagesState extends State< ListViewpages> {
  TextEditingController txt=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    child: TextFormField(
                      controller: txt,
                      decoration: InputDecoration(
                        hintText: "title",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    Datass.note.add(txt.text);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){return ListViewpage2();}));
                  }, child: Text("submit")),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: Datass.note.length,
                  itemBuilder: (context,index) {
                    return Container(
                      width: 100,
                      child:
                      Text(Datass.note[index]),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
