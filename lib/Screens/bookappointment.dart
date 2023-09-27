import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'MakePayment.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 99, 128),
        title: Text("Book Appointment"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: InkWell(
                    onTap: () {},
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
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0),
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
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: CalendarTimeline(
                    initialDate: DateTime(2020, 4, 20),
                    firstDate: DateTime(2019, 1, 15),
                    lastDate: DateTime(2020, 11, 20),
                    onDateSelected: (date) => print(date),
                    leftMargin: 20,
                    monthColor: Colors.blueGrey,
                    dayColor: Colors.teal[200],
                    activeDayColor: Colors.white,
                    activeBackgroundDayColor: Colors.redAccent[100],
                    dotsColor: Color(0xFF333A47),
                    selectableDayPredicate: (date) => date.day != 23,
                    locale: 'en_ISO',
                  ),
                )),
            Expanded(flex: 4, child: Container()),
            Expanded(
                flex: 1,
                child: Container(
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MakePayment(),
                        ));
                      },
                      child: Card(
                        color: Color.fromARGB(255, 4, 99, 128),
                        child: Center(
                            child: Text(
                          "Book Now",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
