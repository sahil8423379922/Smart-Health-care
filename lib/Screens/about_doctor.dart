import 'package:flutter/material.dart';

import 'bookappointment.dart';

class AboutDoctor extends StatefulWidget {
  const AboutDoctor({super.key});

  @override
  State<AboutDoctor> createState() => _AboutDoctorState();
}

class _AboutDoctorState extends State<AboutDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor's Profile"),
        backgroundColor: Color.fromARGB(255, 4, 99, 128),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Image.asset("assets/doctor.png"),
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Text(
                    "Dr Pankaj Goel, is currently working as a Director and Head of the Cardio-thoracic and Vascular (Heart, Lung and Vascular Surgery) unit at the Ivy Hospital, Amritsar. After completing his MCh in cardio-thoracic and vascular surgery from GB Pant Hospital, Delhi University in 1998, Dr Goel worked at Madras Medical Mission, Chennai for three years. Here he obtained training in complex paediatric cases. Thereafter he went to Australia (Royal Perth Hospital) for further training and experience.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookAppointment(),
                    ));
                  },
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Card(
                      color: Color.fromARGB(255, 4, 99, 128),
                      child: Center(
                          child: Text(
                        "Book Appointment",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    ),
                  )))
        ],
      ),
    );
  }
}
