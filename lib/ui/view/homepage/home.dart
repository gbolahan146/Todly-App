import 'package:flutter/material.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/size_config/config.dart';
import 'package:todly/ui/view/bottom_nav.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var progressValue=50.0;
        return Scaffold(
          backgroundColor:Color(0xfffcfcfc),
            body: ListView(
                  children: <Widget>[
                    SizedBox(height: McGyver.rsDoubleH(context, 3)),
                    Padding(
                      padding: const EdgeInsets.only(left:29.0, right:29),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hey Emmanuel,', style: GoogleFonts.inter(fontSize: McGyver.textSize(context, 2.8), fontWeight: FontWeight.w800,color: Colors.black),),
                              SizedBox(height: McGyver.rsDoubleH(context, 0.5)),
                              Text('Let’s make this day productive', style: GoogleFonts.inter(fontSize: McGyver.textSize(context, 1.7), fontWeight: FontWeight.w500,  color: Color(0xFF828282))),
                            ],
                          ),
                          CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/avatar.png'),
            ),
                        ],
                      ),
                    ),
                    SizedBox(height: McGyver.rsDoubleH(context, 5)),
                    Padding(
                       padding: const EdgeInsets.only(left:29.0, right:29),
                      child: Container(
                        
                         padding: EdgeInsets.symmetric(vertical: 2),
                        decoration: BoxDecoration(
                        
                          color: Colors.white38,
                          border: Border.all(
                            width: McGyver.rsDoubleW(context, 1),
                  color: Color(0xffffffff),),
                  borderRadius: BorderRadius.circular(7),
                ),
                        child: 
                          Row(children: [
                            Column(
                              children: [
                                Container(
                                  width: Config.xMargin(context, 100),
                                  height: Config.yMargin(context, 100),
                                  child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            annotations: <GaugeAnnotation>[
  GaugeAnnotation(
  positionFactor: 0.1,
  angle: 90,
  widget: Text(
  progressValue.toStringAsFixed(0) + '%',
  style: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: McGyver.textSize(context, 3.7)),
  ))
  ],
                             pointers: <GaugePointer>[
      RangePointer(
      value: progressValue,
  cornerStyle: CornerStyle.bothCurve,
  width: 0.2,
  color: Color(0xffFFBE0B),
  sizeUnit: GaugeSizeUnit.factor,
   )
  ],
                        axisLineStyle: AxisLineStyle(
                          thickness: 0.2,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Color(0xfffffbf0),
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                      )
                  ]),
                  ),
                          ],
                        ),
                        SizedBox(width: McGyver.rsDoubleW(context, 2),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Today’s tasks \ncompleted', style: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: McGyver.textSize(context, 3)),),
                            SizedBox(height: McGyver.rsDoubleH(context, 1),),
                            Text('5/10 completed', style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: McGyver.textSize(context, 2)),),
                          ],
                        )
                      ],
                      )    
                ),
                    ),
                    SizedBox(height: McGyver.rsDoubleH(context, 5),),

                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: Color(0xffE0E0E0)),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:29.0, right:29, top:25),
                    child: 
                      Column(
                        children: [
                         ListTile(
                           tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('4:00 - 5:00', style:GoogleFonts.inter(color: Color(0xff2F80ED))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Meeting with CEO', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Align(
                                              alignment: AlignmentDirectional.bottomEnd,
                                              child: Image.asset('assets/images/vertical.png', scale: 38,)),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 7),),
                                                Text('WORK', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot.png', scale: 58,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Thursday, 6', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                         ),
                         SizedBox(height: McGyver.rsDoubleH(context, 3),),
                         ListTile(
                         tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('5:20 - 7:10', style:GoogleFonts.inter(color: Color(0xff2F80ED))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Do the dishes', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Row(
                                               mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                              
                                                Image.asset('assets/images/vertical.png', scale: 38,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 7),),
                                                Text('HOUSE', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot_green.png', scale: 58,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Thursday, 6', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                         ),
                          SizedBox(height: McGyver.rsDoubleH(context, 3),),
                         ListTile(
                          tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('4:00 - 5:00', style:GoogleFonts.inter(color: Color(0xffeb5757))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Netflix ‘n’ Chill', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xffeb5757))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Image.asset('assets/images/vertical.png', scale: 38,),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 7),),
                                                Text('HOUSE', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot_green.png', scale: 58,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Thursday, 6', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xffeb5757))),
                                          ],
                                        ),
                         ),
                          SizedBox(height: McGyver.rsDoubleH(context, 3),),
                         ListTile(
                          tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('2:00 - 5:00', style:GoogleFonts.inter(color: Color(0xffFFBE0B))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Sleep like a baby', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xffFFBE0B))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Image.asset('assets/images/vertical.png', scale: 38,),
                                            SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 1),),
                                                Text('PERSONAL', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot_blue.png', scale: 58,),
                                              ],
                                            ),
                                            SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Friday, 7', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xffFFBE0B))),
                                          ],
                                        ),
                         ),
                          SizedBox(height: McGyver.rsDoubleH(context, 3),),
                         ListTile(
                         tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('4:00 - 5:00', style:GoogleFonts.inter(color: Color(0xff2F80ED))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Meeting with CEO', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Image.asset('assets/images/vertical.png', scale: 38,),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,

                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 7),),
                                                Text('Work', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot.png', scale: 58,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Thursday, 6', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                         ),
                          SizedBox(height: McGyver.rsDoubleH(context, 3),),
                         ListTile(
                          tileColor: Color(0xffFFFFFF),
                           leading: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('4:00 - 5:00', style:GoogleFonts.inter(color: Color(0xff2F80ED))),
                                            SizedBox(height: McGyver.rsDoubleH(context, 2),),
                                            Text('Meeting with CEO', style:GoogleFonts.inter(fontWeight: FontWeight.w600, 
                                            fontSize: McGyver.textSize(context, 2.2), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                          title: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            
                                            Image.asset('assets/images/vertical.png', scale: 38,),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                  SizedBox(width: McGyver.rsDoubleW(context, 7),),
                                                Text('Work', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

                                                fontSize: McGyver.textSize(context, 1.5), color: Color(0xff828282))),
                                                  SizedBox(width: McGyver.rsDoubleW(context, 2),),
                                              
                                                 Image.asset('assets/images/dot.png', scale: 58,),
                                              ],
                                            ),
                                             SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                            Text('Thursday, 6', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 
                                            fontSize: McGyver.textSize(context, 1.9), color: Color(0xff2F80ED))),
                                          ],
                                        ),
                         ),
                          SizedBox(height: McGyver.rsDoubleH(context, 3),),
                          
                        ],
                      ),
                   
                  ),
                )




              ],
            ),
      );
  }
}