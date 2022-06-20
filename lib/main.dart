import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}
var present=new List.filled(40, 0);
var absent=new List.filled(40, 0);
List<String> myList = <String>["Subject 1","Subject 2","Subject 3","Subject 4"];
List<String> mycode = <String>["S001","S002","S003","S004"];
TextEditingController subject= TextEditingController();
TextEditingController subject_code=TextEditingController();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Attendance Tracker"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


        Padding(
        padding: EdgeInsets.only(top: 35, right: 3),
        child: ElevatedButton(
          child: Text('See Courses', style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 35, left: 3),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),
              );
            },
            child: Text('Add courses', style: TextStyle(color: Colors.white),),
        ),
      ),
    ]),
    ])
    )
    );
  }
  }
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text('COURSES'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

    for(var i=0;i<myList.length;i++)
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 3, left: 50, top: 30),
              child: Text(
                myList[i]+"("+mycode[i]+")",
                style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0, left: 50),
              child: Text(
                "Present                Absent",
                style: TextStyle(fontSize: 12),),

            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0, left: 50),
              child: Text(
                present[i].toStringAsFixed(2) + "                   " +
                    absent[i].toStringAsFixed(2),
                style: TextStyle(fontSize: 12),),

            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 3, left: 50),
              child: ElevatedButton(
                child: Text('PRESENT', style: TextStyle(color: Colors.black),),
                onPressed: () {
                  present[i]++;
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ElevatedButton(
                child: Text('ABSENT', style: TextStyle(color: Colors.black),),
                onPressed: () {
                  absent[i]++;
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
              ])
      ])
    )
    );
  }
}
class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: const Text('ADDING COURSES'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3, left: 20,right: 20),
                          child: Text(
                            "Enter the Subject Name :",
                            style: TextStyle(fontSize: 25),),),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, left: 20,right: 20),
                            child: TextField(
                              controller: subject,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Subject Name',
                                hintText: 'Enter the Subject name',
                              ),
                            ),),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, left: 20,right: 20),
                          child: TextField(
                            controller: subject_code,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Subject code',
                              hintText: 'Enter Subject code',
                            ),
                          ),),
                        Padding(
                          padding: EdgeInsets.only(bottom: 30, left: 10),
                          child: ElevatedButton(
                            child: Text('Done', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                                myList.add(subject.text);
                                mycode.add(subject_code.text);
                                Navigator.pop(context);
                            },
                          ),
                        ),
                      ])
                ])
        )
    );
  }
}





