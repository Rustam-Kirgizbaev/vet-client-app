import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  String selectedField = "Select field";
  String selectedVet = "Select a veterinarian";
  String selectedDate = "Available days";
  String selectedHour = "Available hours";

  void setField(String value) {
    setState(() {
      selectedField = value;
    });
  }

  void setVet(String value) {
    setState(() {
      selectedVet = value;
    });
  }

  void setDate(String value) {
    setState(() {
      selectedDate = value;
    });
  }

  void setHour(String value) {
    setState(() {
      selectedHour = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 4),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50.0),
            const Text(
              "Make\nAppointment",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    dropDownInputBuilder(
                        fields, setField, selectedField, Icons.pets),
                    const SizedBox(
                      height: 8,
                    ),
                    dropDownInputBuilder(
                        vets, setVet, selectedVet, Icons.person_outline),
                    const SizedBox(
                      height: 8,
                    ),
                    dropDownInputBuilder(days, setDate, selectedDate,
                        Icons.calendar_month_outlined),
                    const SizedBox(
                      height: 8,
                    ),
                    dropDownInputBuilder(hours, setHour, selectedHour,
                        Icons.watch_later_outlined),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Comments"),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(),
                            ),
                            hintText: "Type..."),
                        maxLines: 4,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(50),
                            color: buttonColor),
                        child: FlatButton(
                          child: const Center(
                              child: Text("Make Appointment",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: appBarColor,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

List<String> fields = [
  "Dentistry",
  "Surgery",
  "Dermotology",
  "Cardiology",
  "Neurology",
  "Ophthalmology",
  "Nutrition"
];

List<String> vets = [
  "Staff 1",
  "Staff 2",
  "Staff 3",
  "Staff 4",
];

List<String> days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
];

List<String> hours = [
  "09:OO ~ 10:00",
  "10:OO ~ 11:00",
  "11:OO ~ 12:00",
  "12:OO ~ 13:00",
  "13:OO ~ 14:00",
  "14:OO ~ 15:00",
  "15:OO ~ 16:00",
  "16:OO ~ 17:00",
  "17:OO ~ 18:00",
];

Widget dropDownInputBuilder(List<String> items, Function setState,
    String selectedValue, IconData icon) {
  return Container(
    height: 56,
    child: DropdownButtonFormField<String>(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(),
        ),
        prefixIcon: Icon(icon),
      ),
      hint: Text(selectedValue),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              ))
          .toList(),
      onChanged: (value) => {setState(value)},
    ),
  );
}
