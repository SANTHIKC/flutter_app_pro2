import 'package:flutter/material.dart';

import 'biodata.dart';

class Biodata1 extends StatefulWidget {
  const Biodata1({Key? key}) : super(key: key);

  @override
  State<Biodata1> createState() => _Biodata1State();
}

class _Biodata1State extends State<Biodata1> {
  TextEditingController txt = TextEditingController();
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  int isclicked = 0;
  bool isclick = false;
  bool click = false;
  bool click1 = false;
  bool click2 = false;
  var formkey = GlobalKey<FormState>();
  bool genderclicked= false;
  bool hoobiclick=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("NAME"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  controller: txt,
                  validator: (v) {
                    if (v!.isEmpty) {
                      return "enter name";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Age"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  controller: txt1,
                  validator: (x) {
                    if (x!.isEmpty) {
                      return "enter age";
                    }
                    if (x!.length > 3) {
                      return "minimum 3 numbers";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "age",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Email"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  controller: txt2,
                  validator: (m) {
                    if (m!.isEmpty) {
                      return "enter email";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "email",
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Password"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  controller: txt3,
                  validator: (o) {
                    if (o!.isEmpty) {
                      return "enter password";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Gender"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text("Male"),
                    Radio(
                      value: 1,
                      groupValue: isclicked,
                      onChanged: (v) {
                        setState(() {
                          genderclicked=true;
                          isclicked = v!;
                        });
                      },
                    ),
                    Text("Female"),
                    Radio(
                      value: 2,
                      groupValue: isclicked,
                      onChanged: (v) {
                        setState(() {
                          genderclicked=false;
                          isclicked = v!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Hobbies"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text("Music"),
                    Checkbox(
                        value: isclick,
                        onChanged: (v) {
                          setState(() {
                            isclick = v!;
                            hoobiclick=true;
                          });
                        }),
                    Text("Sports"),
                    Checkbox(
                        value: click,
                        onChanged: (b) {
                          setState(() {
                            click = b!;
                            hoobiclick=true;
                          });
                        }),
                    Text("writing"),
                    Checkbox(
                        value: click1,
                        onChanged: (v) {
                          setState(() {
                            click1 = v!;
                            hoobiclick=true;
                          });
                        }),
                    Text("Dance"),
                    Checkbox(
                        value: click2,
                        onChanged: (v) {
                          setState(() {
                            click2 = v!;
                            hoobiclick=true;
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      bool validate = formkey.currentState!.validate();
                      if(validate == false)
                      {
                        return;
                      }
                      else
                      {
                        if(genderclicked== true && hoobiclick == true)
                        {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Biodatas(
                              name: txt3.text,
                              age: txt1.text,
                              email: txt2.text,
                              password: txt.text,
                              isclicked: isclicked,
                              isclick: isclick,
                              click: click,
                              click1: click1,
                              click2: click2,
                            );
                          }));
                        }
                      }

                    },
                    child: Text("Submit")),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
