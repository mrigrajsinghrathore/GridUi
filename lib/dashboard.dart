


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridui_task/setting.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var dt = DateTime.now();
  var cl;
  @override
  void initState() {
  //   TODO: implement initState
    super.initState();
    check();
  }
  void  check (){
    setState(() {
      if(dt.day<15)
      {
        cl=Colors.grey;
      }
      else{
        cl=Colors.lightBlueAccent;
      }
    });

  }
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('HRMS',style: TextStyle(color: Colors.white),),

          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,color: Colors.white)),
            IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.white))
          ]
        ),
        body:Padding(
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
                    color: cl,

                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage("assets/images/leave.png"),
                          width: 40,
                          height: 50,
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
                    color: cl,

                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage("assets/images/attendance.png"),
                          width: 40,
                          height: 50,
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
                          width: 40,
                          height: 50,
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
                          width: 40,
                          height: 50,
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
                          width: 40,
                          height: 50,
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
                          width: 40,
                          height: 50,
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
                          width: 40,
                          height: 50,
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
        ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue.shade400,

        currentIndex: 2,
      onTap: (index){
        if(index==2){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Settingpage()),
        );}
        else{

        }
      },
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(

          icon: Icon(Icons.home,color: Colors.black),
          label: 'Home',

        ),
        BottomNavigationBarItem(

          icon: Icon(Icons.lock,color: Colors.black),
          label: 'Password',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: Colors.black),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'Profile', backgroundColor: Colors.black
        ),
      ],
    )
    );
  }
}
