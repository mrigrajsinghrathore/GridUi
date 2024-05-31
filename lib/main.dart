import 'package:flutter/material.dart';
import 'package:gridui_task/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Dashboard(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: double.infinity,
          // height: double.infinity,

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/technology.png"),
                  opacity: 0.1,
                  alignment: Alignment.topRight,
                  fit: BoxFit.cover)),
          //
          // color: Colors.greenAccent,

          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            padding: const EdgeInsets.all(10),
            children: [
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: co,
                  color:Colors.grey,

                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/leave.png"),
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        "Leave",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.grey,

                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/attendance.png"),
                        width: 20,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "  Attendance Regularization",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/calendar.png"),
                        width: 5,
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Attendance Calendar",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/qr-code.png"),
                        width: 5,
                        height: 6,
                      ),
                      Text(
                        "Qr Code",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/money-back-guarantee.png"),
                        width: 5,
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "     Item Transaction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/salary.png"),
                        width: 5,
                        height: 6,
                      ),
                      Text(
                        "Salary Slip",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("assets/images/menu.png"),
                        width: 5,
                        height: 6,
                      ),
                      Text(
                        "Canteen menu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      )
    );
  }
}
