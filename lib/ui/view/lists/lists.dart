import 'package:flutter/material.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/routes/route_names.dart';
import 'package:todly/core/size_config/config.dart';
import 'package:todly/ui/view/bottom_nav.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final GlobalKey _key = new GlobalKey();

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
      color: Colors.blue), 
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          children: [
            Text('My lists',
                style: GoogleFonts.inter(
                    fontSize: McGyver.textSize(context, 3.2),
                    color: Colors.black,
                    fontWeight: FontWeight.w800)),
          ],
        ),
      ),
      backgroundColor: Color(0xfff6f6f6),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 29.0, right: 29, top: 35),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.single);
              },
              child: ListTile(
                tileColor: Color(0xffFFFFFF),
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffeaf2fd),
                        ),
                        width: McGyver.rsDoubleW(context, 18),
                        height: McGyver.rsDoubleH(context, 8),
                        child: Image.asset(
                          'assets/images/homep.png',
                          scale: 13,
                        )),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('House',
                        style: GoogleFonts.inter(
                            color: Color(0xff9B51E0),
                            fontWeight: FontWeight.w800,
                            fontSize: McGyver.textSize(context, 2.5))),
                    Image.asset(
                      'assets/images/vertical.png',
                      scale: 26,
                    ),
                  ],
                ),
                subtitle: Text(
                  'My personal lifestyle and activities',
                  style: GoogleFonts.inter(
                      fontSize: McGyver.textSize(context, 1.3),
                      color: Color(0xffbdbdbd)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 3),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0, right: 29, top: 25),
            child: GestureDetector(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.single_pers);
                },
                child: ListTile(
                  tileColor: Color(0xffFFFFFF),
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffeaf2fd),
                          ),
                          width: McGyver.rsDoubleW(context, 18),
                          height: McGyver.rsDoubleH(context, 8),
                          child: Image.asset(
                            'assets/images/personal.png',
                            scale: 13,
                          )),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Personal',
                          style: GoogleFonts.inter(
                              color: Color(0xff9B51E0),
                              fontWeight: FontWeight.w800,
                              fontSize: McGyver.textSize(context, 2.5))),
                      Image.asset(
                        'assets/images/vertical.png',
                        scale: 26,
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'My personal lifestyle and activities',
                    style: GoogleFonts.inter(
                        fontSize: McGyver.textSize(context, 1.3),
                        color: Color(0xffbdbdbd)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 3),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0, right: 29, top: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.single_work);
              },
              child: ListTile(
                tileColor: Color(0xffFFFFFF),
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffeaf2fd),
                        ),
                        width: McGyver.rsDoubleW(context, 18),
                        height: McGyver.rsDoubleH(context, 8),
                        child: Image.asset(
                          'assets/images/work.png',
                          scale: 13,
                        )),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Work',
                        style: GoogleFonts.inter(
                            color: Color(0xff9B51E0),
                            fontWeight: FontWeight.w800,
                            fontSize: McGyver.textSize(context, 2.5))),
                    Image.asset(
                      'assets/images/vertical.png',
                      scale: 26,
                    ),
                  ],
                ),
                subtitle: Text(
                  'My personal lifestyle and activities',
                  style: GoogleFonts.inter(
                      fontSize: McGyver.textSize(context, 1.3),
                      color: Color(0xffbdbdbd)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0, top:23,
              right: 29,
            ),
            child: Container(
              height: McGyver.rsDoubleH(context, 10),
              width: McGyver.rsDoubleW(context, 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                child: MaterialButton(
                  padding: EdgeInsets.only(top:20
                  ),
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Add new list',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: McGyver.textSize(context, 2.5),
                              )),
                        ],
                      ),
                      SizedBox(width: McGyver.rsDoubleW(context, 1.6),),
                      Column(children: <Widget>[ Image.asset('assets/images/add_circle.png', scale: 21,)]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
