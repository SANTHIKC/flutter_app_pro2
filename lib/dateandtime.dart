import 'package:flutter/material.dart';

class DateandTime extends StatefulWidget {
  const DateandTime({Key? key}) : super(key: key);

  @override
  State<DateandTime> createState() => _DateandTimeState();
}

class _DateandTimeState extends State<DateandTime> {
  var date = "";
  getdate() async {
    //await Future.delayed(Duration(seconds: 5));
    // print("helllo");
    DateTime? pickeddays = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2024));
    print(pickeddays);
    setState(() {
      date = pickeddays.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              getdate();
            },
            child: Text("submit"),
          ),
          Text(date.toString()),
        ],
      ),
    );
  }
}
