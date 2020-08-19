import 'package:flutter/material.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/size_config/config.dart';
import 'package:todly/ui/view/bottom_nav.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SingleList extends StatefulWidget {
  @override
  _SingleListState createState() => _SingleListState();
}

class _SingleListState extends State<SingleList> {
  @override
  Widget build(BuildContext context) {
    var progressValue=50.0;
        return Scaffold(
          appBar: AppBar(
              iconTheme: IconThemeData(
      color: Colors.blue), 
            backgroundColor: Colors.white,
            elevation: 2,
            title: Row(
              children: [
                Text('My lists-' , style: GoogleFonts.inter(fontSize: McGyver.textSize(context, 3.2),
                color: Colors.black, fontWeight: FontWeight.w800)),
                Text(' House' , style: GoogleFonts.inter(fontSize: McGyver.textSize(context, 2.3),
                color: Color(0xffbdbdbd), )),
              ],
            ) ,
          ),
          backgroundColor:Color(0xfff6f6f6),
            body: ListView(
                  children: <Widget>[
                    SizedBox(height: McGyver.rsDoubleH(context, 5),),
                Container(
                 
                  child: Padding(
                    padding: const EdgeInsets.only(left:29.0, right:29, top:25),
                    child: 
                      Column(
                        children: [
                         Container(
                          
                           decoration: BoxDecoration(
                              color: Colors.white,
                             borderRadius: BorderRadius.circular(20)
                           ),
                           child: ListTile(
                           
                             contentPadding: EdgeInsets.all(16),
                            // tileColor: Colors.blueAccent,
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
                                              
                                              Align(
                                                alignment: AlignmentDirectional.bottomEnd,
                                                child: Image.asset('assets/images/edit.png', scale: 38,)),
                                               SizedBox(height: McGyver.rsDoubleH(context, 0.5),),
                                              Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.end,

                                                children: [
                                                    SizedBox(width: McGyver.rsDoubleW(context, 9),),
                                                  Text('WORK', style:GoogleFonts.inter(fontWeight: FontWeight.normal, 

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