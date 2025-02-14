import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_sheet_subscribe_reflect_model.dart';
export 'bottom_sheet_subscribe_reflect_model.dart';

class BottomSheetSubscribeReflectWidget extends StatefulWidget {
  const BottomSheetSubscribeReflectWidget({super.key});

  @override
  State<BottomSheetSubscribeReflectWidget> createState() =>
      _BottomSheetSubscribeReflectWidgetState();
}

class _BottomSheetSubscribeReflectWidgetState
    extends State<BottomSheetSubscribeReflectWidget> {
  late BottomSheetSubscribeReflectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetSubscribeReflectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: MediaQuery.sizeOf(context).height * 0.538,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sign-up for a free trial to use Reflect!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).displayMediumFamily,
                      fontSize: 40.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).displayMediumFamily),
                    ),
              ),
              Padding(
                padding: EdgeInsets.all(50.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'BOTTOM_SHEET_SUBSCRIBE_REFLECT_GO_TO_SUB');
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed('subscription_page');
                  },
                  text: 'Go to subscription page',
                  options: FFButtonOptions(
                    height: 69.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Text(
                'Tap the button above to navigate to the subscription page, and sign-up to your 14-day free trial.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).displayMediumFamily,
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).displayMediumFamily),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
