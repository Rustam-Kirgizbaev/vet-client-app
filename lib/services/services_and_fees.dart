import 'package:flutter/material.dart';
import 'package:vet_clinic_project/components/app_bar.dart';
import 'package:vet_clinic_project/components/colors.dart';
import 'package:vet_clinic_project/components/menu/menu.dart';
import 'package:vet_clinic_project/services/service_builder.dart';
import 'package:vet_clinic_project/services/services_data.dart';

class ServiceFee extends StatelessWidget {
  const ServiceFee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final List<DataRow> serviceData = [];

    for (int i = 0; i < services.length; i++) {
      serviceData.add(serviceBuilder(services[i]));
    }

    return Scaffold(
        key: _scaffoldKey,
        appBar: appBar(key: _scaffoldKey, context: context),
        endDrawer: const Menu(active: 3),
        backgroundColor: mainBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50.0),
              const Text(
                "Services & Fees",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: DataTable(
                  border: TableBorder.all(),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Service',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Fee',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Duration',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: <DataRow>[...serviceData],
                ),
              ),
              Container(
                height: 50,
                color: appBarColor,
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
