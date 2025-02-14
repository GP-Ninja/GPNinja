import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flowchart_embed_model.dart';
export 'flowchart_embed_model.dart';

class FlowchartEmbedWidget extends StatefulWidget {
  const FlowchartEmbedWidget({super.key});

  @override
  State<FlowchartEmbedWidget> createState() => _FlowchartEmbedWidgetState();
}

class _FlowchartEmbedWidgetState extends State<FlowchartEmbedWidget> {
  late FlowchartEmbedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlowchartEmbedModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'flowchart_embed'});
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
        title: 'flowchart_embed',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    automaticallyImplyLeading: false,
                    title: Text(
                      'Page Title',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowWebView(
                    content:
                        '<div style=\"width: 300px; height: 480px; margin: 10px; position: relative;\"><iframe allowfullscreen frameborder=\"0\" style=\"width:300px; height:480px\" src=\"https://lucid.app/documents/embedded/6b424380-c35a-4f64-9d0d-730eab24386b\" id=\"lgALyY_rTCQu\"></iframe></div>',
                    width: 400.0,
                    height: 495.0,
                    verticalScroll: false,
                    horizontalScroll: false,
                    html: true,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
