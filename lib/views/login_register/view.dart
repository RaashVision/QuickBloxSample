import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbloxSample/views/core/theme.dart';
import 'package:quickbloxSample/widgets/image_viewer/normal_viewer.dart';
import 'package:quickbloxSample/widgets/text_input/primary_textfield.dart';

class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  PageController controller = new PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ScrollConfiguration(
        behavior: new ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                //  color: Colors.red,
                child: Stack(
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: Get.height / 1.6,
                          decoration: new BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.elliptical(
                                    MediaQuery.of(context).size.width, 100.0)),
                          ),
                        )
                        //child: _logo()),
                      ],
                    ),
                    _overlay()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ));
  }

  Widget _logo() => Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: NormalViewer(
              imgName: "qb_logo.png",
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Positioned(
            bottom: 8,
            right: 50,
            left: 50,
            child: Text(
              'QuickBlox Flutter Sample',
              style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      );

  Widget _loginCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            //height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Login Account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 15,
                ),
                PrimaryTextFormField(
                  placeholderText: " Email",
                  placeholderStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                PrimaryTextFormField(
                    placeholderText: "Password",
                    placeholderStyle: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: primaryColor,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text('In case you forget password',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: primaryColor,
                    )),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  color: primaryColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Divider(color: Colors.grey.withOpacity(0.3)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                width: 3,
                                color: Colors.transparent,
                                style: BorderStyle.solid)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("OR"),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 25,
                  child: NormalViewer(
                    imgName: "fb_logo.png",
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget _registerCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            //height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Register Account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                PrimaryTextFormField(
                  placeholderText: " Email",
                  placeholderStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                PrimaryTextFormField(
                  placeholderText: "Name",
                  placeholderStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                  keyboardType: TextInputType.name,
                ),
                PrimaryTextFormField(
                  placeholderText: "Password",
                  placeholderStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  color: primaryColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      'CREATE',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );

  Widget _dontHv() => Column(
        children: [
          Text(
            "Dont't have an account?",
            style: GoogleFonts.montserrat(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              controller.animateToPage(
                  currentIndex == 0 ? 1 : currentIndex == 1 ? 0 : 1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
            child: Text(
              currentIndex == 0 ? "REGISTER" : "LOGIN",
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: primaryColor,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      );

  Widget _loginOrRegister() => ScrollConfiguration(
        behavior: new ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: Container(
          //width: 300,
          height: Get.height / 1.80,
          child: PageView(
            onPageChanged: (val) {
              currentIndex = val;
              setState(() {});
            },
            //physics: NeverScrollableScrollPhysics(),
            controller: controller,
            children: [_loginCard(), _registerCard()],
          ),
        ),
      );

  Widget _overlay() => Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            _logo(),
            SizedBox(
              height: 20,
            ),
            _loginOrRegister(),
            //_loginCard(),
            SizedBox(
              height: 20,
            ),
            _dontHv()
          ],
        ),
      );
}
