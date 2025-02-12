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
    return const Text("Focus on the course");
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
