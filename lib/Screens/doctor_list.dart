import 'package:flutter/material.dart';

import 'about_doctor.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({super.key});

  @override
  State<SearchDoctor> createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 99, 128),
        title: Text("Available Doctors"),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Card(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: TextField(
              controller: null,
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                  labelText: "Search"),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AboutDoctor(),
            ));
          },
          child: Card(
            child: SizedBox(
              width: double.infinity,
              height: 120,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 99, 128),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Image.asset("assets/doctor.png"),
                        )),
                      )),
                  Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: double.infinity,
                                width: double.infinity,
                                child: Text(
                                  "Dr. Alok Mishra",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: Text("Surgen"))),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Text("Near Ramadevi")),
                              ))
                        ],
                      ))
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
