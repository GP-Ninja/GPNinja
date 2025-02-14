import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/recall/edit_flashcard/edit_flashcard_widget.dart';
import '/recall/new_flashcard/new_flashcard_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'recall_model.dart';
export 'recall_model.dart';

class RecallWidget extends StatefulWidget {
  const RecallWidget({
    super.key,
    this.selectedCategoryId,
    this.selectedCategotyName,
  });

  final DocumentReference? selectedCategoryId;
  final String? selectedCategotyName;

  @override
  State<RecallWidget> createState() => _RecallWidgetState();
}

class _RecallWidgetState extends State<RecallWidget>
    with TickerProviderStateMixin {
  late RecallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecallModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'recall'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('RECALL_PAGE_recall_ON_INIT_STATE');
      logFirebaseEvent('recall_update_page_state');
      _model.selectedCategoryId = widget.selectedCategoryId;
      _model.selectedCategoryName = widget.selectedCategotyName!;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
        title: 'recall',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_model.dropDownValue == null ||
                            _model.dropDownValue == '')
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(),
                              child: StreamBuilder<List<FlashcardsRecord>>(
                                stream: queryFlashcardsRecord(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitPulse(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<FlashcardsRecord>
                                      swipeableStackFlashcardsRecordList =
                                      snapshot.data!;

                                  return FlutterFlowSwipeableStack(
                                    onSwipeFn: (index) {},
                                    onLeftSwipe: (index) {},
                                    onRightSwipe: (index) {},
                                    onUpSwipe: (index) {},
                                    onDownSwipe: (index) {},
                                    itemBuilder:
                                        (context, swipeableStackIndex) {
                                      final swipeableStackFlashcardsRecord =
                                          swipeableStackFlashcardsRecordList[
                                              swipeableStackIndex];
                                      return Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.isFront == true)
                                                Expanded(
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
                                                          'RECALL_PAGE_Container_82hn3g1d_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Container_update_page_state');
                                                      _model.isFront =
                                                          !_model.isFront;
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: Text(
                                                          swipeableStackFlashcardsRecord
                                                              .question,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 20.0,
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
                                                ),
                                              if (_model.isFront == false)
                                                Expanded(
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
                                                          'RECALL_PAGE_Container_b72kguvp_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Container_update_page_state');
                                                      _model.isFront =
                                                          !_model.isFront;
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              20.0),
                                                                      child:
                                                                          Text(
                                                                        swipeableStackFlashcardsRecord
                                                                            .answer,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['textOnPageLoadAnimation']!),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (swipeableStackFlashcardsRecord
                                                                      .sourceLink !=
                                                                  '')
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'RECALL_PAGE_SOURCE_BTN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Button_launch_u_r_l');
                                                                await launchURL(
                                                                    swipeableStackFlashcardsRecord
                                                                        .sourceLink);
                                                              },
                                                              text: 'Source',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 27.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderRadius:
                                                                    0.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_left,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 44.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'RECALL_PAGE_arrow_circle_left_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_page_state');
                                                                  _model.isFront =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'IconButton_swipeable_stack');
                                                                  _model
                                                                      .swipeableStackController1
                                                                      .swipeLeft();
                                                                },
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    0.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_right,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 44.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'RECALL_arrow_circle_right_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_page_state');
                                                                  _model.isFront =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'IconButton_swipeable_stack');
                                                                  _model
                                                                      .swipeableStackController1
                                                                      .swipeRight();
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.edit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'RECALL_PAGE_edit_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_bottom_sheet');
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
                                                            EditFlashcardWidget(
                                                          flashcardRef:
                                                              swipeableStackFlashcardsRecord
                                                                  .reference,
                                                          flashcardQuestion:
                                                              swipeableStackFlashcardsRecord
                                                                  .question,
                                                          flashcardAnswer:
                                                              swipeableStackFlashcardsRecord
                                                                  .answer,
                                                          flashcardCategoryId:
                                                              swipeableStackFlashcardsRecord
                                                                  .categoryId!,
                                                          flashcardLink:
                                                              swipeableStackFlashcardsRecord
                                                                  .sourceLink,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                    itemCount:
                                        swipeableStackFlashcardsRecordList
                                            .length,
                                    controller:
                                        _model.swipeableStackController1,
                                    loop: true,
                                    cardDisplayCount: 3,
                                    scale: 0.9,
                                  );
                                },
                              ),
                            ),
                          ),
                        if (_model.dropDownValue != null &&
                            _model.dropDownValue != '')
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final selectedFlashcardList =
                                      _model.selectedFlashcards?.toList() ?? [];

                                  return FlutterFlowSwipeableStack(
                                    onSwipeFn: (index) {},
                                    onLeftSwipe: (index) {},
                                    onRightSwipe: (index) {},
                                    onUpSwipe: (index) {},
                                    onDownSwipe: (index) {},
                                    itemBuilder:
                                        (context, selectedFlashcardListIndex) {
                                      final selectedFlashcardListItem =
                                          selectedFlashcardList[
                                              selectedFlashcardListIndex];
                                      return Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.isFront == true)
                                                Expanded(
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
                                                          'RECALL_PAGE_Container_7w18pwo2_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Container_update_page_state');
                                                      _model.isFront =
                                                          !_model.isFront;
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: Text(
                                                          selectedFlashcardListItem
                                                              .question,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 20.0,
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
                                                ),
                                              if (_model.isFront == false)
                                                Expanded(
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
                                                          'RECALL_PAGE_Container_b30q1o85_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Container_update_page_state');
                                                      _model.isFront =
                                                          !_model.isFront;
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              20.0),
                                                                      child:
                                                                          Text(
                                                                        selectedFlashcardListItem
                                                                            .answer,
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (selectedFlashcardListItem
                                                                      .sourceLink !=
                                                                  '')
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'RECALL_PAGE_SOURCE_BTN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Button_launch_u_r_l');
                                                                await launchURL(
                                                                    selectedFlashcardListItem
                                                                        .sourceLink);
                                                              },
                                                              text: 'Source',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 27.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    0.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_left,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 44.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'RECALL_PAGE_arrow_circle_left_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_page_state');
                                                                  _model.isFront =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'IconButton_swipeable_stack');
                                                                  _model
                                                                      .swipeableStackController2
                                                                      .swipeLeft();
                                                                },
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    0.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    60.0,
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_circle_right,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 44.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'RECALL_arrow_circle_right_ICN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'IconButton_update_page_state');
                                                                  _model.isFront =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'IconButton_swipeable_stack');
                                                                  _model
                                                                      .swipeableStackController2
                                                                      .swipeRight();
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.edit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'RECALL_PAGE_edit_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_bottom_sheet');
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
                                                            EditFlashcardWidget(
                                                          flashcardRef:
                                                              selectedFlashcardListItem
                                                                  .reference,
                                                          flashcardQuestion:
                                                              selectedFlashcardListItem
                                                                  .question,
                                                          flashcardAnswer:
                                                              selectedFlashcardListItem
                                                                  .answer,
                                                          flashcardCategoryId:
                                                              selectedFlashcardListItem
                                                                  .categoryId!,
                                                          flashcardLink:
                                                              selectedFlashcardListItem
                                                                  .sourceLink,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                    itemCount: selectedFlashcardList.length,
                                    controller:
                                        _model.swipeableStackController2,
                                    loop: true,
                                    cardDisplayCount: 3,
                                    scale: 0.9,
                                  );
                                },
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 60.0, 8.0, 0.0),
                          child: StreamBuilder<List<FlashcardCategoriesRecord>>(
                            stream: queryFlashcardCategoriesRecord(
                              queryBuilder: (flashcardCategoriesRecord) =>
                                  flashcardCategoriesRecord.orderBy('name'),
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
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<FlashcardCategoriesRecord>
                                  dropDownFlashcardCategoriesRecordList =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??=
                                      _model.selectedCategoryName,
                                ),
                                options: dropDownFlashcardCategoriesRecordList
                                    .map((e) => e.name)
                                    .toList(),
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.dropDownValue = val);
                                  logFirebaseEvent(
                                      'RECALL_DropDown_12p0aoxm_ON_FORM_WIDGET_');
                                  logFirebaseEvent('DropDown_firestore_query');
                                  _model.selectedCategory =
                                      await queryFlashcardCategoriesRecordOnce(
                                    queryBuilder: (flashcardCategoriesRecord) =>
                                        flashcardCategoriesRecord.where(
                                      'name',
                                      isEqualTo: _model.dropDownValue,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('DropDown_firestore_query');
                                  _model.selectedFlashcards =
                                      await queryFlashcardsRecordOnce(
                                    queryBuilder: (flashcardsRecord) =>
                                        flashcardsRecord.where(
                                      'category_id',
                                      isEqualTo:
                                          _model.selectedCategory?.reference,
                                    ),
                                  );

                                  safeSetState(() {});
                                },
                                width: 300.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 60.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'RECALL_PAGE_NEW_FLASHCARD_BTN_ON_TAP');
                              logFirebaseEvent('Button_bottom_sheet');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: NewFlashcardWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            text: 'New flashcard',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
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
                        Stack(
                          children: [],
                        ),
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
