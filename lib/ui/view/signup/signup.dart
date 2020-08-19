import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:todly/core/responsiveness.dart';
import 'package:todly/core/routes/route_names.dart';

import '../../../core/size_config/config.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

bool _passwordVisible = true;

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/onboarding.png'),
                    fit: BoxFit.cover)),
            child: Align(
               alignment: Alignment.bottomCenter,
                          child: SingleChildScrollView(
                            child: Column(
                  mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: McGyver.rsDoubleH(context, 36),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35)),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 38.0, bottom: 18.0, left: 12, right: 12),
                          child: entryForm()),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.bottomBar);
        },
        child: Container(
          height: McGyver.rsDoubleH(context, 7),
          width: McGyver.rsDoubleW(context, 50),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: Config.xMargin(context, 2), color: Colors.black),
            borderRadius: BorderRadius.circular(Config.xMargin(context, 13)),
          ),
          child: Center(
            child: Text(
              'Sign Up',
              style: GoogleFonts.inter(
                fontSize: McGyver.textSize(context, 2.6),
                color: Color(0xff121211),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class entryForm extends StatefulWidget {
  @override
  _entryFormState createState() => _entryFormState();
}

class _entryFormState extends State<entryForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: Config.xMargin(context, 21.0),
                right: Config.xMargin(context, 21.0),
                bottom: Config.xMargin(context, 12)),
            child: Text(
              'Create account',
              style: GoogleFonts.inter(
                  fontSize: McGyver.textSize(context, 4.5),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Config.xMargin(context, 21.0),
                right: Config.xMargin(context, 21.0)),
            child: TextFormField(
                style: TextStyle(decoration: TextDecoration.none),
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/images/name.png',
                    scale: 25,
                  ),

                  contentPadding: EdgeInsets.only(
                    top: Config.yMargin(context, 15.0),
                    bottom: Config.yMargin(context, 5.0),
                  ),
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffc4c4c4),
                    width: Config.xMargin(context, 1),
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffc4c4c4),
                    width: Config.xMargin(context, 1),
                    style: BorderStyle.solid,
                  )),
                  //border: InputBorder.none
                  hintText: "Full name",
                  hintStyle: GoogleFonts.inter(
                    color: Color(0xffC4C4C4),
                    fontSize: McGyver.textSize(context, 2.5),
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
          SizedBox(
            height: Config.yMargin(context, 27.0),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Config.xMargin(context, 21.0),
                right: Config.xMargin(context, 21.0)),
            child: TextFormField(
                style: TextStyle(decoration: TextDecoration.none),
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/images/email.png',
                    scale: 25,
                  ),

                  contentPadding: EdgeInsets.only(
                    top: Config.yMargin(context, 15.0),
                    bottom: Config.yMargin(context, 5.0),
                  ),
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffc4c4c4),
                    width: Config.xMargin(context, 1),
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffc4c4c4),
                    width: Config.xMargin(context, 1),
                    style: BorderStyle.solid,
                  )),
                  //border: InputBorder.none
                  hintText: "Email",
                  hintStyle: GoogleFonts.inter(
                    color: Color(0xffC4C4C4),
                    fontSize: McGyver.textSize(context, 2.5),
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
          SizedBox(
            height: Config.yMargin(context, 27.0),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: Config.xMargin(context, 21.0),
                  right: Config.xMargin(context, 21.0)),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          'assets/images/password.png',
                          scale: 25,
                        ),

                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffc4c4c4),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.only(
                          top: Config.xMargin(context, 15.0),
                          bottom: Config.xMargin(context, 5.0),
                        ),
                        isDense: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffc4c4c4),
                          width: Config.xMargin(context, 1),
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffc4c4c4),
                          width: Config.xMargin(context, 1),
                        )),
                        //border: InputBorder.none
                        hintText: "Password",
                        hintStyle: GoogleFonts.inter(
                          color: Color(0xffc4c4c4),
                          fontSize: McGyver.textSize(context, 2.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: Config.yMargin(context, 27.0),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: Config.xMargin(context, 21.0),
                  right: Config.xMargin(context, 21.0)),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          'assets/images/password.png',
                          scale: 25,
                        ),

                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.check_circle
                                : Icons.visibility,
                            color: Color(0xff3DE33A),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.only(
                          top: Config.xMargin(context, 15.0),
                          bottom: Config.xMargin(context, 5.0),
                        ),
                        isDense: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffc4c4c4),
                          width: Config.xMargin(context, 1),
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffc4c4c4),
                          width: Config.xMargin(context, 1),
                        )),
                        //border: InputBorder.none
                        hintText: "Verify Password",
                        hintStyle: GoogleFonts.inter(
                          color: Color(0xffc4c4c4),
                          fontSize: McGyver.textSize(context, 2.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: McGyver.rsDoubleH(context, 4.0),
          ),
          _button(),
          SizedBox(
            height: McGyver.rsDoubleH(context, 4.0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteNames.login);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    style: GoogleFonts.inter(
                        color: Color(0xffc4c4c4),
                        fontSize: McGyver.textSize(context, 2.3))),
                Text(' Sign In',
                    style: GoogleFonts.inter(
                        color: Color(0xffFFBE0B),
                        fontSize: McGyver.textSize(context, 2.3))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
