import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationWidget extends StatefulWidget {
  const ConfirmationWidget({Key key}) : super(key: key);

  @override
  _ConfirmationWidgetState createState() => _ConfirmationWidgetState();
}

class _ConfirmationWidgetState extends State<ConfirmationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.04, -0.8),
                child: Container(
                  width: 330,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://cdn.discordapp.com/attachments/930235747036958760/939618577739284540/Peppermint-Matcha-Latte.jpeg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        stops: [0.8, 1],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.94, 0.89),
                          child: Text(
                            '\$5.50    |    5/5',
                            style: FlutterFlowTheme.title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.95, 0.74),
                          child: Text(
                            '@ Matcha Cha Cha',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.95, 0.6),
                          child: Text(
                            'Matcha Latte',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, 1),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Back',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF021D36),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFF021D36),
                      width: 1,
                    ),
                    borderRadius: 26,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.4),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL('https://www.google.com/maps');
                  },
                  text: '85 Queen Street West',
                  options: FFButtonOptions(
                    width: 350,
                    height: 90,
                    color: Color(0xFF021D36),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w100,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 26,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.75),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'View Full Menu',
                  options: FFButtonOptions(
                    width: 350,
                    height: 90,
                    color: Color(0xFF021D36),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w100,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 26,
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
