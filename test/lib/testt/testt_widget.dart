import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/RNDR.dart';

class TesttWidget extends StatefulWidget {
  const TesttWidget({Key key}) : super(key: key);

  @override
  _TesttWidgetState createState() => _TesttWidgetState();
}

class _TesttWidgetState extends State<TesttWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
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
              Align(
                alignment: AlignmentDirectional(0.05, -0.4),
                child: FlutterFlowDropDown(
                  options: ['\$', '\$\$', '\$\$\$'].toList(),
                  onChanged: (val) => setState(() => dropDownValue1 = val),
                  width: 180,
                  height: 50,
                  textStyle: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Price',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.05),
                child: FlutterFlowDropDown(
                  options: ['<1 km', '<5 km', '<10 km'].toList(),
                  onChanged: (val) => setState(() => dropDownValue2 = val),
                  width: 180,
                  height: 50,
                  textStyle: FlutterFlowTheme.title1.override(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Distance',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.3),
                child: FlutterFlowDropDown(
                  options: ['Cafe', 'Smoothie', 'Mix'].toList(),
                  onChanged: (val) => setState(() => dropDownValue3 = val),
                  width: 180,
                  height: 50,
                  textStyle: FlutterFlowTheme.title1.override(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.75),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RNDRWidget(),
                      ),
                    );
                  },
                  text: 'Submit',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF021D36),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: 12,
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
