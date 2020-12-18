import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String info;
  final String title;
  final bool isActive;
  final IconData icon;
  const SymptomCard({
    Key key,
    this.info,
    this.title,
    this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height/5,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        color: Color(0xFFF6F7F9),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          //  Icon(this.icon,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
            ),
          ),
          Divider(color: Colors.grey,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              info,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
            ),
          ),

        ],
      ),
    );
  }
}

