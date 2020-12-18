import 'dart:convert';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'projetsInfo.dart';
import 'util.dart';

class Detiles extends StatelessWidget {
  String title , query ;
  int projectCount;
  IconData icon;
  Detiles({this.title,this.query,this.icon,this.projectCount});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('${title}'),
    ),

      body: Column(
        children: [

          SymptomCard(
            icon: FontAwesomeIcons.eyeDropper,
            info: "${projectCount}",
            title: "اجمالي المشاريع في استراليا",
          ),
          Container(
            child: FutureBuilder(
              future:
              DefaultAssetBundle.of(context).loadString('assets/projects.json', cache: true),
              builder: (context, snapshot) {
                var mydata = json.decode(snapshot.data.toString());

                if (mydata == null) {
                  return Center(
                        child: CircularProgressIndicator()
                    );

                } else {
                  return ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index)=>Divider(),
                  itemCount : mydata['${query}'].length,
                  itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          decoration: BoxDecoration(
                              color: Colors.red.shade100.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(

                          // leading: Icon(Icons.arrow_back_ios),
                            onTap: (){
                             Get.to(ProjectsInfo(data: mydata['${query}'][index],));
                            },
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(25)),
                            title: Text('${mydata['${query}'][index]['name']}',
                            textDirection: TextDirection.ltr,),
                            subtitle: Text('${mydata['${query}'][index]['date']}',
                                textDirection: TextDirection.ltr),
                            trailing: Icon(icon),
                          ),
                        ),
                      );
                    }
                  );
                }
              },
            )

            ,),
        ],
      ),
    );
  }
}
