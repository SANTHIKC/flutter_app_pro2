import 'package:flutter/material.dart';
import 'package:flutter_app_pro2/sharedwithtwopages.dart';

class ListViewpage2 extends StatefulWidget {
  const ListViewpage2({Key? key}) : super(key: key);

  @override
  State<ListViewpage2> createState() => _ListViewpage2State();
}

class _ListViewpage2State extends State<ListViewpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: (Text("+")),),
      body: ListView.builder(
          itemCount: Datass.note.length,
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
                    Text(Datass.note[index]),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
