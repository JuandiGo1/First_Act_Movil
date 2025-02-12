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
    return Container(
        height: 100,
        color: Colors.blueAccent,
        child: Padding(
            padding: EdgeInsets.all(15),
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
                    child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.black),
                              iconColor: WidgetStateProperty.all(Colors.white)),
                          child: Icon(Icons.search),
                          onPressed: () {}),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.black),
                              iconColor: WidgetStateProperty.all(Colors.white)),
                          child: Icon(Icons.notifications),
                          onPressed: () {}),
                    )),
                  ],
                ))
              ],
            )));
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
    return Expanded(
      child: Column(
        children: [
          Text('Modules'),
          Expanded(
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: [
                Iconos()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}

class Iconos extends StatelessWidget {
  const Iconos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //,
      children: <Widget>[           
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 214, 214)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.book),
                    onPressed: (){},
                    color: Colors.blue,
                    iconSize: 50.0,
                    ),
                ),
                Text('Intro')
              ],
            ),
          ),
        ),
    
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 214, 214)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.design_services),
                    onPressed: (){},
                    color: Colors.red,
                    iconSize: 50.0,
                    ),
                ),
                Text('UX design')
              ],
            ),
          ),
        ),
    
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 214, 214)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.storage),
                    onPressed: (){},
                    color: Colors.orange,
                    iconSize: 50.0,
                    ),
                ),
                Text('State ')
              ],
            ),
          ),
        ),
    
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 214, 214)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.bug_report),
                    onPressed: (){},
                    color: Colors.grey,
                    iconSize: 50.0,
                    ),
                ),
                Text('Testing')
              ],
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 214, 214, 214)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.network_cell),
                    onPressed: (){},
                    color: Colors.black,
                    iconSize: 50.0,
                    ),
                ),
                Text('Network')
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Bloque extends StatelessWidget {
  const Bloque({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.10),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 70,
              color: Colors.amber,
              child: Icon(Icons.book),
            ),
            Text('Introduction')
          ],
        ),
      ),
    );
  }
}
