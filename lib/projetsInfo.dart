import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'util.dart';


class ProjectsInfo extends StatelessWidget {

  Map<String, dynamic> data;
  ProjectsInfo({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تفاصيل المشروع'),),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SymptomCard(
              icon: FontAwesomeIcons.eyeDropper,
              info: "${data['name']}",
              title: "اسم المشروع",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SymptomCard(
              icon: FontAwesomeIcons.eyeDropper,
              info: "${data['cost']} مليون دولار",
              title: "تكلفة المشروع",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SymptomCard(
              icon: FontAwesomeIcons.eyeDropper,
              info: "${data['date']}",
              title: "تاريخ البدء بالمشروع",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SymptomCard(
              icon: FontAwesomeIcons.eyeDropper,
              info: "${data['goal']}",
              title: "الهدف من المشروع",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SymptomCard(
              icon: FontAwesomeIcons.eyeDropper,
              info: "${data['mechanism']}",
              title: "الية العمل",
            ),
          ),

        ],
      ),
    );
  }
}
