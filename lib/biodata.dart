import 'package:flutter/material.dart';

class Biodatas extends StatefulWidget {
  String name;
  String age;
  String email;
  String password;
  int isclicked;
  bool isclick;
  bool click;
  bool click1;
  bool click2;

  Biodatas({
    required this.name,
    required this.age,
    required this.email,
    required this.password,
    required this.isclicked,
    required this.isclick,
    required this.click,
    required this.click1,
    required this.click2,
  });

  @override
  State<Biodatas> createState() => _BiodatasState();
}

class _BiodatasState extends State<Biodatas> {
  String? gender;
  String c1="";
  String c2="";
  String c3="";
  String c4="";

  void datas(){
    if(widget.isclicked==1){
      setState(() {
        gender="male";
      });
    }
    else
    {
      setState(() {
        gender="female";
      });
    }
    if(widget.isclick==true)
    {
      setState(() {
        c1="Music";
      });
    }
    if(widget.click==true)
    {
      setState(() {
        c2="Sports";
      });
    }
    if(widget.click1==true)
    {
      setState(() {
        c3="Writing";
      });
    }
    if(widget.click2==true)
    {
      setState(() {
        c4="Dance";
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text(widget.name),
          Text(widget.age),
          Text(widget.email),
          Text(widget.password),
          Text(gender!),
          Text(c1),
          Text(c2),
          Text(c3),
          Text(c4),


        ],
      ),

    );
  }
}
