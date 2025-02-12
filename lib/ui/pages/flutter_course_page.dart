import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return const Text("Flutter course");
  }

  Widget buildCourseFocus() {
    return Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                'Course Focus'),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 5,
                      color: Colors.blue,
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700),
                        'UI Development')
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 5,
                      color: Colors.red,
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700),
                        'Architecture')
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 5,
                            color: Colors.yellow,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 5,
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                        ),
                      ],
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700),
                        'Design thinking Testing')
                  ],
                ),
              ),
            ],
          ),
        ]));
  }

  Widget buildModules() {
    return const Text("Modules");
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}
