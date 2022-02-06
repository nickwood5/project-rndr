import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/flutter_flow_widgets.dart';
import 'testt/testt_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'test.dart';
import 'dart:convert';

int i;
Future<String> getData() async {
  final response =
      await http.get(Uri.parse('http://nickwood5.pythonanywhere.com'));

  var responseData = json.decode(response.body);
  print(responseData);

  return responseData[0]['img_link'];
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF021D36),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.05, -0.35),
                child: FFButtonWidget(
                  onPressed: () async {
                    
                    for (i = 0; i < 10; i++) {
                      print(i);
                    }
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TesttWidget(),
                      ),
                    );
                  },
                  text: 'Drinks',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF062A4F),
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 3,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.05),
                child: FFButtonWidget(
                  onPressed: () async {
                    for (i = 0; i < 10; i++) {
                      print(i);
                    }
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TesttWidget(),
                      ),
                    );
                  },
                  text: 'Food',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF062A4F),
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 3,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0.25),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TesttWidget(),
                      ),
                    );
                  },
                  text: 'Dessert',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.title1.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF062A4F),
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 3,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Text(
                  'RNDR',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
