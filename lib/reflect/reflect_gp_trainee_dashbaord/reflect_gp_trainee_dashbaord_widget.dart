import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'reflect_gp_trainee_dashbaord_model.dart';
export 'reflect_gp_trainee_dashbaord_model.dart';

class ReflectGpTraineeDashbaordWidget extends StatefulWidget {
  const ReflectGpTraineeDashbaordWidget({super.key});

  @override
  State<ReflectGpTraineeDashbaordWidget> createState() =>
      _ReflectGpTraineeDashbaordWidgetState();
}

class _ReflectGpTraineeDashbaordWidgetState
    extends State<ReflectGpTraineeDashbaordWidget> {
  late ReflectGpTraineeDashbaordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReflectGpTraineeDashbaordModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'reflect_gp_trainee_dashbaord'});
    _model.addCaseTextController1 ??= TextEditingController();
    _model.addCaseFocusNode1 ??= FocusNode();

    _model.addCaseTextController2 ??= TextEditingController();
    _model.addCaseFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserCountsRecord>>(
      stream: queryUserCountsRecord(
        parent: currentUserReference,
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<UserCountsRecord> reflectGpTraineeDashbaordUserCountsRecordList =
            snapshot.data!;
        final reflectGpTraineeDashbaordUserCountsRecord =
            reflectGpTraineeDashbaordUserCountsRecordList.isNotEmpty
                ? reflectGpTraineeDashbaordUserCountsRecordList.first
                : null;

        return Title(
            title: 'Reflect Dashboard',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 0.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome to your Reflect dashboard',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineLargeFamily),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 4.0, 4.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.28,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary600,
                                                  offset: Offset(
                                                    0.0,
                                                    3.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Reflection count',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'A reminder of your overall progress so far',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .white70,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Container(
                                                            width: 70.0,
                                                            height: 25.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25.0),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child:
                                                                FlutterFlowCountController(
                                                              decrementIconBuilder:
                                                                  (enabled) =>
                                                                      FaIcon(
                                                                FontAwesomeIcons
                                                                    .minus,
                                                                color: enabled
                                                                    ? Color(
                                                                        0xDD000000)
                                                                    : Color(
                                                                        0xFFEEEEEE),
                                                                size: 10.0,
                                                              ),
                                                              incrementIconBuilder:
                                                                  (enabled) =>
                                                                      FaIcon(
                                                                FontAwesomeIcons
                                                                    .plus,
                                                                color: enabled
                                                                    ? Colors
                                                                        .blue
                                                                    : Color(
                                                                        0xFFEEEEEE),
                                                                size: 10.0,
                                                              ),
                                                              countBuilder:
                                                                  (count) =>
                                                                      Text(
                                                                count
                                                                    .toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Roboto',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              count: _model
                                                                      .reflectionCountValue1 ??=
                                                                  valueOrDefault<
                                                                      int>(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.reflectionCount,
                                                                    0),
                                                                0,
                                                              ),
                                                              updateCount:
                                                                  (count) async {
                                                                safeSetState(() =>
                                                                    _model.reflectionCountValue1 =
                                                                        count);
                                                                logFirebaseEvent(
                                                                    'REFLECT_GP_TRAINEE_DASHBAORD_ReflectionC');
                                                                logFirebaseEvent(
                                                                    'ReflectionCount_backend_call');

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  reflectionCount:
                                                                      _model
                                                                          .reflectionCountValue1,
                                                                ));
                                                              },
                                                              stepSize: 1,
                                                              minimum: 0,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              LinearPercentIndicator(
                                                            percent: () {
                                                              if (valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.reflectionCount,
                                                                      0) >=
                                                                  36) {
                                                                return 1.0;
                                                              } else if (valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.reflectionCount,
                                                                      0) ==
                                                                  0) {
                                                                return 0.0;
                                                              } else {
                                                                return valueOrDefault<
                                                                    double>(
                                                                  functions.divideby36(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.reflectionCount,
                                                                          0)),
                                                                  0.0,
                                                                );
                                                              }
                                                            }(),
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.18,
                                                            lineHeight: 16.0,
                                                            animation: true,
                                                            animateFromLastPercent:
                                                                true,
                                                            progressColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .white70,
                                                            barRadius:
                                                                Radius.circular(
                                                                    50.0),
                                                            padding:
                                                                EdgeInsets.zero,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.28,
                                            height: 235.9,
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.38,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 16.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Curriculum: Capability summary',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'An overview of your current curriculum coverage',
                                                      style:
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
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child:
                                                                      CircularPercentIndicator(
                                                                    percent: functions.cegprogress(
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord!.fitnesstopractice >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding,
                                                                          0,
                                                                        ),
                                                                        valueOrDefault<int>(
                                                                          reflectGpTraineeDashbaordUserCountsRecord.communityorientation >= 3
                                                                              ? 3
                                                                              : reflectGpTraineeDashbaordUserCountsRecord.communityorientation,
                                                                          0,
                                                                        ))!,
                                                                    radius:
                                                                        45.0,
                                                                    lineWidth:
                                                                        12.0,
                                                                    animation:
                                                                        true,
                                                                    animateFromLastPercent:
                                                                        true,
                                                                    progressColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    center:
                                                                        Text(
                                                                      formatNumber(
                                                                        functions.cegprogress(
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding,
                                                                              0,
                                                                            ),
                                                                            valueOrDefault<int>(
                                                                              reflectGpTraineeDashbaordUserCountsRecord.communityorientation >= 3 ? 3 : reflectGpTraineeDashbaordUserCountsRecord.communityorientation,
                                                                              0,
                                                                            )),
                                                                        formatType:
                                                                            FormatType.percent,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey('Outfit'),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Capabilities % complete',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28,
                                              height: 240.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
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
                                                    BorderRadius.circular(16.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Save a case for later',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.246,
                                                            height: 32.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Type your case summary here and save to come back to it later',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .white70,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodySmallFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child:
                                                                    Container(
                                                                  width: 253.0,
                                                                  height: 130.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        TextFormField(
                                                                          controller:
                                                                              _model.addCaseTextController1,
                                                                          focusNode:
                                                                              _model.addCaseFocusNode1,
                                                                          autofocus:
                                                                              true,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                'Start typing...',
                                                                            hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                ),
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            contentPadding:
                                                                                EdgeInsets.all(10.0),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                          maxLines:
                                                                              null,
                                                                          validator: _model
                                                                              .addCaseTextController1Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'REFLECT_GP_TRAINEE_DASHBAORD_SAVE_BTN_ON');
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');

                                                                  await CasesRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set(
                                                                          createCasesRecordData(
                                                                        user:
                                                                            currentUserReference,
                                                                        caseSummary: _model
                                                                            .addCaseTextController1
                                                                            .text,
                                                                        dateAdded:
                                                                            getCurrentTimestamp,
                                                                      ));
                                                                  logFirebaseEvent(
                                                                      'Button_clear_text_fields_pin_codes');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .addCaseTextController2
                                                                        ?.clear();
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'Button_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Added to \'My Cases\'',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                },
                                                                text: 'Save',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 60.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
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
                                        ),
                                      ],
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 4.0, 8.0, 4.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.48,
                                            height: 625.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(18.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Curriculum: by individual Capability',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      'An overview of your current curriculum coverage',
                                                      style:
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
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Fitness to practice',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController1Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .fitnesstopractice,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController1Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController1_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        fitnesstopractice:
                                                                            _model.countController1Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController1Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController1Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController1Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Maintaining an ethical approach',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController2Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .maintaininganethicalapproach,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController2Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController2_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        maintaininganethicalapproach:
                                                                            _model.countController2Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController2Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController2Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController2Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Communication and consultation skills',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController3Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .communicationandconsultationskills,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController3Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController3_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        communicationandconsultationskills:
                                                                            _model.countController3Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController3Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController3Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController3Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Data gathering and interpretation',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController4Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .datagatheringandinterpretation,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController4Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController4_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        datagatheringandinterpretation:
                                                                            _model.countController4Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController4Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController4Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController4Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Clinical examination and procedural skills',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController5Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .clinicalexaminationandproceduralskills,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController5Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController5_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        clinicalexaminationandproceduralskills:
                                                                            _model.countController5Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController5Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController5Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController5Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Making a diagnosis/decisions',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController6Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .makingadiagnosisdecisions,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController6Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController6_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        makingadiagnosisdecisions:
                                                                            _model.countController6Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController6Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController6Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController6Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Clinical management',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController7Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .clinicalmanagement,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController7Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController7_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        clinicalmanagement:
                                                                            _model.countController7Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController7Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController7Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController7Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Managing medical complexity',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController8Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .managingmedicalcomplexity,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController8Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController8_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        managingmedicalcomplexity:
                                                                            _model.countController8Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController8Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController8Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController8Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Working with colleagues and in teams',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController9Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .workingwithcolleaguesandinteams,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController9Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController9_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        workingwithcolleaguesandinteams:
                                                                            _model.countController9Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController9Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController9Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController9Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Maintaining performance, learning and teaching',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController10Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .maintainingperformancelearningandteaching,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController10Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController10_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        maintainingperformancelearningandteaching:
                                                                            _model.countController10Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController10Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController10Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController10Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Organisation, management and leadership',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController11Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .organisationmanagementandleadership,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController11Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController11_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        organisationmanagementandleadership:
                                                                            _model.countController11Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController11Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController11Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController11Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              StreamBuilder<
                                                                  List<
                                                                      ReflectionsRecord>>(
                                                                stream:
                                                                    queryReflectionsRecord(
                                                                  queryBuilder:
                                                                      (reflectionsRecord) =>
                                                                          reflectionsRecord
                                                                              .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitPulse(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ReflectionsRecord>
                                                                      textReflectionsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return Text(
                                                                    'Practising holistically, promoting health and safeguarding',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  );
                                                                },
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController12Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .practisingholisticallypromotinghealthandsafeguarding,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController12Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController12_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        practisingholisticallypromotinghealthandsafeguarding:
                                                                            _model.countController12Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController12Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController12Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController12Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Community orientation',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 70.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .grayIcon,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      FlutterFlowCountController(
                                                                    decrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .minus,
                                                                      color: enabled
                                                                          ? Color(
                                                                              0xDD000000)
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    incrementIconBuilder:
                                                                        (enabled) =>
                                                                            FaIcon(
                                                                      FontAwesomeIcons
                                                                          .plus,
                                                                      color: enabled
                                                                          ? Colors
                                                                              .blue
                                                                          : Color(
                                                                              0xFFEEEEEE),
                                                                      size:
                                                                          10.0,
                                                                    ),
                                                                    countBuilder:
                                                                        (count) =>
                                                                            Text(
                                                                      count
                                                                          .toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Roboto',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    count: _model
                                                                            .countController13Value ??=
                                                                        reflectGpTraineeDashbaordUserCountsRecord!
                                                                            .communityorientation,
                                                                    updateCount:
                                                                        (count) async {
                                                                      safeSetState(() =>
                                                                          _model.countController13Value =
                                                                              count);
                                                                      logFirebaseEvent(
                                                                          'REFLECT_GP_TRAINEE_DASHBAORD_CountContro');
                                                                      logFirebaseEvent(
                                                                          'CountController13_backend_call');

                                                                      await reflectGpTraineeDashbaordUserCountsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createUserCountsRecordData(
                                                                        communityorientation:
                                                                            _model.countController13Value,
                                                                      ));
                                                                    },
                                                                    stepSize: 1,
                                                                    minimum: 0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              LinearPercentIndicator(
                                                                percent: _model
                                                                            .countController13Value! >=
                                                                        3
                                                                    ? 1.0
                                                                    : functions
                                                                        .divideby3(
                                                                            _model.countController13Value)!,
                                                                width: 120.0,
                                                                lineHeight:
                                                                    24.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor: _model
                                                                            .countController13Value! >=
                                                                        3
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .success
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent4,
                                                                barRadius: Radius
                                                                    .circular(
                                                                        10.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ],
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
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary600,
                                              offset: Offset(
                                                0.0,
                                                3.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Reflection count',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'A reminder of your overall progress so far',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white70,
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          Container(
                                                        width: 70.0,
                                                        height: 25.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.0),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child:
                                                            FlutterFlowCountController(
                                                          decrementIconBuilder:
                                                              (enabled) =>
                                                                  FaIcon(
                                                            FontAwesomeIcons
                                                                .minus,
                                                            color: enabled
                                                                ? Color(
                                                                    0xDD000000)
                                                                : Color(
                                                                    0xFFEEEEEE),
                                                            size: 10.0,
                                                          ),
                                                          incrementIconBuilder:
                                                              (enabled) =>
                                                                  FaIcon(
                                                            FontAwesomeIcons
                                                                .plus,
                                                            color: enabled
                                                                ? Colors.blue
                                                                : Color(
                                                                    0xFFEEEEEE),
                                                            size: 10.0,
                                                          ),
                                                          countBuilder:
                                                              (count) => Text(
                                                            count.toString(),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                          count: _model
                                                                  .reflectionCountValue2 ??=
                                                              valueOrDefault<
                                                                  int>(
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.reflectionCount,
                                                                0),
                                                            0,
                                                          ),
                                                          updateCount:
                                                              (count) async {
                                                            safeSetState(() =>
                                                                _model.reflectionCountValue2 =
                                                                    count);
                                                            logFirebaseEvent(
                                                                'REFLECT_GP_TRAINEE_DASHBAORD_ReflectionC');
                                                            logFirebaseEvent(
                                                                'ReflectionCount_backend_call');

                                                            await currentUserReference!
                                                                .update(
                                                                    createUsersRecordData(
                                                              reflectionCount:
                                                                  _model
                                                                      .reflectionCountValue2,
                                                            ));
                                                          },
                                                          stepSize: 1,
                                                          minimum: 0,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                        ),
                                                      ),
                                                    ),
                                                    AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          LinearPercentIndicator(
                                                        percent: () {
                                                          if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.reflectionCount,
                                                                  0) >=
                                                              36) {
                                                            return 1.0;
                                                          } else if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.reflectionCount,
                                                                  0) ==
                                                              0) {
                                                            return 0.0;
                                                          } else {
                                                            return valueOrDefault<
                                                                double>(
                                                              functions.divideby36(
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.reflectionCount,
                                                                      0)),
                                                              0.0,
                                                            );
                                                          }
                                                        }(),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.55,
                                                        lineHeight: 20.0,
                                                        animation: true,
                                                        animateFromLastPercent:
                                                            true,
                                                        progressColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white70,
                                                        barRadius:
                                                            Radius.circular(
                                                                50.0),
                                                        padding:
                                                            EdgeInsets.zero,
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
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 235.9,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                          ),
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
                                                BorderRadius.circular(16.0),
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Curriculum: Capability summary',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    'An overview of your current curriculum coverage',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child:
                                                                    CircularPercentIndicator(
                                                                  percent: functions.cegprogress(
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord!.fitnesstopractice >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding,
                                                                        0,
                                                                      ),
                                                                      valueOrDefault<int>(
                                                                        reflectGpTraineeDashbaordUserCountsRecord.communityorientation >=
                                                                                3
                                                                            ? 3
                                                                            : reflectGpTraineeDashbaordUserCountsRecord.communityorientation,
                                                                        0,
                                                                      ))!,
                                                                  radius: 45.0,
                                                                  lineWidth:
                                                                      12.0,
                                                                  animation:
                                                                      true,
                                                                  animateFromLastPercent:
                                                                      true,
                                                                  progressColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                  center: Text(
                                                                    formatNumber(
                                                                      functions.cegprogress(
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.fitnesstopractice,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.maintaininganethicalapproach,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.communicationandconsultationskills,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.datagatheringandinterpretation,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.clinicalexaminationandproceduralskills,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.makingadiagnosisdecisions,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.clinicalmanagement,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.managingmedicalcomplexity,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.workingwithcolleaguesandinteams,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.maintainingperformancelearningandteaching,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.organisationmanagementandleadership,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.practisingholisticallypromotinghealthandsafeguarding,
                                                                            0,
                                                                          ),
                                                                          valueOrDefault<int>(
                                                                            reflectGpTraineeDashbaordUserCountsRecord.communityorientation >= 3
                                                                                ? 3
                                                                                : reflectGpTraineeDashbaordUserCountsRecord.communityorientation,
                                                                            0,
                                                                          )),
                                                                      formatType:
                                                                          FormatType
                                                                              .percent,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Outfit'),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Capabilities % complete',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 223.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
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
                                                BorderRadius.circular(16.0),
                                          ),
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 28.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Save a case for later',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 43.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                  child: Text(
                                                    'Type your case summary here and save to come back to it later',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white70,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Container(
                                                        width: 237.4,
                                                        height: 118.4,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              TextFormField(
                                                                controller: _model
                                                                    .addCaseTextController2,
                                                                focusNode: _model
                                                                    .addCaseFocusNode2,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Start typing...',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
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
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
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
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
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
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              4.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                maxLines: null,
                                                                validator: _model
                                                                    .addCaseTextController2Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'REFLECT_GP_TRAINEE_DASHBAORD_SAVE_BTN_ON');
                                                          logFirebaseEvent(
                                                              'Button_backend_call');

                                                          await CasesRecord
                                                              .collection
                                                              .doc()
                                                              .set(
                                                                  createCasesRecordData(
                                                                user:
                                                                    currentUserReference,
                                                                caseSummary: _model
                                                                    .addCaseTextController2
                                                                    .text,
                                                                dateAdded:
                                                                    getCurrentTimestamp,
                                                              ));
                                                          logFirebaseEvent(
                                                              'Button_clear_text_fields_pin_codes');
                                                          safeSetState(() {
                                                            _model
                                                                .addCaseTextController2
                                                                ?.clear();
                                                          });
                                                          logFirebaseEvent(
                                                              'Button_show_snack_bar');
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Added to \'My Cases\'',
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
                                                        },
                                                        text: 'Save',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 60.0,
                                                          height: 40.0,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
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
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
