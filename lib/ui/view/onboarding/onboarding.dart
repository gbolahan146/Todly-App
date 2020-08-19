  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:todly/core/routes/route_names.dart';
import 'package:todly/core/size_config/config.dart';


  class Onboarding extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
              child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/onboarding.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                   padding: EdgeInsets.only(
                    left:37, right:37),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[ 
                     Center(
                        child: Text(
                          'Convenient and productive to-do-list app',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: McGyver.textSize(context, 4.5),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                       SizedBox(height: McGyver.rsDoubleH(context, 5),),
                      Center(
                        child: Text(
                          'We have created a sleek and user friendly interface has been created',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              color: Color(0xff282828),
                              fontSize: McGyver.textSize(context, 2),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: McGyver.rsDoubleH(context, 5),),
                      Center(
                        child: Container(
                          width: McGyver.rsDoubleW(context, 60),
                          child: Material(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff121211),
                                        child: MaterialButton(
                                           padding: EdgeInsets.only(
                                             top:16, bottom: 16, 
                                             ),
                                          onPressed: () {
                          Navigator.pushNamed(
                              context, RouteNames.login);
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[

                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Get Started",
                                                    style: GoogleFonts.dmSans(
                                                        textStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: McGyver.textSize(context, 2.6),
                                                            ),
                                                        fontWeight: FontWeight.w800),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                        ),
                      ),
                      SizedBox(height: McGyver.rsDoubleH(context, 3),),
                                        ],
                    ),
                  )
                  )
                  )
                  );
    }
  }
