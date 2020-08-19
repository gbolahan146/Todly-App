import 'package:flutter/material.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/size_config/config.dart';
import 'package:todly/ui/view/bottom_nav.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final GlobalKey _key = new GlobalKey();
  Types selectedUser;

  var fake = "Task name ";
  var err = true;
  List types = [
    const Types(1, 'HOME'),
    const Types(2, 'WORK'),
    const Types(3, 'PERSONAL'),
  ];
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: McGyver.rsDoubleH(context, 5),
          ),
          Center(
            child: formUI(),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 14),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 29,
              top: 25,
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 2.0, color: Color(0xff000000)),
              )),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 9.0, right: 29, bottom: 12),
                child: Text(
                  err ? fake : selectedUser.name,
                  style: GoogleFonts.inter(
                      fontSize: McGyver.textSize(context, 2),
                      color: Color(0xff000000)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 11),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 29,
            ),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffeaf2fd),
                    ),
                    width: McGyver.rsDoubleW(context, 18),
                    height: McGyver.rsDoubleH(context, 9),
                    child: Image.asset(
                      'assets/images/cal.png',
                      scale: 13,
                    )),
                SizedBox(
                  width: McGyver.rsDoubleW(context, 6),
                ),
                Text(
                  'August 7, 2020',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: McGyver.textSize(context, 2.7)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 11),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 29,
            ),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff5eefc),
                    ),
                    width: McGyver.rsDoubleW(context, 18),
                    height: McGyver.rsDoubleH(context, 9),
                    child: Image.asset(
                      'assets/images/timer.png',
                      scale: 13,
                    )),
                SizedBox(
                  width: McGyver.rsDoubleW(context, 6),
                ),
                Text(
                  '2:00pm - 3:00pm',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: McGyver.textSize(context, 2.7)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 11),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 29,
            ),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff5eefc),
                    ),
                    width: McGyver.rsDoubleW(context, 18),
                    height: McGyver.rsDoubleH(context, 9),
                    child: Image.asset(
                      'assets/images/alarm.png',
                      scale: 13,
                    )),
                SizedBox(
                  width: McGyver.rsDoubleW(context, 6),
                ),
                Text(
                  'Remainder',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: McGyver.textSize(context, 2.7)),
                ),
                SizedBox(
                  width: McGyver.rsDoubleW(context, 1),
                ),
                Container(
                  width: McGyver.rsDoubleW(context, 18),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Color(0xffFFBE0B),
                    activeColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: McGyver.rsDoubleH(context, 8),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
              right: 29,
            ),
            child: Container(
              height: McGyver.rsDoubleH(context, 12),
              width: McGyver.rsDoubleW(context, 23),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                  color: Colors.black,
                  onPressed: null,
                  child: Text('Create task',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: McGyver.textSize(context, 3.2),
                      ))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (this.mounted) super.dispose();
  }

  Widget formUI() {
    return new Container(
      child: Stack(
        children: [
          Container(
            height: McGyver.rsDoubleH(context, 8),
            width: McGyver.rsDoubleW(context, 60),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black,
                    width: McGyver.rsDoubleW(context, 0.6)),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: Colors.black,
                hint: Text("Select list",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    )),
                isDense: true,
                value: selectedUser == null ? null : selectedUser,
                onChanged: (newValue) {
                  setState(() {
                    selectedUser = newValue;
                    err = false;
                  });
                },
                items: types.map((user) {
                  return DropdownMenuItem(
                    value: user,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: selectedUser == null
                          ? Text(
                              user.name,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          : selectedUser.name == user.name
                              ? Container(
                                  width: McGyver.rsDoubleW(context, 30),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                  ),
                                  child: Text(
                                    user.name,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                )
                              : Text(
                                  user.name,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Types {
  const Types(this.id, this.name);
  final String name;
  final int id;
}
