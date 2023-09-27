import 'package:flutter/material.dart';

import 'Navigation.dart';
import 'doctor_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 99, 128),
        title: Text("Indoctorr"),
      ),
      drawer: NavigationDrawerScreen(),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Card(
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
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchDoctor(),
                            ));
                          },
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 4, 99, 128),
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipOval(
                                          child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 0),
                                        child: Image.asset("assets/heart.png"),
                                      )),
                                    ),
                                  )),
                              Expanded(flex: 2, child: Text("Heart"))
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 4, 99, 128),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                        child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 0),
                                      child: Image.asset("assets/openeye.png"),
                                    )),
                                  ),
                                )),
                            Expanded(flex: 2, child: Text("Eyes"))
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 4, 99, 128),
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                        child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 0),
                                      child: Image.asset("assets/tooth.png"),
                                    )),
                                  ),
                                )),
                            Expanded(flex: 2, child: Text("Teeth"))
                          ],
                        ))
                  ],
                )),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          // SizedBox(
          //   height: 150,
          //   child: Expanded(
          //       flex: 1,
          //       child: Row(
          //         children: [
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/heart.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               )),
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/openeye.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               )),
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/tooth.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               ))
          //         ],
          //       )),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SizedBox(
          //   height: 150,
          //   child: Expanded(
          //       flex: 1,
          //       child: Row(
          //         children: [
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/heart.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               )),
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/openeye.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               )),
          //           Expanded(
          //               flex: 1,
          //               child: Column(
          //                 children: [
          //                   Expanded(
          //                       flex: 8,
          //                       child: Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           decoration: BoxDecoration(
          //                             color: Color.fromARGB(255, 4, 99, 128),
          //                             shape: BoxShape.circle,
          //                           ),
          //                           child: ClipOval(
          //                               child: Padding(
          //                             padding: const EdgeInsets.fromLTRB(
          //                                 20, 10, 20, 0),
          //                             child: Image.asset("assets/tooth.png"),
          //                           )),
          //                         ),
          //                       )),
          //                   Expanded(flex: 2, child: Text("data"))
          //                 ],
          //               ))
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}
