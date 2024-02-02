import 'package:flutter/material.dart';

void main() => runApp(new myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Stateful'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var no1_controller = TextEditingController();
  var no2_controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: new Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter an Integer...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  keyboardType: TextInputType.number,
                  controller: no1_controller,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter an Integer...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  keyboardType: TextInputType.number,
                  controller: no2_controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1_controller.text.toString());
                            var no2 = int.parse(no2_controller.text.toString());

                            var sum = no1 + no2;
                            result = "$sum";
                            setState(() {});
                          },
                          child: Text('add')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1_controller.text.toString());
                            var no2 = int.parse(no2_controller.text.toString());

                            var substraction = no1 - no2;
                            result = "${(substraction).abs()}";
                            setState(() {});
                          },
                          child: Text('sub')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1_controller.text.toString());
                            var no2 = int.parse(no2_controller.text.toString());

                            var multiplication = no1 * no2;
                            result = "$multiplication";
                            setState(() {});
                          },
                          child: Text('mult')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1_controller.text.toString());
                            var no2 = int.parse(no2_controller.text.toString());

                            var divide = no1 / no2;
                            result = "${divide.toStringAsFixed(2)}";
                            setState(() {});
                          },
                          child: Text('div')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(21),
                  child: Text(
                    'Result : $result',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
