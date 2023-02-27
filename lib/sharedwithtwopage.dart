import 'package:flutter/material.dart';
import 'package:flutter_app_pro2/sharedtwo.dart';
import 'package:flutter_app_pro2/sharedwithtwopages.dart';

class SharedWithtwopage extends StatefulWidget {
  const SharedWithtwopage({Key? key}) : super(key: key);

  @override
  State<SharedWithtwopage> createState() => _SharedWithtwopageState();
}

class _SharedWithtwopageState extends State<SharedWithtwopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton:  FloatingActionButton(onPressed: (
          ){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){return Sharedtwo();}));
      }, child: Text("+")),
      appBar: AppBar(title:Text("Notes",style: TextStyle(color: Colors.black),)),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
                itemCount: Datas.notes.length,
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(Datas.notes[index]["title"]),
                          Text(Datas.notes[index]["contact"]),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),


        ],
      ),
    );
  }
}
