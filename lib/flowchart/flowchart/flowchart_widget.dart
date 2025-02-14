import '/backend/backend.dart';
import '/flowchart/flowchart_note_text/flowchart_note_text_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'flowchart_model.dart';
export 'flowchart_model.dart';

class FlowchartWidget extends StatefulWidget {
  const FlowchartWidget({
    super.key,
    required this.initialNode,
  });

  final DocumentReference? initialNode;

  @override
  State<FlowchartWidget> createState() => _FlowchartWidgetState();
}

class _FlowchartWidgetState extends State<FlowchartWidget> {
  late FlowchartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlowchartModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'flowchart'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FLOWCHART_PAGE_flowchart_ON_INIT_STATE');
      logFirebaseEvent('flowchart_update_page_state');
      _model.addToFlowchartList(widget.initialNode!);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'flowchart',
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
                    title: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('FLOWCHART_PAGE_Text_rxydxwum_ON_TAP');
                        logFirebaseEvent('Text_navigate_back');
                        context.safePop();
                      },
                      child: Text(
                        'Page Title',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .headlineMediumFamily),
                            ),
                      ),
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StreamBuilder<FlowchartNodeRecord>(
                          stream: FlowchartNodeRecord.getDocument(
                              widget.initialNode!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitPulse(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }

                            final textFlowchartNodeRecord = snapshot.data!;

                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'FLOWCHART_PAGE_Text_falrvjjk_ON_TAP');
                                logFirebaseEvent('Text_navigate_back');
                                context.safePop();
                              },
                              child: Text(
                                textFlowchartNodeRecord.title,
                                style: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .displayLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .displayLargeFamily),
                                    ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Container(
                              width: 812.0,
                              height: 984.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/Picture_1.png',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 200.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 220.0,
                                          height: 76.0,
                                          decoration: BoxDecoration(
                                            color: (_model.flowchartList
                                                            .length ==
                                                        2) &&
                                                    (_model.flowchartList
                                                            .lastOrNull?.id ==
                                                        '5OoTB6EfHOftji1puWol')
                                                ? Colors.transparent
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 516.0,
                                        height: 160.0,
                                        decoration: BoxDecoration(
                                          color: ((_model.flowchartList
                                                              .length >=
                                                          2) &&
                                                      (_model.flowchartList
                                                              .lastOrNull?.id !=
                                                          '5OoTB6EfHOftji1puWol')) ||
                                                  (_model.flowchartList
                                                          .length >=
                                                      3)
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 321.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: ((_model.flowchartList
                                                              .length >=
                                                          3) &&
                                                      (_model.flowchartList
                                                              .lastOrNull?.id ==
                                                          '1LOuXJFIVcPa2515poov')) ||
                                                  ((_model.flowchartList
                                                              .length >=
                                                          4) &&
                                                      (_model.flowchartList
                                                              .lastOrNull?.id !=
                                                          'JREef4sSB1aREZvj9uhY'))
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                      Container(
                                        width: 321.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'JREef4sSB1aREZvj9uhY') ||
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'zmNcSNhKg4C4MUPcuCxK')
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 457.0,
                                        height: 134.0,
                                        decoration: BoxDecoration(
                                          color: ((_model.flowchartList
                                                              .length >=
                                                          3) &&
                                                      (_model.flowchartList
                                                              .lastOrNull?.id ==
                                                          '1LOuXJFIVcPa2515poov')) ||
                                                  ((_model.flowchartList
                                                              .length >=
                                                          4) &&
                                                      (_model.flowchartList
                                                              .lastOrNull?.id !=
                                                          'JREef4sSB1aREZvj9uhY'))
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 321.0,
                                            height: 108.0,
                                            decoration: BoxDecoration(
                                              color: (_model.flowchartList
                                                              .lastOrNull?.id ==
                                                          'JREef4sSB1aREZvj9uhY') ||
                                                      (_model.flowchartList
                                                              .lastOrNull?.id ==
                                                          'zmNcSNhKg4C4MUPcuCxK')
                                                  ? Colors.transparent
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          Container(
                                            width: 321.0,
                                            height: 26.0,
                                            decoration: BoxDecoration(
                                              color: ((_model.flowchartList
                                                                  .length >=
                                                              3) &&
                                                          (_model
                                                                  .flowchartList
                                                                  .lastOrNull
                                                                  ?.id ==
                                                              '1LOuXJFIVcPa2515poov')) ||
                                                      ((_model.flowchartList
                                                                  .length >=
                                                              4) &&
                                                          (_model
                                                                  .flowchartList
                                                                  .lastOrNull
                                                                  ?.id !=
                                                              'JREef4sSB1aREZvj9uhY'))
                                                  ? Colors.transparent
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 232.0,
                                        height: 218.0,
                                        decoration: BoxDecoration(
                                          color: (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'YFBevQkkiFPfCmo0Pfbu') ||
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'YHTawLVYoPz1iByzIToo')
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                      Container(
                                        width: 232.0,
                                        height: 218.0,
                                        decoration: BoxDecoration(
                                          color: (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'XtBfIB2McdkaQaR32eCz') ||
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'csGjYE6kJxDz43ZkwQ7U')
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                      Container(
                                        width: 232.0,
                                        height: 218.0,
                                        decoration: BoxDecoration(
                                          color: (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'XtBfIB2McdkaQaR32eCz') ||
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      'KbAKsNTYGfJiD7tBYciR')
                                              ? Colors.transparent
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if ('1' == '2')
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Container(
                                width: 812.0,
                                height: 984.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 130.0,
                                            height: 54.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Isolated raised ALP',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 2.0,
                                            height: 54.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Recent fracture / pregnant\nwoman / growing teenager?',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              if ((_model.flowchartList
                                                          .length ==
                                                      2) &&
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      '5OoTB6EfHOftji1puWol'))
                                                Container(
                                                  width: 90.0,
                                                  height: 2.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              if ((_model.flowchartList
                                                          .length ==
                                                      2) &&
                                                  (_model.flowchartList
                                                          .lastOrNull?.id ==
                                                      '5OoTB6EfHOftji1puWol'))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 100.0, 0.0),
                                                  child: Container(
                                                    width: 130.0,
                                                    height: 54.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Primary care management',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length <=
                                                  2) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'FXuYKFJkftBfG1kFHLjA'))
                                            Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  2) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'FXuYKFJkftBfG1kFHLjA'))
                                            Container(
                                              width: 130.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Text(
                                                'Assessment &\nInvestigation\nHistory + Examination\nGamma GT',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (_model.flowchartList.length >= 3)
                                            Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  '1LOuXJFIVcPa2515poov'))
                                            Container(
                                              width: 150.0,
                                              height: 2.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'zmNcSNhKg4C4MUPcuCxK'))
                                            Container(
                                              width: 150.0,
                                              height: 2.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  '1LOuXJFIVcPa2515poov'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 148.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'zmNcSNhKg4C4MUPcuCxK'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      148.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  '1LOuXJFIVcPa2515poov'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 85.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'GGT normal\nLikely non-liver origin',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'zmNcSNhKg4C4MUPcuCxK'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      85.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'GGT raised\nLikely liver origin',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  '1LOuXJFIVcPa2515poov'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 148.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'zmNcSNhKg4C4MUPcuCxK'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      148.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  '1LOuXJFIVcPa2515poov'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 85.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Investigation\nCalcium +/- Vitamin D',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((_model.flowchartList.length >=
                                                  3) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'zmNcSNhKg4C4MUPcuCxK'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      85.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Follow raised ALT pathway',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (_model.flowchartList.length >= 4)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 300.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (_model.flowchartList.length >= 4)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 300.0, 0.0),
                                              child: Container(
                                                width: 350.0,
                                                height: 2.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  4) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'YFBevQkkiFPfCmo0Pfbu'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 172.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 172.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 300.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if ((_model.flowchartList.length >=
                                                    4) &&
                                                (_model.flowchartList.lastOrNull
                                                        ?.id ==
                                                    'YFBevQkkiFPfCmo0Pfbu'))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: 130.0,
                                                  height: 54.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Low calcium',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Normal calcium',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'High calcium',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if ((_model.flowchartList.length >=
                                                  4) &&
                                              (_model.flowchartList.lastOrNull
                                                      ?.id ==
                                                  'YFBevQkkiFPfCmo0Pfbu'))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 172.0, 0.0),
                                              child: Container(
                                                width: 2.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 172.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 300.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 54.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '?Vit D deficiency. See below for other possible non-hepatic causes',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '?Vit D deficiency. Consider DRE and PSA\ntesting in males. See below for other non-\nhepatic causes',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 8.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 54.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '?PHPT (measure PTH)\n?Bone mets Consider DRE & PSA testing\nin males See below for other possible\nnon-hepatic causes',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 8.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 485.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final nodeList =
                                          _model.flowchartList.toList();

                                      return Container(
                                        width: double.infinity,
                                        height: 500.0,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 40.0),
                                              child: PageView.builder(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .pageViewController ??=
                                                    PageController(
                                                        initialPage: max(
                                                            0,
                                                            min(
                                                                0,
                                                                nodeList.length -
                                                                    1))),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: nodeList.length,
                                                itemBuilder:
                                                    (context, nodeListIndex) {
                                                  final nodeListItem =
                                                      nodeList[nodeListIndex];
                                                  return Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    20.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            FlowchartNodeRecord>(
                                                          stream: FlowchartNodeRecord
                                                              .getDocument(
                                                                  nodeListItem),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      SpinKitPulse(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 50.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final columnFlowchartNodeRecord =
                                                                snapshot.data!;

                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    columnFlowchartNodeRecord
                                                                        .text,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                                if (columnFlowchartNodeRecord
                                                                    .options
                                                                    .isNotEmpty)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            40.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final options = columnFlowchartNodeRecord
                                                                            .options
                                                                            .toList();

                                                                        return Wrap(
                                                                          spacing:
                                                                              0.0,
                                                                          runSpacing:
                                                                              0.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: List.generate(
                                                                              options.length,
                                                                              (optionsIndex) {
                                                                            final optionsItem =
                                                                                options[optionsIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsets.all(10.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('FLOWCHART_PAGE_BUTTON_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_update_page_state');
                                                                                  _model.addToFlowchartList(optionsItem.optionRef!);
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('Button_update_app_state');
                                                                                  FFAppState().addToFlowchartTextToCopyAppState(optionsItem.optionTextToCopy);
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('Button_page_view');
                                                                                  await _model.pageViewController?.nextPage(
                                                                                    duration: Duration(milliseconds: 300),
                                                                                    curve: Curves.ease,
                                                                                  );
                                                                                },
                                                                                text: optionsItem.optionText,
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (_model
                                                                    .flowchartList
                                                                    .length >
                                                                1)
                                                              FlutterFlowIconButton(
                                                                borderRadius:
                                                                    25.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    50.0,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                icon: Icon(
                                                                  Icons
                                                                      .chevron_left,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  size: 34.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'FLOWCHART_PAGE_chevron_left_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_page_view');
                                                                  await _model
                                                                      .pageViewController
                                                                      ?.previousPage(
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            300),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_app_state');
                                                                  FFAppState().removeAtIndexFromFlowchartTextToCopyAppState(functions.indexOfLastItem(
                                                                      FFAppState()
                                                                          .flowchartTextToCopyAppState
                                                                          .toList())!);
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_page_state');
                                                                  _model.removeAtIndexFromFlowchartList(
                                                                      functions.indexOfLastItemRef(_model
                                                                          .flowchartList
                                                                          .toList())!);
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 16.0),
                                                child: smooth_page_indicator
                                                    .SmoothPageIndicator(
                                                  controller: _model
                                                          .pageViewController ??=
                                                      PageController(
                                                          initialPage: max(
                                                              0,
                                                              min(
                                                                  0,
                                                                  nodeList.length -
                                                                      1))),
                                                  count: nodeList.length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) async {
                                                    await _model
                                                        .pageViewController!
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                    safeSetState(() {});
                                                  },
                                                  effect: smooth_page_indicator
                                                      .ExpandingDotsEffect(
                                                    expansionFactor: 3.0,
                                                    spacing: 8.0,
                                                    radius: 16.0,
                                                    dotWidth: 16.0,
                                                    dotHeight: 8.0,
                                                    dotColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    activeDotColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 20.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 485.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Clinical Note',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineLargeFamily),
                                              ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final toCopy = FFAppState()
                                                      .flowchartTextToCopyAppState
                                                      .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: toCopy.length,
                                                    itemBuilder:
                                                        (context, toCopyIndex) {
                                                      final toCopyItem =
                                                          toCopy[toCopyIndex];
                                                      return FlowchartNoteTextWidget(
                                                        key: Key(
                                                            'Keyzd8_${toCopyIndex}_of_${toCopy.length}'),
                                                        text: toCopyItem,
                                                        index: toCopyIndex,
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'FLOWCHART_PAGE_COPY_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_copy_to_clipboard');
                                            await Clipboard.setData(ClipboardData(
                                                text: functions
                                                    .convertListToStringNewLine(
                                                        FFAppState()
                                                            .flowchartTextToCopyAppState
                                                            .toList())!));
                                            logFirebaseEvent(
                                                'Button_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Note copied!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          },
                                          text: 'Copy',
                                          icon: Icon(
                                            Icons.content_copy,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily),
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
