import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/reflect/bottom_sheet_subscribe_reflect/bottom_sheet_subscribe_reflect_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'reflect_acp_model.dart';
export 'reflect_acp_model.dart';

class ReflectAcpWidget extends StatefulWidget {
  const ReflectAcpWidget({
    super.key,
    this.reflectionreference,
  });

  final DocumentReference? reflectionreference;

  @override
  State<ReflectAcpWidget> createState() => _ReflectAcpWidgetState();
}

class _ReflectAcpWidgetState extends State<ReflectAcpWidget>
    with TickerProviderStateMixin {
  late ReflectAcpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReflectAcpModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'reflect_acp'});
    _model.clinicalCaseTextController ??=
        TextEditingController(text: FFAppState().ClinicalCase);
    _model.clinicalCaseFocusNode ??= FocusNode();

    _model.clinicalPracticeTextController ??=
        TextEditingController(text: FFAppState().Capability1Output);
    _model.clinicalPracticeFocusNode ??= FocusNode();

    _model.leadershipAndManagementTextController ??=
        TextEditingController(text: FFAppState().Capability2Output);
    _model.leadershipAndManagementFocusNode ??= FocusNode();

    _model.educationTextController ??=
        TextEditingController(text: FFAppState().Capability3Output);
    _model.educationFocusNode ??= FocusNode();

    _model.researchTextController ??=
        TextEditingController(text: FFAppState().Capability3Output);
    _model.researchFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 80.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 80.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 240.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 280.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 280.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        title: 'ReflectACP',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            endDrawer: Drawer(
              elevation: 16.0,
              child: WebViewAware(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Text(
                          'Your Reflect outputs',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleLargeFamily),
                              ),
                        ),
                      ),
                      StreamBuilder<List<ReflectionACPRecord>>(
                        stream: queryReflectionACPRecord(
                          queryBuilder: (reflectionACPRecord) =>
                              reflectionACPRecord
                                  .where(
                                    'user_ref',
                                    isEqualTo: currentUserReference,
                                  )
                                  .orderBy('timestamp', descending: true),
                        ),
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
                          List<ReflectionACPRecord>
                              columnReflectionACPRecordList = snapshot.data!;

                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnReflectionACPRecordList.length,
                                  (columnIndex) {
                                final columnReflectionACPRecord =
                                    columnReflectionACPRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'REFLECT_ACP_PAGE_card_8_ON_TAP');
                                      logFirebaseEvent(
                                          'card_8_update_page_state');
                                      _model.reflectionRef =
                                          columnReflectionACPRecord.reference;
                                      safeSetState(() {});
                                      logFirebaseEvent('card_8_set_form_field');
                                      safeSetState(() {
                                        _model.clinicalCaseTextController
                                                ?.text =
                                            columnReflectionACPRecord
                                                .clinicalCase;
                                      });
                                      logFirebaseEvent('card_8_set_form_field');
                                      safeSetState(() {
                                        _model.leadershipAndManagementTextController
                                                ?.text =
                                            columnReflectionACPRecord
                                                .clinicalPractice;
                                      });
                                      logFirebaseEvent('card_8_set_form_field');
                                      safeSetState(() {
                                        _model.clinicalPracticeTextController
                                                ?.text =
                                            columnReflectionACPRecord
                                                .leadershipAndManagement;
                                      });
                                      logFirebaseEvent('card_8_set_form_field');
                                      safeSetState(() {
                                        _model.educationTextController?.text =
                                            columnReflectionACPRecord.education;
                                      });
                                      logFirebaseEvent('card_8_set_form_field');
                                      safeSetState(() {
                                        _model.researchTextController?.text =
                                            columnReflectionACPRecord.research;
                                      });
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 7.0,
                                            color: Color(0x2F1D2429),
                                            offset: Offset(
                                              0.0,
                                              3.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  dateTimeFormat(
                                                      "MMMEd",
                                                      columnReflectionACPRecord
                                                          .timestamp!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            Color(0xFF39D2C0),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                                AlignedTooltip(
                                                  content: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Delete',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  offset: 4.0,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4.0,
                                                  tailBaseWidth: 0.0,
                                                  tailLength: 0.0,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration:
                                                      Duration(milliseconds: 0),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'REFLECT_ACP_PAGE_Icon_s0pxhdaj_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Icon_backend_call');
                                                      await columnReflectionACPRecord
                                                          .reference
                                                          .delete();
                                                      logFirebaseEvent(
                                                          'Icon_clear_text_fields_pin_codes');
                                                      safeSetState(() {
                                                        _model
                                                            .clinicalCaseTextController
                                                            ?.clear();
                                                        _model
                                                            .clinicalPracticeTextController
                                                            ?.clear();
                                                        _model
                                                            .leadershipAndManagementTextController
                                                            ?.clear();
                                                        _model
                                                            .educationTextController
                                                            ?.clear();
                                                        _model
                                                            .researchTextController
                                                            ?.clear();
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              height: 16.0,
                                              thickness: 2.0,
                                              color: Color(0xFFF1F4F8),
                                            ),
                                            Container(
                                              height: 64.0,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  columnReflectionACPRecord
                                                      .clinicalCase,
                                                  maxLines: 3,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            Color(0xFF57636C),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: StreamBuilder<List<UserCountsRecord>>(
              stream: queryUserCountsRecord(
                parent: currentUserReference,
                singleRecord: true,
              ),
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
                List<UserCountsRecord> columnUserCountsRecordList =
                    snapshot.data!;
                final columnUserCountsRecord =
                    columnUserCountsRecordList.isNotEmpty
                        ? columnUserCountsRecordList.first
                        : null;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        wrapWithModel(
                          model: _model.horizontalNavbarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HorizontalNavbarWidget(
                            homeColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            consultColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            clickNoteColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            reflectColour: FlutterFlowTheme.of(context).primary,
                            profileColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            subscriptionColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            learnColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            newsColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            jobsColour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'REFLECT_ACP_PAGE_MY_CASES_BTN_ON_TAP');
                                      logFirebaseEvent('Button_drawer');
                                      scaffoldKey.currentState!.openEndDrawer();
                                    },
                                    text: 'My Cases',
                                    icon: Icon(
                                      Icons.collections_bookmark,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 110.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      hoverTextColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'REFLECT_ACP_PAGE_ButtonCCR_ON_TAP');
                                        logFirebaseEvent(
                                            'ButtonCCR_reset_form_fields');
                                        safeSetState(() {
                                          _model.clinicalCaseTextController
                                                  ?.text =
                                              FFAppState().ClinicalCase;

                                          _model.clinicalPracticeTextController
                                                  ?.text =
                                              FFAppState().Capability1Output;

                                          _model.leadershipAndManagementTextController
                                                  ?.text =
                                              FFAppState().Capability2Output;

                                          _model.educationTextController?.text =
                                              FFAppState().Capability3Output;

                                          _model.researchTextController?.text =
                                              FFAppState().Capability3Output;
                                        });
                                        logFirebaseEvent(
                                            'ButtonCCR_update_page_state');
                                        _model.reflectionRef = null;
                                        safeSetState(() {});
                                      },
                                      text: 'Clear page',
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 26.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              fontSize: 14.0,
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
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 497.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 295.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    '1. Enter an anonymous case summary',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'REFLECT_ACP_PAGE_EXAMPLE_BTN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Button_update_app_state');
                                                    FFAppState().ClinicalCase =
                                                        'A 3 year old boy presented with fever and wheeze. Noted to hove widespread wheeze on examination with a mildly increased respiratory rate and normal oxygen sats. Treated with salbutamol which improved the wheeze, and he was discharged home with salbutamol and a wheeze plan.';
                                                    safeSetState(() {});
                                                    logFirebaseEvent(
                                                        'Button_set_form_field');
                                                    safeSetState(() {
                                                      _model.clinicalCaseTextController
                                                              ?.text =
                                                          FFAppState()
                                                              .ClinicalCase;
                                                    });
                                                  },
                                                  text: 'Example',
                                                  options: FFButtonOptions(
                                                    height: 27.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .grayIcon,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          fontSize: 14.0,
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
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Stack(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .clinicalCaseTextController,
                                                    focusNode: _model
                                                        .clinicalCaseFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.clinicalCaseTextController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () async {
                                                        logFirebaseEvent(
                                                            'REFLECT_ACP_ClinicalCase_ON_TEXTFIELD_CH');
                                                        logFirebaseEvent(
                                                            'ClinicalCase_update_app_state');
                                                        FFAppState()
                                                                .ClinicalCase =
                                                            _model
                                                                .clinicalCaseTextController
                                                                .text;
                                                      },
                                                    ),
                                                    onFieldSubmitted:
                                                        (_) async {
                                                      logFirebaseEvent(
                                                          'REFLECT_ACP_ClinicalCase_ON_TEXTFIELD_SU');
                                                      logFirebaseEvent(
                                                          'ClinicalCase_update_page_state');
                                                      _model.clinicalCase = functions
                                                          .replaceTabWithSpace(
                                                              _model
                                                                  .clinicalCaseTextController
                                                                  .text);
                                                      safeSetState(() {});
                                                    },
                                                    autofocus: true,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: _model
                                                                        .mouseRegionCaseHovered
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      suffixIcon: _model
                                                              .clinicalCaseTextController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .clinicalCaseTextController
                                                                    ?.clear();
                                                                logFirebaseEvent(
                                                                    'REFLECT_ACP_ClinicalCase_ON_TEXTFIELD_CH');
                                                                logFirebaseEvent(
                                                                    'ClinicalCase_update_app_state');
                                                                FFAppState()
                                                                        .ClinicalCase =
                                                                    _model
                                                                        .clinicalCaseTextController
                                                                        .text;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                size: 20.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
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
                                                    maxLines: 4,
                                                    validator: _model
                                                        .clinicalCaseTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '${_model.clinicalCaseTextController.text == '' ? '0' : valueOrDefault<String>(
                                                          functions
                                                              .countWords(_model
                                                                  .clinicalCaseTextController
                                                                  .text)
                                                              .toString(),
                                                          '0',
                                                        )}/400',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: functions.wordsLessThan(_model
                                                                            .clinicalCaseTextController
                                                                            .text) ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation1']!),
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionCaseHovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionCaseHovered = false);
                                  }),
                                ),
                                if (widget.reflectionreference == null)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 231.59,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    '2. Press go!',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                20.0,
                                                                10.0,
                                                                10.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'REFLECT_ACP_PAGE_GO_BTN_ON_TAP');
                                                        var _shouldSetState =
                                                            false;
                                                        if ((valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.activeMembership,
                                                                    false) ==
                                                                true) ||
                                                            ((valueOrDefault(
                                                                            currentUserDocument
                                                                                ?.stripeSubscriptionStatus,
                                                                            '') !=
                                                                        '') &&
                                                                ((valueOrDefault(
                                                                            currentUserDocument
                                                                                ?.stripeSubscriptionStatus,
                                                                            '') ==
                                                                        'active') ||
                                                                    (valueOrDefault(
                                                                            currentUserDocument?.stripeSubscriptionStatus,
                                                                            '') ==
                                                                        'trialing')))) {
                                                          if (functions.wordsLessThan(
                                                                  _model
                                                                      .clinicalCaseTextController
                                                                      .text) ==
                                                              true) {
                                                            logFirebaseEvent(
                                                                'Button_wait__delay');
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        1000));
                                                            logFirebaseEvent(
                                                                'Button_clear_text_fields_pin_codes');
                                                            safeSetState(() {
                                                              _model
                                                                  .clinicalPracticeTextController
                                                                  ?.clear();
                                                              _model
                                                                  .leadershipAndManagementTextController
                                                                  ?.clear();
                                                              _model
                                                                  .researchTextController
                                                                  ?.clear();
                                                              _model
                                                                  .educationTextController
                                                                  ?.clear();
                                                            });
                                                            logFirebaseEvent(
                                                                'Button_update_page_state');
                                                            _model.loadingIcon =
                                                                true;
                                                            safeSetState(() {});
                                                            logFirebaseEvent(
                                                                'Button_update_app_state');
                                                            FFAppState().ACP1 =
                                                                functions
                                                                    .replaceTabWithSpace(
                                                                        '${_model.introPrompt}${_model.clinicalCaseTextController.text}${_model.clinicalPractice}${_model.closingPrompt}')!;
                                                            FFAppState().ACP2 =
                                                                functions
                                                                    .replaceTabWithSpace(
                                                                        '${_model.introPrompt}${_model.clinicalCaseTextController.text}${_model.leadershipAndManagement}${_model.closingPrompt}')!;
                                                            FFAppState().ACP3 =
                                                                functions
                                                                    .replaceTabWithSpace(
                                                                        '${_model.introPrompt}${_model.clinicalCaseTextController.text}${_model.education}${_model.closingPrompt}')!;
                                                            FFAppState().ACP4 =
                                                                functions
                                                                    .replaceTabWithSpace(
                                                                        '${_model.introPrompt}${_model.clinicalCaseTextController.text}${_model.research}${_model.closingPrompt}')!;
                                                            safeSetState(() {});
                                                            if (FFAppState()
                                                                        .ClinicalCase !=
                                                                    '') {
                                                              await Future
                                                                  .wait([
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.clinicalPracticeAPI =
                                                                      await CallOpenAICall
                                                                          .call(
                                                                    prompt:
                                                                        FFAppState()
                                                                            .ACP1,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .clinicalPracticeAPI
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Button_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.clinicalPracticeTextController
                                                                              ?.text =
                                                                          CallOpenAICall
                                                                              .output(
                                                                        (_model.clinicalPracticeAPI?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.clinicalPracticeAPIRetry =
                                                                        await CallOpenAICall
                                                                            .call(
                                                                      prompt: FFAppState()
                                                                          .ACP1,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .clinicalPracticeAPIRetry
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .clinicalPracticeTextController
                                                                            ?.text = CallOpenAICall.output(
                                                                          (_model.clinicalPracticeAPIRetry?.jsonBody ??
                                                                              ''),
                                                                        )!;
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .clinicalPracticeTextController
                                                                            ?.text = 'Error';
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Something went wrong. Please email support@gpninja.co.uk if your issue does not resolve.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.leadershipAndManagementAPI =
                                                                      await CallOpenAICall
                                                                          .call(
                                                                    prompt:
                                                                        FFAppState()
                                                                            .ACP2,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .leadershipAndManagementAPI
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Button_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.leadershipAndManagementTextController
                                                                              ?.text =
                                                                          CallOpenAICall
                                                                              .output(
                                                                        (_model.leadershipAndManagementAPI?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.leadershipAndManagementAPIRetry =
                                                                        await CallOpenAICall
                                                                            .call(
                                                                      prompt: FFAppState()
                                                                          .ACP2,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .leadershipAndManagementAPIRetry
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .leadershipAndManagementTextController
                                                                            ?.text = CallOpenAICall.output(
                                                                          (_model.leadershipAndManagementAPIRetry?.jsonBody ??
                                                                              ''),
                                                                        )!;
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .leadershipAndManagementTextController
                                                                            ?.text = 'Error';
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Something went wrong. Please email support@gpninja.co.uk if your issue does not resolve.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.educationAPI =
                                                                      await CallOpenAICall
                                                                          .call(
                                                                    prompt:
                                                                        FFAppState()
                                                                            .ACP3,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .educationAPI
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Button_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.educationTextController
                                                                              ?.text =
                                                                          CallOpenAICall
                                                                              .output(
                                                                        (_model.educationAPI?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.educationAPIRetry =
                                                                        await CallOpenAICall
                                                                            .call(
                                                                      prompt: FFAppState()
                                                                          .ACP3,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .educationAPIRetry
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .educationTextController
                                                                            ?.text = CallOpenAICall.output(
                                                                          (_model.educationAPIRetry?.jsonBody ??
                                                                              ''),
                                                                        )!;
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .educationTextController
                                                                            ?.text = 'Error';
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Something went wrong. Please email support@gpninja.co.uk if your issue does not resolve.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.researchAPI =
                                                                      await CallOpenAICall
                                                                          .call(
                                                                    prompt:
                                                                        FFAppState()
                                                                            .ACP4,
                                                                  );

                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .educationAPI
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Button_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.researchTextController
                                                                              ?.text =
                                                                          CallOpenAICall
                                                                              .output(
                                                                        (_model.researchAPI?.jsonBody ??
                                                                            ''),
                                                                      )!;
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');
                                                                    _model.researchAPIRetry =
                                                                        await CallOpenAICall
                                                                            .call(
                                                                      prompt: FFAppState()
                                                                          .ACP4,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .researchAPIRetry
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .researchTextController
                                                                            ?.text = CallOpenAICall.output(
                                                                          (_model.researchAPIRetry?.jsonBody ??
                                                                              ''),
                                                                        )!;
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .researchTextController
                                                                            ?.text = 'Error';
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Something went wrong. Please email support@gpninja.co.uk if your issue does not resolve.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }
                                                                }),
                                                              ]);
                                                              while ((_model
                                                                              .clinicalPracticeTextController.text ==
                                                                          '') ||
                                                                  (_model
                                                                              .leadershipAndManagementTextController
                                                                              .text ==
                                                                          '') ||
                                                                  (_model.educationTextController
                                                                              .text ==
                                                                          '') ||
                                                                  (_model.researchTextController
                                                                              .text ==
                                                                          '')) {
                                                                logFirebaseEvent(
                                                                    'Button_wait__delay');
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            10));
                                                              }
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              var reflectionACPRecordReference =
                                                                  ReflectionACPRecord
                                                                      .collection
                                                                      .doc();
                                                              await reflectionACPRecordReference
                                                                  .set(
                                                                      createReflectionACPRecordData(
                                                                userRef:
                                                                    currentUserReference,
                                                                timestamp:
                                                                    getCurrentTimestamp,
                                                                clinicalCase: _model
                                                                    .clinicalCaseTextController
                                                                    .text,
                                                                clinicalPractice:
                                                                    _model
                                                                        .clinicalPracticeTextController
                                                                        .text,
                                                                leadershipAndManagement:
                                                                    _model
                                                                        .leadershipAndManagementTextController
                                                                        .text,
                                                                education: _model
                                                                    .educationTextController
                                                                    .text,
                                                                research: _model
                                                                    .researchTextController
                                                                    .text,
                                                              ));
                                                              _model.newReflection =
                                                                  ReflectionACPRecord
                                                                      .getDocumentFromData(
                                                                          createReflectionACPRecordData(
                                                                            userRef:
                                                                                currentUserReference,
                                                                            timestamp:
                                                                                getCurrentTimestamp,
                                                                            clinicalCase:
                                                                                _model.clinicalCaseTextController.text,
                                                                            clinicalPractice:
                                                                                _model.clinicalPracticeTextController.text,
                                                                            leadershipAndManagement:
                                                                                _model.leadershipAndManagementTextController.text,
                                                                            education:
                                                                                _model.educationTextController.text,
                                                                            research:
                                                                                _model.researchTextController.text,
                                                                          ),
                                                                          reflectionACPRecordReference);
                                                              _shouldSetState =
                                                                  true;
                                                              logFirebaseEvent(
                                                                  'Button_update_page_state');
                                                              _model.reflectionRef =
                                                                  _model
                                                                      .newReflection
                                                                      ?.reference;
                                                              safeSetState(
                                                                  () {});
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_show_snack_bar');
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Please complete step 1.',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                            }
                                                          } else {
                                                            logFirebaseEvent(
                                                                'Button_show_snack_bar');
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Clinical case too long! Enter a case with up to 400 words',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                              ),
                                                            );
                                                          }
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Button_bottom_sheet');
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        BottomSheetSubscribeReflectWidget(),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        }

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                      },
                                                      text: 'Go',
                                                      options: FFButtonOptions(
                                                        width: 80.0,
                                                        height: 76.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(),
                                            child: Text(
                                              'Our reflect tool will choose 5 capabilities within each pillar that best match your case. ',
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
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation2']!),
                                  ),
                                if (_model.reflectionRef != null)
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent3,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              '3. Save any edits you make',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 10.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'REFLECT_ACP_PAGE_SAVE_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model.reflectionRef!
                                                      .update(
                                                          createReflectionACPRecordData(
                                                    timestamp:
                                                        getCurrentTimestamp,
                                                    clinicalCase: _model
                                                        .clinicalCaseTextController
                                                        .text,
                                                    clinicalPractice: _model
                                                        .clinicalPracticeTextController
                                                        .text,
                                                    leadershipAndManagement: _model
                                                        .leadershipAndManagementTextController
                                                        .text,
                                                    education: _model
                                                        .educationTextController
                                                        .text,
                                                    research: _model
                                                        .researchTextController
                                                        .text,
                                                  ));
                                                },
                                                text: 'Save',
                                                options: FFButtonOptions(
                                                  width: 80.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation3']!),
                                  ),
                                if (widget.reflectionreference != null)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 10.0, 10.0, 10.0),
                                    child: Container(
                                      width: 255.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Visibility(
                                        visible:
                                            widget.reflectionreference != null,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'REFLECT_ACP_DELETE_FROM_MY_CASES_BTN_ON_');
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    await widget
                                                        .reflectionreference!
                                                        .delete();
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context
                                                        .pushNamed('my_cases');
                                                  },
                                                  text: 'Delete from My cases',
                                                  options: FFButtonOptions(
                                                    width: 200.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
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
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 283.0,
                                            height: 78.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              'This is version 1 of our Reflect tool that is tailored to the ACP Multi-professional Framework. Please let us know your thoughts in the chat (bottom-right of your screen).',
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'REFLECT_ACP_LINK_TO_FRAMEWORK_BTN_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_launch_u_r_l');
                                                await launchURL(
                                                    'https://www.hee.nhs.uk/sites/default/files/documents/multi-professionalframeworkforadvancedclinicalpracticeinengland.pdf');
                                              },
                                              text: 'Link to framework',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Text(
                                          'Clinical Practice',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.asset(
                                              'assets/images/Screenshot_2024-10-12_at_14.14.40.png',
                                            ).image,
                                          ),
                                        ),
                                        child: Container(
                                          width: 300.0,
                                          height: 500.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xC0FFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .clinicalPracticeTextController,
                                                      focusNode: _model
                                                          .clinicalPracticeFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Our reflect tool will choose 5 capabilities within this pillar that best match your case. See the link above for the full list of capabilities.',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
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
                                                      maxLines: null,
                                                      validator: _model
                                                          .clinicalPracticeTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation4']!),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability1Hovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability1Hovered = false);
                                  }),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Text(
                                          'Leadership and Management',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.asset(
                                              'assets/images/Screenshot_2024-10-12_at_14.14.40.png',
                                            ).image,
                                          ),
                                        ),
                                        child: Container(
                                          width: 300.0,
                                          height: 500.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xBEFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  TextFormField(
                                                    controller: _model
                                                        .leadershipAndManagementTextController,
                                                    focusNode: _model
                                                        .leadershipAndManagementFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          'Our reflect tool will choose 5 capabilities within this pillar that best match your case. See the link above for the full list of capabilities.',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
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
                                                    maxLines: null,
                                                    validator: _model
                                                        .leadershipAndManagementTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation5']!),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability2Hovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability2Hovered = false);
                                  }),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Text(
                                          'Education',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.asset(
                                              'assets/images/Screenshot_2024-10-12_at_14.14.40.png',
                                            ).image,
                                          ),
                                        ),
                                        child: Container(
                                          width: 300.0,
                                          height: 500.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xBFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  TextFormField(
                                                    controller: _model
                                                        .educationTextController,
                                                    focusNode: _model
                                                        .educationFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          'Our reflect tool will choose 5 capabilities within this pillar that best match your case. See the link above for the full list of capabilities.',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
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
                                                    maxLines: null,
                                                    validator: _model
                                                        .educationTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation6']!),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability3Hovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability3Hovered = false);
                                  }),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Text(
                                          'Research',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily),
                                              ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.asset(
                                              'assets/images/Screenshot_2024-10-12_at_14.14.40.png',
                                            ).image,
                                          ),
                                        ),
                                        child: Container(
                                          width: 300.0,
                                          height: 500.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xBFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  TextFormField(
                                                    controller: _model
                                                        .researchTextController,
                                                    focusNode: _model
                                                        .researchFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
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
                                                    maxLines: null,
                                                    validator: _model
                                                        .researchTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation7']!),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability4Hovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() => _model
                                        .mouseRegionCapability4Hovered = false);
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
