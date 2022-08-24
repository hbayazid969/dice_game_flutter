import 'package:flutter/material.dart';

class DesignDemo extends StatefulWidget {
  const DesignDemo({Key? key}) : super(key: key);

  @override
  State<DesignDemo> createState() => _DesignDemoState();
}

class _DesignDemoState extends State<DesignDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.black,
            elevation: 12,
            child: Container(
              height: 100,
              child: ListTile(
                leading: Icon(
                  Icons.check_box_outlined,
                  color: Colors.white,
                ),
                title: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Research Analysis",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 7,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 7,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "5/20",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                            child: Text(""),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "2 Days left",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                trailing: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 233, 224, 196),
                  ),
                  child: Center(
                    child: Text(
                      "Urgent",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
