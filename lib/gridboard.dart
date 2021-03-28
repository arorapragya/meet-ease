import 'package:flutter/material.dart';
import 'package:meet_ease/VoiceRecorder/speech_screen.dart';
import 'ToDoList/Screens/tasks/tasks.dart';

class GridDashboard extends StatefulWidget {
  @override
  _GridDashboardState createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
  Items item1 = new Items(
      title: "Record",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "asset/mic.png");

  Items item2 = new Items(
    title: "To Do List",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "asset/notes.png",
  );

  Items item3 = new Items(
    title: "Upload",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "asset/upload.png",
  );

  Items item4 = new Items(
    title: "Calendar",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "asset/calendar.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff42d8ff;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            print(data);
            return GestureDetector(
              onTap: () {
                if (data.title.toLowerCase() == "to do list") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Tasks();
                  }));
                } else if (data.title.toLowerCase() == "record") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SpeechScreen();
                  }));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitle,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
