import 'package:flutter/material.dart';
import 'package:vet_clinic_project/services/services_data.dart';

DataRow serviceBuilder(Service service) {
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(
        service.name,
        style: const TextStyle(fontSize: 14, color: Color(0xff494846)),
      )),
      DataCell(Text(service.fee,
          style: const TextStyle(fontSize: 14, color: Color(0xff494846)))),
      DataCell(Text(service.duration,
          style: const TextStyle(fontSize: 14, color: Color(0xff494846)))),
    ],
  );
}
