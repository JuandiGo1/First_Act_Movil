

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildCourseFocus(),
          ),
          const Divider(
              height: 2,
              thickness: 1,
              color: Color.fromARGB(255, 189, 189, 189)),
          buildModules(),
          const Divider(
              height: 2,
              thickness: 1,
              color: Color.fromARGB(255, 189, 189, 189)),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(
        height: 100,
        color: const Color.fromARGB(255, 45, 100, 196),
        child: Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter Course',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Column(children: [
                            Text(
                              '2015-10',
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ]),
                        ],
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ) ,
                          ),
                          SizedBox(width:10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ) ,
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            )));
  }

  Widget buildCourseFocus() {
    return Padding(
      padding: EdgeInsets.all(15),
        //padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                'Course Focus'),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 5,
                      color: Colors.blue,
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                        'UI Development')
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 5,
                      color: Colors.red,
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                        'Architecture')
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 5,
                      color: Colors.yellow,
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                        'Design thinking')
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
                      color:  Color.fromARGB(255, 199, 199, 199),
                    ),
                    Text(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                        'Testing')
                  ],
                ),
              )
            ],
          ),
        ]));
  }

  Widget buildModules() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              'Modules'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
          child: SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                Module(
                    icono: Icons.book,
                    color: Colors.blue,
                    title: 'Introduction'),
                SizedBox(width: 10),
                Module(
                    icono: Icons.design_services,
                    color: Colors.red,
                    title: 'UX Desing'),
                SizedBox(width: 10),
                Module(
                    icono: Icons.storage,
                    color: Colors.orange,
                    title: 'State Mangement'),
                SizedBox(width: 10),
                Module(
                    icono: Icons.bug_report,
                    color: Colors.grey,
                    title: 'Testing'),
                SizedBox(width: 10),
                Module(
                    icono: Icons.network_check,
                    color: Colors.blue,
                    title: 'Networking'),
                SizedBox(width: 10),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildProjectList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5),
            child: Align(
              alignment: Alignment.centerLeft ,
              child:Text(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                'Projects') ,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Archive(fileName: 'Sudoku'),
                Archive(fileName: 'Random user'),
                Archive(fileName: 'Note taking'),
                Archive(fileName: 'Weather'),
                Archive(fileName: 'Rappi'),
                Archive(fileName: 'Facebook')
              ],
            ),
          )
          
        ],
      ),
    );
  }
}

class Archive extends StatelessWidget {
  final String fileName;
  const Archive({
    super.key,
    required this.fileName
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8),
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(width: 0, color: const Color.fromARGB(108, 233, 233, 233)),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(108, 233, 233, 233)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(Icons.folder, color: const Color.fromARGB(255, 118, 183, 216), size: 23),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                fileName
              )
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert_rounded, color: const Color.fromARGB(255, 131, 131, 131), size: 20),
            ),
          ],
        ) ,
      ),
    );
  }
}

class Module extends StatelessWidget {
  final IconData icono;
  final Color color;
  final String title;
  const Module(
      {super.key,
      required this.icono,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        BloqueIcon(icono: icono, color: color),
        Text(style: TextStyle(fontWeight: FontWeight.w400), title)
      ],
    ));
  }
}

class BloqueIcon extends StatelessWidget {
  final IconData icono;
  final Color color;
  const BloqueIcon({
    super.key,
    required this.icono,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
          border:
              Border.all(width: 0, color: Color.fromARGB(255, 236, 236, 236)),
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(108, 233, 233, 233)),
      child: Icon(
        icono,
        color: color,
        size: 40.0,
      ),
    );
  }
}
