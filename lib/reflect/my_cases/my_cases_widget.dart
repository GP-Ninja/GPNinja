import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_cases_model.dart';
export 'my_cases_model.dart';

class MyCasesWidget extends StatefulWidget {
  const MyCasesWidget({super.key});

  @override
  State<MyCasesWidget> createState() => _MyCasesWidgetState();
}

class _MyCasesWidgetState extends State<MyCasesWidget> {
  late MyCasesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCasesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'my_cases'});
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
        title: 'MyCases',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
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
                        homeColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        consultColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        clickNoteColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        reflectColour: FlutterFlowTheme.of(context).primary,
                        profileColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        subscriptionColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        learnColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        newsColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        jobsColour:
                            FlutterFlowTheme.of(context).secondaryBackground,
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                      ),
                    ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.9,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: StreamBuilder<List<UserCountsRecord>>(
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

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          offset: Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'My cases',
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Below you will find a summary of your iReflect outputs and clinical cases',
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
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Reflect outputs',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.4,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: StreamBuilder<
                                          List<ReflectionsRecord>>(
                                        stream: queryReflectionsRecord(
                                          queryBuilder: (reflectionsRecord) =>
                                              reflectionsRecord
                                                  .where(
                                                    'user',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  )
                                                  .orderBy('date_created',
                                                      descending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitPulse(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<ReflectionsRecord>
                                              listViewReflectionsRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewReflectionsRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewReflectionsRecord =
                                                  listViewReflectionsRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 5.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 70.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 5.0,
                                                                24.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          dateTimeFormat(
                                                              "MMMEd",
                                                              listViewReflectionsRecord
                                                                  .dateCreated!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                        SizedBox(
                                                          height: 100.0,
                                                          child:
                                                              VerticalDivider(
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent4,
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Container(
                                                            width: 400.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    listViewReflectionsRecord
                                                                        .clinicalCase
                                                                        .maybeHandleOverflow(
                                                                      maxChars:
                                                                          40,
                                                                      replacement:
                                                                          '…',
                                                                    ),
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
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Text(
                                                            'Added to portfolio?',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                          .checkboxValueMap[
                                                                      listViewReflectionsRecord] ??=
                                                                  listViewReflectionsRecord
                                                                      .addedToPortfolio,
                                                              onChanged:
                                                                  (newValue) async {
                                                                safeSetState(() =>
                                                                    _model.checkboxValueMap[
                                                                            listViewReflectionsRecord] =
                                                                        newValue!);
                                                                if (newValue!) {
                                                                  logFirebaseEvent(
                                                                      'MY_CASES_Checkbox_aaih4k6m_ON_TOGGLE_ON');
                                                                  logFirebaseEvent(
                                                                      'Checkbox_backend_call');

                                                                  await listViewReflectionsRecord
                                                                      .reference
                                                                      .update(
                                                                          createReflectionsRecordData(
                                                                    addedToPortfolio:
                                                                        true,
                                                                    dateAddedToPortfolio:
                                                                        listViewReflectionsRecord
                                                                            .dateAddedToPortfolio,
                                                                  ));
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Fitness to practice')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Fitnesstopractice':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Maintaining an ethical approach')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Maintaininganethicalapproach':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Communication and consultation skills')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Communicationandconsultationskills':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Data gathering and interpretation')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Datagatheringandinterpretation':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Clinical examination and procedural skills')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Clinicalexaminationandproceduralskills':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Making a diagnosis/decisions')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Makingadiagnosisdecisions':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Clinical management')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Clinicalmanagement':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Managing medical complexity')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Managingmedicalcomplexity':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Working with colleagues and in teams')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Workingwithcolleaguesandinteams':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Maintaining performance, learning and teaching')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Maintainingperformancelearningandteaching':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Organisation, management and leadership')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Organisationmanagementandleadership':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Practising holistically, promoting health and safeguarding')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Practisingholisticallypromotinghealthandsafeguarding':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Community orientation')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Communityorientation':
                                                                              FieldValue.increment(1),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  logFirebaseEvent(
                                                                      'Checkbox_navigate_to');

                                                                  context.pushNamed(
                                                                      'reflect_gp_trainee_dashbaord');
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'MY_CASES_Checkbox_aaih4k6m_ON_TOGGLE_OFF');
                                                                  logFirebaseEvent(
                                                                      'Checkbox_backend_call');

                                                                  await listViewReflectionsRecord
                                                                      .reference
                                                                      .update({
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'added_to_portfolio':
                                                                            FieldValue.delete(),
                                                                        'date_added_to_portfolio':
                                                                            FieldValue.delete(),
                                                                      },
                                                                    ),
                                                                  });
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Fitness to practice')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Fitnesstopractice':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Maintaining an ethical approach')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Maintaininganethicalapproach':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Communication and consultation skills')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Communicationandconsultationskills':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Data gathering and interpretation')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Datagatheringandinterpretation':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Clinical examination and procedural skills')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Clinicalexaminationandproceduralskills':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Making a diagnosis/decisions')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Makingadiagnosisdecisions':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Clinical management')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Clinicalmanagement':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Managing medical complexity')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Managingmedicalcomplexity':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Working with colleagues and in teams')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Workingwithcolleaguesandinteams':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Maintaining performance, learning and teaching')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Maintainingperformancelearningandteaching':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Organisation, management and leadership')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Organisationmanagementandleadership':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Practising holistically, promoting health and safeguarding')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Practisingholisticallypromotinghealthandsafeguarding':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  if (listViewReflectionsRecord
                                                                      .allCapabilities
                                                                      .contains(
                                                                          'Community orientation')) {
                                                                    logFirebaseEvent(
                                                                        'Checkbox_backend_call');

                                                                    await columnUserCountsRecord!
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Communityorientation':
                                                                              FieldValue.increment(-(1)),
                                                                        },
                                                                      ),
                                                                    });
                                                                  }
                                                                  logFirebaseEvent(
                                                                      'Checkbox_navigate_to');

                                                                  context.pushNamed(
                                                                      'reflect_gp_trainee_dashbaord');
                                                                }
                                                              },
                                                              side: BorderSide(
                                                                width: 2,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent2,
                                                              ),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'MY_CASES_PAGE_VIEW_EDIT_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                              'reflect_gp_trainee',
                                                              queryParameters: {
                                                                'reflectionreference':
                                                                    serializeParam(
                                                                  listViewReflectionsRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );

                                                            logFirebaseEvent(
                                                                'Button_update_app_state');
                                                            FFAppState()
                                                                    .Capability1Output =
                                                                listViewReflectionsRecord
                                                                    .capability1Output;
                                                            FFAppState()
                                                                    .Capability2Output =
                                                                listViewReflectionsRecord
                                                                    .capability2Output;
                                                            FFAppState()
                                                                    .Capability3Output =
                                                                listViewReflectionsRecord
                                                                    .capability3Output;
                                                            FFAppState()
                                                                    .Capability1 =
                                                                listViewReflectionsRecord
                                                                    .capability1;
                                                            FFAppState()
                                                                    .Capability2 =
                                                                listViewReflectionsRecord
                                                                    .capability2;
                                                            FFAppState()
                                                                    .Capability3 =
                                                                listViewReflectionsRecord
                                                                    .capability3;
                                                            FFAppState()
                                                                    .ClinicalCase =
                                                                listViewReflectionsRecord
                                                                    .clinicalCase;
                                                            FFAppState()
                                                                    .ReflectionOutput =
                                                                listViewReflectionsRecord
                                                                    .reflectionOutput;
                                                            FFAppState()
                                                                    .LearningOutput =
                                                                listViewReflectionsRecord
                                                                    .learningOutput;
                                                            safeSetState(() {});
                                                          },
                                                          text: 'View/edit',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
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
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
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
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'MY_CASES_PAGE_DELETE_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');
                                                              await listViewReflectionsRecord
                                                                  .reference
                                                                  .delete();
                                                            },
                                                            text: 'Delete',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 100.0,
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
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
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
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Clinical cases to reflect on',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.224,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: StreamBuilder<List<CasesRecord>>(
                                        stream: queryCasesRecord(
                                          queryBuilder: (casesRecord) =>
                                              casesRecord
                                                  .where(
                                                    'user',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  )
                                                  .orderBy('date_added',
                                                      descending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitPulse(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<CasesRecord>
                                              listViewCasesRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewCasesRecordList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewCasesRecord =
                                                  listViewCasesRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 5.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 70.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 5.0,
                                                                24.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Text(
                                                          dateTimeFormat(
                                                              "MMMEd",
                                                              listViewCasesRecord
                                                                  .dateAdded!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Container(
                                                            width: 400.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    listViewCasesRecord
                                                                        .caseSummary
                                                                        .maybeHandleOverflow(
                                                                      maxChars:
                                                                          40,
                                                                      replacement:
                                                                          '…',
                                                                    ),
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
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'MY_CASES_START_REFLECTION_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                                'reflect_gp_trainee');

                                                            logFirebaseEvent(
                                                                'Button_update_app_state');
                                                            FFAppState()
                                                                .Capability1Output = '';
                                                            FFAppState()
                                                                .Capability2Output = '';
                                                            FFAppState()
                                                                .Capability3Output = '';
                                                            FFAppState()
                                                                .Capability1 = '';
                                                            FFAppState()
                                                                .Capability2 = '';
                                                            FFAppState()
                                                                .Capability3 = '';
                                                            FFAppState()
                                                                    .ClinicalCase =
                                                                listViewCasesRecord
                                                                    .caseSummary;
                                                            FFAppState()
                                                                .ReflectionOutput = '';
                                                            FFAppState()
                                                                .LearningOutput = '';
                                                            safeSetState(() {});
                                                          },
                                                          text:
                                                              'Start reflection',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 130.0,
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
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
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
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          SizedBox(
                                                            height: 100.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'MY_CASES_PAGE_DELETE_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');
                                                              await listViewCasesRecord
                                                                  .reference
                                                                  .delete();
                                                            },
                                                            text: 'Delete',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 100.0,
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
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
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
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
