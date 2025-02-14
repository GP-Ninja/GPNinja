import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'jobs_model.dart';
export 'jobs_model.dart';

class JobsWidget extends StatefulWidget {
  const JobsWidget({super.key});

  @override
  State<JobsWidget> createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
  late JobsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'jobs'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'jobs',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.horizontalNavbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HorizontalNavbarWidget(
                      homeColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      consultColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      clickNoteColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      reflectColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      profileColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      subscriptionColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      learnColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      newsColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      jobsColour: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
                    child: Icon(
                      Icons.build_circle_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 94.0,
                    ),
                  ),
                  Text(
                    'Under development',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
