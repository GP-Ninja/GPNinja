import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/cpd/cpd_cal_item/cpd_cal_item_widget.dart';
import '/cpd/cpd_item/cpd_item_widget.dart';
import '/cpd/cpd_log_item/cpd_log_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cpd_model.dart';
export 'cpd_model.dart';

class CpdWidget extends StatefulWidget {
  const CpdWidget({super.key});

  @override
  State<CpdWidget> createState() => _CpdWidgetState();
}

class _CpdWidgetState extends State<CpdWidget> with TickerProviderStateMixin {
  late CpdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpdModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'cpd'});
    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
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
    return Title(
        title: 'cpd',
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
                      learnColour: FlutterFlowTheme.of(context).primary,
                      newsColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      jobsColour:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 30.0, 16.0, 0.0),
                                  child: FutureBuilder<int>(
                                    future: queryCPDRecordRecordCount(
                                      queryBuilder: (cPDRecordRecord) =>
                                          cPDRecordRecord.where(
                                        'user',
                                        isEqualTo: currentUserReference,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitPulse(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      int rowCount = snapshot.data!;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'My CPD:',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          if (rowCount > 0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<CPDRecordRecord>>(
                                                stream: queryCPDRecordRecord(
                                                  queryBuilder:
                                                      (cPDRecordRecord) =>
                                                          cPDRecordRecord.where(
                                                    'user',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CPDRecordRecord>
                                                      textCPDRecordRecordList =
                                                      snapshot.data!;

                                                  return Text(
                                                    '${valueOrDefault<String>(
                                                      formatNumber(
                                                        functions.sumoflistdouble(
                                                            textCPDRecordRecordList
                                                                .map((e) =>
                                                                    valueOrDefault<
                                                                        double>(
                                                                      e.duration,
                                                                      0.0,
                                                                    ))
                                                                .toList()),
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .periodDecimal,
                                                      ),
                                                      '0',
                                                    )}h',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  );
                                                },
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'CPD_PAGE_ADD_C_P_D_BTN_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              BottomSheetAddOrEditCpdWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              text: 'Add CPD',
                                              icon: Icon(
                                                Icons.add_box,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 28.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.start,
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
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.47,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.83,
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
                                      child:
                                          StreamBuilder<List<CPDRecordRecord>>(
                                        stream: _model.myCPD(
                                          requestFn: () => queryCPDRecordRecord(
                                            queryBuilder: (cPDRecordRecord) =>
                                                cPDRecordRecord
                                                    .where(
                                                      'user',
                                                      isEqualTo:
                                                          currentUserReference,
                                                    )
                                                    .orderBy('date',
                                                        descending: true),
                                          ),
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
                                          List<CPDRecordRecord>
                                              listViewCPDRecordRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewCPDRecordRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewCPDRecordRecord =
                                                  listViewCPDRecordRecordList[
                                                      listViewIndex];
                                              return CpdLogItemWidget(
                                                key: Key(
                                                    'Key3im_${listViewIndex}_of_${listViewCPDRecordRecordList.length}'),
                                                title: listViewCPDRecordRecord
                                                    .title,
                                                url:
                                                    listViewCPDRecordRecord.url,
                                                notes: listViewCPDRecordRecord
                                                    .notes,
                                                learning:
                                                    listViewCPDRecordRecord
                                                        .learning,
                                                duration:
                                                    listViewCPDRecordRecord
                                                        .duration,
                                                cpdRef: listViewCPDRecordRecord
                                                    .reference,
                                                source: listViewCPDRecordRecord
                                                    .source,
                                                date: listViewCPDRecordRecord
                                                    .date,
                                                endDate: listViewCPDRecordRecord
                                                    .endDate,
                                                uploadedFile:
                                                    listViewCPDRecordRecord
                                                        .uploadedFile,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Upcoming CPD',
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.83,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 10.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.47,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.373,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: StreamBuilder<
                                                  List<CpdCalendarRecord>>(
                                                stream: _model.browseCPD(
                                                  requestFn: () =>
                                                      queryCpdCalendarRecord(
                                                    queryBuilder:
                                                        (cpdCalendarRecord) =>
                                                            cpdCalendarRecord
                                                                .where(
                                                                  'date',
                                                                  isGreaterThan:
                                                                      getCurrentTimestamp,
                                                                )
                                                                .orderBy(
                                                                    'date'),
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CpdCalendarRecord>
                                                      listViewCpdCalendarRecordList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewCpdCalendarRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewCpdCalendarRecord =
                                                          listViewCpdCalendarRecordList[
                                                              listViewIndex];
                                                      return CpdCalItemWidget(
                                                        key: Key(
                                                            'Key5w0_${listViewIndex}_of_${listViewCpdCalendarRecordList.length}'),
                                                        organisation:
                                                            listViewCpdCalendarRecord
                                                                .organisation,
                                                        title:
                                                            listViewCpdCalendarRecord
                                                                .title,
                                                        description:
                                                            listViewCpdCalendarRecord
                                                                .description,
                                                        cost:
                                                            listViewCpdCalendarRecord
                                                                .price,
                                                        url:
                                                            listViewCpdCalendarRecord
                                                                .url,
                                                        date:
                                                            listViewCpdCalendarRecord
                                                                .date!,
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Browse CPD',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
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
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.47,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.373,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent3,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: StreamBuilder<
                                                    List<EducationRecord>>(
                                                  stream: _model.browseCBD1(
                                                    requestFn: () =>
                                                        queryEducationRecord(
                                                      queryBuilder:
                                                          (educationRecord) =>
                                                              educationRecord
                                                                  .where(
                                                                      Filter.or(
                                                                    Filter(
                                                                      'source',
                                                                      isEqualTo:
                                                                          'InnovAiT',
                                                                    ),
                                                                    Filter(
                                                                      'source',
                                                                      isEqualTo:
                                                                          'British Journal of General Practice',
                                                                    ),
                                                                    Filter(
                                                                      'source',
                                                                      isEqualTo:
                                                                          'BMJ Best Practice',
                                                                    ),
                                                                  ))
                                                                  .orderBy(
                                                                      'date',
                                                                      descending:
                                                                          true),
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<EducationRecord>
                                                        staggeredViewEducationRecordList =
                                                        snapshot.data!;

                                                    return MasonryGridView
                                                        .builder(
                                                      gridDelegate:
                                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                      ),
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 10.0,
                                                      itemCount:
                                                          staggeredViewEducationRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          staggeredViewIndex) {
                                                        final staggeredViewEducationRecord =
                                                            staggeredViewEducationRecordList[
                                                                staggeredViewIndex];
                                                        return CpdItemWidget(
                                                          key: Key(
                                                              'Keynk7_${staggeredViewIndex}_of_${staggeredViewEducationRecordList.length}'),
                                                          title:
                                                              staggeredViewEducationRecord
                                                                  .title,
                                                          url:
                                                              staggeredViewEducationRecord
                                                                  .url,
                                                          description:
                                                              staggeredViewEducationRecord
                                                                  .description,
                                                          source:
                                                              staggeredViewEducationRecord
                                                                  .source,
                                                          date:
                                                              staggeredViewEducationRecord
                                                                  .date!,
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
