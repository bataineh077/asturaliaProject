import 'package:flutter/material.dart';
import 'package:flutter_app/detiles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:snapclip_pageview/snapclip_pageview.dart';


class ResourceModel {
  final String url;
  final String title;
  final  String query;
  final IconData icon;
  final projectCount;
  ResourceModel(this.url, this.title,this.query,this.icon,this.projectCount);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var resourceList = <ResourceModel>[];

  @override
  void initState() {
    resourceList.addAll([
      ResourceModel(
        "assets/3588960.png",
        "طاقة الرياح",
        'الرياح',
        FontAwesomeIcons.wind,
        17
      ),
      ResourceModel(
        'assets/12345.png',
        "الطاقة الشمسية",
        'الشمس',
          FontAwesomeIcons.sun,
        338
      ),
      ResourceModel(
        'assets/555.png',
        "طاقة المياه",
        'المياه',
          FontAwesomeIcons.water,14
      ),

      ResourceModel(
        'assets/n44.png',
        "الطاقة الحيوية",
        'البيئة',
          FontAwesomeIcons.envira,
        33
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SnapClipPageView(
        backgroundBuilder: buildBackground,
        itemBuilder: buildChild,
        length: resourceList.length,
      ),

    );
  }

  BackgroundWidget buildBackground(_, index) {
    final resource = resourceList[index];
    return BackgroundWidget(
      key: Key(index.toString()),
      child: Image.asset(resource.url, fit: BoxFit.cover),
      index: index,
    );
  }

  PageViewItem buildChild(_, int index) {
    final resource = resourceList[index];
    return PageViewItem(
      key: Key(index.toString()),
      child: InkWell(

        onTap: (){
          Get.to(Detiles(title: resource.title,query: resource.query,icon: resource.icon,
          projectCount: resource.projectCount));
        //  Get.snackbar('h', 'hh');
        },
        child: ListView(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                resource.url,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              resource.title,
              style: Theme.of(context).textTheme.headline,
            )
          ],
        ),
      ),
      height: 405,
      index: index,
    );
  }
}