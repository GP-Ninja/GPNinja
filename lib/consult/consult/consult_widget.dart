import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/click_note/b96_bottom_sheet_subscribe/b96_bottom_sheet_subscribe_widget.dart';
import '/consult/add_new_local_resource/add_new_local_resource_widget.dart';
import '/consult/add_resource/add_resource_widget.dart';
import '/consult/bottom_sheet_local_resource_admin/bottom_sheet_local_resource_admin_widget.dart';
import '/consult/community_resource/community_resource_widget.dart';
import '/consult/google_result/google_result_widget.dart';
import '/consult/local_resource/local_resource_widget.dart';
import '/consult/placeholder_community_resources/placeholder_community_resources_widget.dart';
import '/consult/placeholder_key_resources/placeholder_key_resources_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'consult_model.dart';
export 'consult_model.dart';

class ConsultWidget extends StatefulWidget {
  const ConsultWidget({
    super.key,
    this.reflectionreference,
    this.searchTerm,
  });

  final DocumentReference? reflectionreference;
  final String? searchTerm;

  @override
  State<ConsultWidget> createState() => _ConsultWidgetState();
}

class _ConsultWidgetState extends State<ConsultWidget>
    with TickerProviderStateMixin {
  late ConsultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsultModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'consult'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CONSULT_PAGE_consult_ON_INIT_STATE');
      logFirebaseEvent('consult_update_app_state');
      FFAppState().searchTerm = false;
      safeSetState(() {});
    });

    _model.textFieldSearchTextController ??= TextEditingController();
    _model.textFieldSearchFocusNode ??= FocusNode();

    _model.switchCKSValue = true;
    _model.textFieldSafetyNetSmallTextController ??= TextEditingController();
    _model.textFieldSafetyNetSmallFocusNode ??= FocusNode();

    _model.textFieldTextSmallTextController ??= TextEditingController();
    _model.textFieldTextSmallFocusNode ??= FocusNode();

    _model.textFieldPCTextController ??= TextEditingController();
    _model.textFieldPCFocusNode ??= FocusNode();

    _model.textFieldHxTextController ??= TextEditingController();
    _model.textFieldHxFocusNode ??= FocusNode();

    _model.textFieldExTextController ??= TextEditingController();
    _model.textFieldExFocusNode ??= FocusNode();

    _model.textFieldImTextController ??= TextEditingController();
    _model.textFieldImFocusNode ??= FocusNode();

    _model.textFieldPlanTextController ??= TextEditingController();
    _model.textFieldPlanFocusNode ??= FocusNode();

    _model.textFieldNotesTextController ??= TextEditingController();
    _model.textFieldNotesFocusNode ??= FocusNode();

    _model.textFieldTextTextController ??= TextEditingController();
    _model.textFieldTextFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
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
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 1000.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 1000.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'Consult',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Stack(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CONSULT_PAGE_Column_em2t3xhi_ON_TAP');
                                          logFirebaseEvent(
                                              'Column_update_app_state');
                                          FFAppState().chatisvisible = false;
                                          safeSetState(() {});
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        40.0,
                                                                        0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CONSULT_PAGE_HISTORY_BTN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'consult_history',
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.rightToLeft,
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  text:
                                                                      'History',
                                                                  icon: Icon(
                                                                    Icons
                                                                        .history,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        110.0,
                                                                    height:
                                                                        29.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    hoverColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        20.0,
                                                                        0.0),
                                                            child: MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          492.0,
                                                                      height:
                                                                          56.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0x33000000),
                                                                            offset:
                                                                                Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(30.0),
                                                                        border:
                                                                            Border.all(
                                                                          color: _model.mouseRegionHovered1 == true
                                                                              ? Color(0xFFBCBCBC)
                                                                              : FlutterFlowTheme.of(context).accent3,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.textFieldSearchTextController,
                                                                                focusNode: _model.textFieldSearchFocusNode,
                                                                                onFieldSubmitted: (_) async {
                                                                                  logFirebaseEvent('CONSULT_TextFieldSearch_ON_TEXTFIELD_SUB');
                                                                                  logFirebaseEvent('TextFieldSearch_timer');
                                                                                  _model.timer1Controller.onStartTimer();
                                                                                },
                                                                                autofocus: false,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  hintText: 'Search here...',
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      topLeft: Radius.circular(4.0),
                                                                                      topRight: Radius.circular(4.0),
                                                                                    ),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      topLeft: Radius.circular(4.0),
                                                                                      topRight: Radius.circular(4.0),
                                                                                    ),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      topLeft: Radius.circular(4.0),
                                                                                      topRight: Radius.circular(4.0),
                                                                                    ),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      topLeft: Radius.circular(4.0),
                                                                                      topRight: Radius.circular(4.0),
                                                                                    ),
                                                                                  ),
                                                                                  prefixIcon: Icon(
                                                                                    Icons.search,
                                                                                    size: 20.0,
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                validator: _model.textFieldSearchTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          FlutterFlowIconButton(
                                                                            borderRadius:
                                                                                20.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.close,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('CONSULT_PAGE_close_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_clear_text_fields_pin_codes');
                                                                              safeSetState(() {
                                                                                _model.textFieldSearchTextController?.clear();
                                                                              });
                                                                              logFirebaseEvent('IconButton_update_app_state');
                                                                              FFAppState().searchTerm = false;
                                                                              safeSetState(() {});
                                                                              logFirebaseEvent('IconButton_update_page_state');
                                                                              _model.searchReference = null;
                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              indent: 10.0,
                                                                              endIndent: 10.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Open in Google',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.right,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Colors.transparent,
                                                                                borderRadius: 30.0,
                                                                                borderWidth: 1.0,
                                                                                buttonSize: 40.0,
                                                                                icon: FaIcon(
                                                                                  FontAwesomeIcons.google,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 20.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('CONSULT_PAGE_google_ICN_ON_TAP');
                                                                                  if (_model.textFieldSearchTextController.text != '') {
                                                                                    logFirebaseEvent('IconButton_launch_u_r_l');
                                                                                    await launchURL('https://www.google.com/search?q=${_model.textFieldSearchTextController.text}');
                                                                                  } else {
                                                                                    logFirebaseEvent('IconButton_launch_u_r_l');
                                                                                    await launchURL('https://www.google.com/');
                                                                                  }

                                                                                  logFirebaseEvent('IconButton_backend_call');

                                                                                  await currentUserReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'click_count': FieldValue.increment(1),
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionHovered1 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionHovered1 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ),
                                                          Opacity(
                                                            opacity: 0.0,
                                                            child:
                                                                FlutterFlowTimer(
                                                              initialTime: _model
                                                                  .timer2InitialTimeMs,
                                                              getDisplayTime: (value) =>
                                                                  StopWatchTimer
                                                                      .getDisplayTime(
                                                                value,
                                                                hours: false,
                                                                milliSecond:
                                                                    false,
                                                              ),
                                                              controller: _model
                                                                  .timer2Controller,
                                                              updateStateInterval:
                                                                  Duration(
                                                                      milliseconds:
                                                                          1000),
                                                              onChanged: (value,
                                                                  displayTime,
                                                                  shouldUpdate) {
                                                                _model.timer2Milliseconds =
                                                                    value;
                                                                _model.timer2Value =
                                                                    displayTime;
                                                                if (shouldUpdate)
                                                                  safeSetState(
                                                                      () {});
                                                              },
                                                              onEnded:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'CONSULT_PAGE_Timer2_ON_TIMER_END');
                                                                logFirebaseEvent(
                                                                    'Timer2_algolia_search');
                                                                safeSetState(() =>
                                                                    _model.algoliaSearchResults1 =
                                                                        null);
                                                                await PresentingComplaintsRecord
                                                                        .search(
                                                                  term: _model
                                                                      .textFieldSearchTextController
                                                                      .text,
                                                                )
                                                                    .then((r) =>
                                                                        _model.algoliaSearchResults1 =
                                                                            r)
                                                                    .onError((_,
                                                                            __) =>
                                                                        _model.algoliaSearchResults1 =
                                                                            [])
                                                                    .whenComplete(() =>
                                                                        safeSetState(
                                                                            () {}));

                                                                if (((_model.algoliaSearchResults1?.firstOrNull?.owner ==
                                                                            null) ||
                                                                        (_model.algoliaSearchResults1?.firstOrNull?.owner ==
                                                                            currentUserReference)) &&
                                                                    (_model
                                                                            .algoliaSearchResults1
                                                                            ?.firstOrNull
                                                                            ?.iNote ==
                                                                        null)) {
                                                                  logFirebaseEvent(
                                                                      'Timer2_wait__delay');
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              1000));
                                                                  logFirebaseEvent(
                                                                      'Timer2_update_app_state');
                                                                  FFAppState().templateref = _model
                                                                      .algoliaSearchResults1
                                                                      ?.where((e) =>
                                                                          e.hasIsSafetyNet() ==
                                                                          true)
                                                                      .toList()
                                                                      .firstOrNull
                                                                      ?.reference;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'Timer2_update_page_state');
                                                                  _model.templateSelected = _model
                                                                      .algoliaSearchResults1
                                                                      ?.where((e) =>
                                                                          e.hasIsSafetyNet() ==
                                                                          true)
                                                                      .toList()
                                                                      .firstOrNull
                                                                      ?.pc;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'Timer2_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textFieldSafetyNetSmallTextController?.text = _model
                                                                        .algoliaSearchResults1!
                                                                        .where((e) =>
                                                                            e.hasIsSafetyNet() ==
                                                                            true)
                                                                        .toList()
                                                                        .firstOrNull!
                                                                        .notes;
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'Timer2_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textFieldTextSmallTextController?.text = _model
                                                                        .algoliaSearchResults1!
                                                                        .where((e) =>
                                                                            e.hasIsSafetyNet() ==
                                                                            true)
                                                                        .toList()
                                                                        .firstOrNull!
                                                                        .textMessage;
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'Timer2_widget_animation');
                                                                  if (animationsMap[
                                                                          'columnOnActionTriggerAnimation'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'columnOnActionTriggerAnimation']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0);
                                                                  }
                                                                }
                                                              },
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily,
                                                                    fontSize:
                                                                        0.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          FlutterFlowTimer(
                                                            initialTime: _model
                                                                .timer1InitialTimeMs,
                                                            getDisplayTime: (value) =>
                                                                StopWatchTimer
                                                                    .getDisplayTime(
                                                              value,
                                                              hours: false,
                                                              milliSecond:
                                                                  false,
                                                            ),
                                                            controller: _model
                                                                .timer1Controller,
                                                            updateStateInterval:
                                                                Duration(
                                                                    milliseconds:
                                                                        1000),
                                                            onChanged: (value,
                                                                displayTime,
                                                                shouldUpdate) {
                                                              _model.timer1Milliseconds =
                                                                  value;
                                                              _model.timer1Value =
                                                                  displayTime;
                                                              if (shouldUpdate)
                                                                safeSetState(
                                                                    () {});
                                                            },
                                                            onEnded: () async {
                                                              logFirebaseEvent(
                                                                  'CONSULT_PAGE_Timer1_ON_TIMER_END');
                                                              await Future
                                                                  .wait([
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Timer1_backend_call');

                                                                  var searchRecordReference =
                                                                      SearchRecord
                                                                          .collection
                                                                          .doc();
                                                                  await searchRecordReference
                                                                      .set({
                                                                    ...createSearchRecordData(
                                                                      searchTerm: _model
                                                                          .textFieldSearchTextController
                                                                          .text,
                                                                      searchTime:
                                                                          getCurrentTimestamp,
                                                                      user:
                                                                          currentUserReference,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'search_results':
                                                                            _model.placeholderResultRef,
                                                                      },
                                                                    ),
                                                                  });
                                                                  _model.newSearch =
                                                                      SearchRecord
                                                                          .getDocumentFromData({
                                                                    ...createSearchRecordData(
                                                                      searchTerm: _model
                                                                          .textFieldSearchTextController
                                                                          .text,
                                                                      searchTime:
                                                                          getCurrentTimestamp,
                                                                      user:
                                                                          currentUserReference,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'search_results':
                                                                            _model.placeholderResultRef,
                                                                      },
                                                                    ),
                                                                  }, searchRecordReference);
                                                                  logFirebaseEvent(
                                                                      'Timer1_update_page_state');
                                                                  _model.searchReference = _model
                                                                      .newSearch
                                                                      ?.reference;
                                                                  safeSetState(
                                                                      () {});
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Timer1_algolia_search');
                                                                  safeSetState(() =>
                                                                      _model.algoliaSearchResults2 =
                                                                          null);
                                                                  await ResourcesRecord
                                                                          .search(
                                                                    term: _model
                                                                        .textFieldSearchTextController
                                                                        .text,
                                                                  )
                                                                      .then((r) =>
                                                                          _model.algoliaSearchResults2 =
                                                                              r)
                                                                      .onError((_,
                                                                              __) =>
                                                                          _model.algoliaSearchResults2 =
                                                                              [])
                                                                      .whenComplete(() =>
                                                                          safeSetState(
                                                                              () {}));
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Timer1_timer');
                                                                  _model
                                                                      .timer2Controller
                                                                      .onStartTimer();
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'Timer1_update_app_state');
                                                                  FFAppState()
                                                                          .searchComplete =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'Timer1_backend_call');
                                                                  _model.googleCombined =
                                                                      await GoogleCustomSearchCall
                                                                          .call(
                                                                    q: _model
                                                                        .textFieldSearchTextController
                                                                        .text,
                                                                  );

                                                                  logFirebaseEvent(
                                                                      'Timer1_update_app_state');
                                                                  FFAppState()
                                                                          .searchTerm =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                }),
                                                              ]);

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  fontSize: 0.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              StreamBuilder<
                                                                  ICBsRecord>(
                                                            stream: FFAppState()
                                                                .allICBs(
                                                              requestFn: () =>
                                                                  ICBsRecord.getDocument(
                                                                      currentUserDocument!
                                                                          .icb!),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitPulse(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }

                                                              final columnICBsRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Local',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: _model.mouseRegionLocalHovered == true ? FlutterFlowTheme.of(context).hover : FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      if (currentUserEmail ==
                                                                          'jamesjwalker01@gmail.com')
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Text_ke20eafq_ON_TAP');
                                                                            logFirebaseEvent('Text_bottom_sheet');
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
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: BottomSheetLocalResourceAdminWidget(),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            ' +',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        115.0,
                                                                    child:
                                                                        Divider(
                                                                      height:
                                                                          10.0,
                                                                      thickness:
                                                                          1.0,
                                                                      color: _model.mouseRegionLocalHovered ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .hover
                                                                          : FlutterFlowTheme.of(context)
                                                                              .accent3,
                                                                    ),
                                                                  ),
                                                                  StreamBuilder<
                                                                      List<
                                                                          ICBResourcesRecord>>(
                                                                    stream:
                                                                        queryICBResourcesRecord(
                                                                      parent: currentUserDocument
                                                                          ?.icb,
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<ICBResourcesRecord>
                                                                          containerICBResourcesRecordList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        decoration:
                                                                            BoxDecoration(
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
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Builder(
                                                                              builder: (context) {
                                                                                final iCBResourceList = containerICBResourcesRecordList.toList();
                                                                                if (iCBResourceList.isEmpty) {
                                                                                  return AddNewLocalResourceWidget();
                                                                                }

                                                                                return Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: List.generate(iCBResourceList.length, (iCBResourceListIndex) {
                                                                                    final iCBResourceListItem = iCBResourceList[iCBResourceListIndex];
                                                                                    return Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: LocalResourceWidget(
                                                                                        key: Key('Keyu9e_${iCBResourceListIndex}_of_${iCBResourceList.length}'),
                                                                                        parameter1: iCBResourceListItem.description,
                                                                                        parameter2: _model.mouseRegionLocalHovered,
                                                                                        parameter4: iCBResourceListItem.url,
                                                                                        parameter5: _model.textFieldSearchTextController.text,
                                                                                        parameter6: iCBResourceListItem.searchUrl,
                                                                                        parameter7: _model.searchReference,
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                );
                                                                              },
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                child: Container(
                                                                                  width: 100.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).accent3,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: AutoSizeText(
                                                                                      columnICBsRecord.name,
                                                                                      textAlign: TextAlign.center,
                                                                                      minFontSize: 8.0,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Outfit',
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey('Outfit'),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionLocalHovered =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionLocalHovered =
                                                            false);
                                                      }),
                                                    ),
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'General',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionHovered2 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width: 115.0,
                                                              child: Divider(
                                                                height: 10.0,
                                                                thickness: 1.0,
                                                                color: _model
                                                                            .mouseRegionHovered2 ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .hover
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        _model.textFieldSearchTextController.text == ''
                                                                            ? 'CKS'
                                                                            : 'CKS: \'${_model.textFieldSearchTextController.text}\'',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Container_oqpekyku_ON_TAP');
                                                                            if (_model.textFieldSearchTextController.text != '') {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://cks.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                              await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                resultTime: getCurrentTimestamp,
                                                                                resultUser: currentUserReference,
                                                                                timesAccessed: 1,
                                                                                source: 'CKS',
                                                                                resultHeading: 'NICE CKS: ${_model.textFieldSearchTextController.text}',
                                                                                resultLink: 'https://cks.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                              ));
                                                                              _model.resultClickedCKS = SearchResultsRecord.getDocumentFromData(
                                                                                  createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'CKS',
                                                                                    resultHeading: 'NICE CKS: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://cks.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                                  ),
                                                                                  searchResultsRecordReference1);
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await _model.searchReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'search_results': FieldValue.arrayUnion([
                                                                                      _model.resultClickedCKS?.reference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://cks.nice.org.uk/');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'CKSBlank',
                                                                                    resultHeading: 'NICE CKS',
                                                                                    resultLink: 'https://cks.nice.org.uk/',
                                                                                  ));
                                                                            }

                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.asset(
                                                                                  'assets/images/NICECKS.png',
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: _model.mouseRegionCKSHovered == false ? 0.0 : 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    _model.mouseRegionCKSHovered == false ? 0.0 : 2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionCKSHovered = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionCKSHovered = false);
                                                                        }),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        _model.textFieldSearchTextController.text == ''
                                                                            ? 'SIGN'
                                                                            : 'SIGN: \'${_model.textFieldSearchTextController.text}\'',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child:
                                                                          MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Container_3ub3zsun_ON_TAP');
                                                                            if (_model.textFieldSearchTextController.text != '') {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.sign.ac.uk/search-results?q=${_model.textFieldSearchTextController.text}');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                              await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                resultTime: getCurrentTimestamp,
                                                                                resultUser: currentUserReference,
                                                                                timesAccessed: 1,
                                                                                source: 'SIGN',
                                                                                resultHeading: 'SIGN: ${_model.textFieldSearchTextController.text}',
                                                                                resultLink: 'https://www.sign.ac.uk/search-results?q=${_model.textFieldSearchTextController.text}',
                                                                              ));
                                                                              _model.resultClickedSIGN = SearchResultsRecord.getDocumentFromData(
                                                                                  createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'SIGN',
                                                                                    resultHeading: 'SIGN: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://www.sign.ac.uk/search-results?q=${_model.textFieldSearchTextController.text}',
                                                                                  ),
                                                                                  searchResultsRecordReference1);
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await _model.searchReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'search_results': FieldValue.arrayUnion([
                                                                                      _model.resultClickedSIGN?.reference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.sign.ac.uk');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'SIGNBlank',
                                                                                    resultHeading: 'SIGN',
                                                                                    resultLink: 'https://www.sign.ac.uk',
                                                                                  ));
                                                                            }

                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.contain,
                                                                                image: Image.asset(
                                                                                  'assets/images/SIGN.png',
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: _model.mouseRegionSIGNHovered == false ? 0.0 : 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    _model.mouseRegionSIGNHovered == false ? 0.0 : 2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionSIGNHovered = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionSIGNHovered = false);
                                                                        }),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered2 =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered2 =
                                                            false);
                                                      }),
                                                    ),
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Dermatology',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionHovered3 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width: 115.0,
                                                              child: Divider(
                                                                height: 10.0,
                                                                thickness: 1.0,
                                                                color: _model
                                                                            .mouseRegionHovered3 ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .hover
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        _model.textFieldSearchTextController.text == ''
                                                                            ? 'PCDS'
                                                                            : 'PCDS: \'${_model.textFieldSearchTextController.text}\'',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Container_i5m5942q_ON_TAP');
                                                                            if (_model.textFieldSearchTextController.text != '') {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.pcds.org.uk/search/results?q=${_model.textFieldSearchTextController.text}');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                              await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                resultTime: getCurrentTimestamp,
                                                                                resultUser: currentUserReference,
                                                                                timesAccessed: 1,
                                                                                source: 'PCDS',
                                                                                resultHeading: 'PCDS: ${_model.textFieldSearchTextController.text}',
                                                                                resultLink: 'https://www.pcds.org.uk/search/results?q=${_model.textFieldSearchTextController.text}',
                                                                              ));
                                                                              _model.resultClickedPCDS = SearchResultsRecord.getDocumentFromData(
                                                                                  createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'PCDS',
                                                                                    resultHeading: 'PCDS: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://www.pcds.org.uk/search/results?q=${_model.textFieldSearchTextController.text}',
                                                                                  ),
                                                                                  searchResultsRecordReference1);
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await _model.searchReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'search_results': FieldValue.arrayUnion([
                                                                                      _model.resultClickedPCDS?.reference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.pcds.org.uk/');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'PCDSBlank',
                                                                                    resultHeading: 'PCDS',
                                                                                    resultLink: 'https://www.pcds.org.uk/',
                                                                                  ));
                                                                            }

                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.contain,
                                                                                image: Image.asset(
                                                                                  'assets/images/pcds.png',
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: _model.mouseRegionPCDSHovered == false ? 0.0 : 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    _model.mouseRegionPCDSHovered == false ? 0.0 : 2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionPCDSHovered = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionPCDSHovered = false);
                                                                        }),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        _model.textFieldSearchTextController.text == ''
                                                                            ? 'DermNet'
                                                                            : 'DermNet: \'${_model.textFieldSearchTextController.text}\'',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child:
                                                                          MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Container_1f2xxj50_ON_TAP');
                                                                            if (_model.textFieldSearchTextController.text != '') {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://dermnetnz.org/search.html?q=${_model.textFieldSearchTextController.text}');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                              await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                resultTime: getCurrentTimestamp,
                                                                                resultUser: currentUserReference,
                                                                                timesAccessed: 1,
                                                                                source: 'Dermnet',
                                                                                resultHeading: 'Dermnet: ${_model.textFieldSearchTextController.text}',
                                                                                resultLink: 'https://dermnetnz.org/search.html?q=${_model.textFieldSearchTextController.text}',
                                                                              ));
                                                                              _model.resultClickedDermnet = SearchResultsRecord.getDocumentFromData(
                                                                                  createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'Dermnet',
                                                                                    resultHeading: 'Dermnet: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://dermnetnz.org/search.html?q=${_model.textFieldSearchTextController.text}',
                                                                                  ),
                                                                                  searchResultsRecordReference1);
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await _model.searchReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'search_results': FieldValue.arrayUnion([
                                                                                      _model.resultClickedDermnet?.reference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://dermnetnz.org/');
                                                                              logFirebaseEvent('Container_backend_call');

                                                                              await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'DermnetBlank',
                                                                                    resultHeading: 'Dermnet',
                                                                                    resultLink: 'https://dermnetnz.org/',
                                                                                  ));
                                                                            }

                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.asset(
                                                                                  'assets/images/dermnet.jpeg',
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: _model.mouseRegiondDermnetHovered == false ? 0.0 : 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    _model.mouseRegiondDermnetHovered == false ? 0.0 : 2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegiondDermnetHovered = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegiondDermnetHovered = false);
                                                                        }),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered3 =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered3 =
                                                            false);
                                                      }),
                                                    ),
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Prescribing',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionHovered4 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width: 275.0,
                                                              child: Divider(
                                                                height: 10.0,
                                                                thickness: 1.0,
                                                                color: _model
                                                                            .mouseRegionHovered4 ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .hover
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                _model.textFieldSearchTextController.text == '' ? 'BNF' : 'BNF: \'${_model.textFieldSearchTextController.text}\'',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_bbcnf7zn_ON_TAP');
                                                                                    if (_model.textFieldSearchTextController.text != '') {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://bnf.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                      await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'BNF',
                                                                                        resultHeading: 'BNF: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://bnf.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                                      ));
                                                                                      _model.resultClickedBNF = SearchResultsRecord.getDocumentFromData(
                                                                                          createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'BNF',
                                                                                            resultHeading: 'BNF: ${_model.textFieldSearchTextController.text}',
                                                                                            resultLink: 'https://bnf.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                                          ),
                                                                                          searchResultsRecordReference1);
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await _model.searchReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'search_results': FieldValue.arrayUnion([
                                                                                              _model.resultClickedBNF?.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    } else {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://bnf.nice.org.uk/');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'BNFBlank',
                                                                                            resultHeading: 'BNF',
                                                                                            resultLink: 'https://bnf.nice.org.uk/',
                                                                                          ));
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/bnf.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: _model.mouseRegionBNFHovered == false ? 0.0 : 4.0,
                                                                                          color: Color(0x33000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            _model.mouseRegionBNFHovered == false ? 0.0 : 2.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionBNFHovered = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionBNFHovered = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                _model.textFieldSearchTextController.text == '' ? 'BNFC' : 'BNFC: \'${_model.textFieldSearchTextController.text}\'',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_18vg6fw3_ON_TAP');
                                                                                    if (_model.textFieldSearchTextController.text != '') {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://bnfc.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                      await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'BNFc',
                                                                                        resultHeading: 'BNFc: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://bnfc.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                                      ));
                                                                                      _model.resultClickedBNFc = SearchResultsRecord.getDocumentFromData(
                                                                                          createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'BNFc',
                                                                                            resultHeading: 'BNFc: ${_model.textFieldSearchTextController.text}',
                                                                                            resultLink: 'https://bnfc.nice.org.uk/search/?q=${_model.textFieldSearchTextController.text}',
                                                                                          ),
                                                                                          searchResultsRecordReference1);
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await _model.searchReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'search_results': FieldValue.arrayUnion([
                                                                                              _model.resultClickedBNFc?.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    } else {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://bnfc.nice.org.uk/');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'BNFcBlank',
                                                                                            resultHeading: 'BNFc',
                                                                                            resultLink: 'https://bnfc.nice.org.uk/',
                                                                                          ));
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.contain,
                                                                                        image: Image.asset(
                                                                                          'assets/images/bnfc.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: _model.mouseRegionBNFcHovered == false ? 0.0 : 4.0,
                                                                                          color: Color(0x33000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            _model.mouseRegionBNFcHovered == false ? 0.0 : 2.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionBNFcHovered = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionBNFcHovered = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                _model.textFieldSearchTextController.text == '' ? 'MedicinesComplete' : 'MedicinesComplete: \'${_model.textFieldSearchTextController.text}\'',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(5.0),
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_qvg9i1jo_ON_TAP');
                                                                                    if (_model.textFieldSearchTextController.text != '') {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://www.medicinescomplete.com/#/search/all/${_model.textFieldSearchTextController.text}');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                      await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'MedicinesComplete',
                                                                                        resultHeading: 'Medicines Complete: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://www.medicinescomplete.com/#/search/all/${_model.textFieldSearchTextController.text}',
                                                                                      ));
                                                                                      _model.resultClickedMedicinesComplete = SearchResultsRecord.getDocumentFromData(
                                                                                          createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'MedicinesComplete',
                                                                                            resultHeading: 'Medicines Complete: ${_model.textFieldSearchTextController.text}',
                                                                                            resultLink: 'https://www.medicinescomplete.com/#/search/all/${_model.textFieldSearchTextController.text}',
                                                                                          ),
                                                                                          searchResultsRecordReference1);
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await _model.searchReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'search_results': FieldValue.arrayUnion([
                                                                                              _model.resultClickedMedicinesComplete?.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    } else {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://about.medicinescomplete.com/');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'MedicinesCompleteBlank',
                                                                                            resultHeading: 'Medicines Complete',
                                                                                            resultLink: 'https://about.medicinescomplete.com/',
                                                                                          ));
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 100.0,
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/medcomp.png',
                                                                                        ).image,
                                                                                      ),
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: _model.mouseRegionMCHovered == false ? 0.0 : 4.0,
                                                                                          color: Color(0x33000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            _model.mouseRegionMCHovered == false ? 0.0 : 2.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionMCHovered = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionMCHovered = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                _model.textFieldSearchTextController.text == '' ? 'MIMS' : 'MIMS: \'${_model.textFieldSearchTextController.text}\'',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 5.0),
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_njthtgy4_ON_TAP');
                                                                                    if (_model.textFieldSearchTextController.text != '') {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://www.mims.co.uk/search/drugs?keywords=${_model.textFieldSearchTextController.text}');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                      await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'MIMS',
                                                                                        resultHeading: 'MIMS: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://www.mims.co.uk/search/drugs?keywords=${_model.textFieldSearchTextController.text}',
                                                                                      ));
                                                                                      _model.resultClickedMIMS = SearchResultsRecord.getDocumentFromData(
                                                                                          createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'MIMS',
                                                                                            resultHeading: 'MIMS: ${_model.textFieldSearchTextController.text}',
                                                                                            resultLink: 'https://www.mims.co.uk/search/drugs?keywords=${_model.textFieldSearchTextController.text}',
                                                                                          ),
                                                                                          searchResultsRecordReference1);
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await _model.searchReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'search_results': FieldValue.arrayUnion([
                                                                                              _model.resultClickedMIMS?.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    } else {
                                                                                      logFirebaseEvent('Container_launch_u_r_l');
                                                                                      await launchURL('https://www.mims.co.uk');
                                                                                      logFirebaseEvent('Container_backend_call');

                                                                                      await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                            resultTime: getCurrentTimestamp,
                                                                                            resultUser: currentUserReference,
                                                                                            timesAccessed: 1,
                                                                                            source: 'MIMSBlank',
                                                                                            resultHeading: 'MIMS',
                                                                                            resultLink: 'https://www.mims.co.uk',
                                                                                          ));
                                                                                    }

                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: _model.mouseRegionMIMSHovered == false ? 0.0 : 4.0,
                                                                                          color: Color(0x33000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            _model.mouseRegionMIMSHovered == false ? 0.0 : 2.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(3.0),
                                                                                      child: Container(
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                          image: DecorationImage(
                                                                                            fit: BoxFit.contain,
                                                                                            image: Image.asset(
                                                                                              'assets/images/vv.gif',
                                                                                            ).image,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionMIMSHovered = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionMIMSHovered = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered4 =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered4 =
                                                            false);
                                                      }),
                                                    ),
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Calcs',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionCalcsHovered ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  _model.mouseRegionMDCALCOptionsHovered ==
                                                                          true
                                                                      ? 360.0
                                                                      : 85.0,
                                                              child: Divider(
                                                                height: 10.0,
                                                                thickness: 1.0,
                                                                color: _model
                                                                            .mouseRegionCalcsHovered ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .hover
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Text(
                                                                        'MDCalc',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child:
                                                                          MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CONSULT_PAGE_Container_3pevpvoz_ON_TAP');
                                                                            if (_model.textFieldSearchTextController.text != '') {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.mdcalc.com/');
                                                                            } else {
                                                                              logFirebaseEvent('Container_launch_u_r_l');
                                                                              await launchURL('https://www.mdcalc.com/');
                                                                            }

                                                                            logFirebaseEvent('Container_backend_call');

                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'click_count': FieldValue.increment(1),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.asset(
                                                                                  'assets/images/mdcalc.png',
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: _model.mouseRegionMDCALCHovered == false ? 0.0 : 4.0,
                                                                                  color: Color(0x33000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    _model.mouseRegionMDCALCHovered == false ? 0.0 : 2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionMDCALCHovered = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          safeSetState(() =>
                                                                              _model.mouseRegionMDCALCHovered = false);
                                                                        }),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  MouseRegion(
                                                                    opaque:
                                                                        false,
                                                                    cursor: MouseCursor
                                                                            .defer ??
                                                                        MouseCursor
                                                                            .defer,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .keyboard_arrow_right_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        if (_model.mouseRegionMDCALCOptionsHovered ==
                                                                            true)
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_GAD_7_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/1727/gad7-general-anxiety-disorder7');
                                                                                      },
                                                                                      text: 'GAD-7',
                                                                                      options: FFButtonOptions(
                                                                                        width: 50.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_PHQ_9_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/1725/phq9-patient-health-questionnaire9');
                                                                                      },
                                                                                      text: 'PHQ-9',
                                                                                      options: FFButtonOptions(
                                                                                        width: 50.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_C_H_A_D_S_V_A_SC_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/801/cha2ds2-vasc-score-atrial-fibrillation-stroke-risk');
                                                                                      },
                                                                                      text: 'CHADS-VASc',
                                                                                      options: FFButtonOptions(
                                                                                        width: 80.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_ORBIT_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/10227/orbit-bleeding-risk-score-atrial-fibrillation');
                                                                                      },
                                                                                      text: 'ORBIT',
                                                                                      options: FFButtonOptions(
                                                                                        width: 50.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_WELLS_D_V_T_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/362/wells-criteria-dvt');
                                                                                      },
                                                                                      text: 'Well\'s DVT',
                                                                                      options: FFButtonOptions(
                                                                                        width: 65.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_WELLS_P_E_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/115/wells-criteria-pulmonary-embolism');
                                                                                      },
                                                                                      text: 'Well\'s PE',
                                                                                      options: FFButtonOptions(
                                                                                        width: 60.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_FEVER_P_A_I_N_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/3316/feverpain-score-strep-pharyngitis');
                                                                                      },
                                                                                      text: 'FeverPAIN',
                                                                                      options: FFButtonOptions(
                                                                                        width: 65.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.all(2.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_CENTOR_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_launch_u_r_l');
                                                                                        await launchURL('https://www.mdcalc.com/calc/104/centor-score-modified-mcisaac-strep-pharyngitis');
                                                                                      },
                                                                                      text: 'Centor',
                                                                                      options: FFButtonOptions(
                                                                                        width: 50.0,
                                                                                        height: 20.0,
                                                                                        padding: EdgeInsets.all(0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              color: Colors.white,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        hoverElevation: 6.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    onEnter:
                                                                        ((event) async {
                                                                      safeSetState(() =>
                                                                          _model.mouseRegionMDCALCOptionsHovered =
                                                                              true);
                                                                    }),
                                                                    onExit:
                                                                        ((event) async {
                                                                      safeSetState(() =>
                                                                          _model.mouseRegionMDCALCOptionsHovered =
                                                                              false);
                                                                    }),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionCalcsHovered =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionCalcsHovered =
                                                            false);
                                                      }),
                                                    ),
                                                    MouseRegion(
                                                      opaque: false,
                                                      cursor:
                                                          MouseCursor.defer ??
                                                              MouseCursor.defer,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Patient info',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionHovered5 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              width: 115.0,
                                                              child: Divider(
                                                                height: 10.0,
                                                                thickness: 1.0,
                                                                color: _model
                                                                            .mouseRegionHovered5 ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .hover
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      AlignedTooltip(
                                                                        content:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(4.0),
                                                                          child:
                                                                              Text(
                                                                            _model.textFieldSearchTextController.text == ''
                                                                                ? 'Patient UK'
                                                                                : 'Patient UK: \'${_model.textFieldSearchTextController.text}\'',
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            Duration(milliseconds: 0),
                                                                        showDuration:
                                                                            Duration(milliseconds: 0),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONSULT_PAGE_Container_uvdmt3r4_ON_TAP');
                                                                                if (_model.textFieldSearchTextController.text != '') {
                                                                                  logFirebaseEvent('Container_launch_u_r_l');
                                                                                  await launchURL('https://patient.info/search.asp?searchterm=${_model.textFieldSearchTextController.text}');
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                  await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'PatientInfo',
                                                                                    resultHeading: 'Patient.info: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://patient.info/search.asp?searchterm=${_model.textFieldSearchTextController.text}',
                                                                                  ));
                                                                                  _model.resultClickedPatientInfo = SearchResultsRecord.getDocumentFromData(
                                                                                      createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'PatientInfo',
                                                                                        resultHeading: 'Patient.info: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://patient.info/search.asp?searchterm=${_model.textFieldSearchTextController.text}',
                                                                                      ),
                                                                                      searchResultsRecordReference1);
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  await _model.searchReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'search_results': FieldValue.arrayUnion([
                                                                                          _model.resultClickedPatientInfo?.reference
                                                                                        ]),
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                } else {
                                                                                  logFirebaseEvent('Container_launch_u_r_l');
                                                                                  await launchURL('https://patient.info/');
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'PatientInfoBlank',
                                                                                        resultHeading: 'Patient.info',
                                                                                        resultLink: 'https://patient.info/',
                                                                                      ));
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  image: DecorationImage(
                                                                                    fit: BoxFit.cover,
                                                                                    image: Image.asset(
                                                                                      'assets/images/patient.png',
                                                                                    ).image,
                                                                                  ),
                                                                                  boxShadow: [
                                                                                    BoxShadow(
                                                                                      blurRadius: _model.mouseRegionPatientHovered == false ? 0.0 : 4.0,
                                                                                      color: Color(0x33000000),
                                                                                      offset: Offset(
                                                                                        0.0,
                                                                                        _model.mouseRegionPatientHovered == false ? 0.0 : 2.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseRegionPatientHovered = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseRegionPatientHovered = false);
                                                                            }),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      AlignedTooltip(
                                                                        content:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(4.0),
                                                                          child:
                                                                              Text(
                                                                            _model.textFieldSearchTextController.text == ''
                                                                                ? 'NHS'
                                                                                : 'NHS: \'${_model.textFieldSearchTextController.text}\'',
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            Duration(milliseconds: 0),
                                                                        showDuration:
                                                                            Duration(milliseconds: 0),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(5.0),
                                                                          child:
                                                                              MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONSULT_PAGE_Container_64k81tvf_ON_TAP');
                                                                                if (_model.textFieldSearchTextController.text != '') {
                                                                                  logFirebaseEvent('Container_launch_u_r_l');
                                                                                  await launchURL('https://www.nhs.uk/search/results?q=${_model.textFieldSearchTextController.text}');
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  var searchResultsRecordReference1 = SearchResultsRecord.collection.doc();
                                                                                  await searchResultsRecordReference1.set(createSearchResultsRecordData(
                                                                                    resultTime: getCurrentTimestamp,
                                                                                    resultUser: currentUserReference,
                                                                                    timesAccessed: 1,
                                                                                    source: 'NHS',
                                                                                    resultHeading: 'NHS: ${_model.textFieldSearchTextController.text}',
                                                                                    resultLink: 'https://www.nhs.uk/search/results?q=${_model.textFieldSearchTextController.text}',
                                                                                  ));
                                                                                  _model.resultClickedNHS = SearchResultsRecord.getDocumentFromData(
                                                                                      createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'NHS',
                                                                                        resultHeading: 'NHS: ${_model.textFieldSearchTextController.text}',
                                                                                        resultLink: 'https://www.nhs.uk/search/results?q=${_model.textFieldSearchTextController.text}',
                                                                                      ),
                                                                                      searchResultsRecordReference1);
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  await _model.searchReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'search_results': FieldValue.arrayUnion([
                                                                                          _model.resultClickedNHS?.reference
                                                                                        ]),
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                } else {
                                                                                  logFirebaseEvent('Container_launch_u_r_l');
                                                                                  await launchURL('https://www.nhs.uk/');
                                                                                  logFirebaseEvent('Container_backend_call');

                                                                                  await SearchResultsRecord.collection.doc().set(createSearchResultsRecordData(
                                                                                        resultTime: getCurrentTimestamp,
                                                                                        resultUser: currentUserReference,
                                                                                        timesAccessed: 1,
                                                                                        source: 'NHSBlank',
                                                                                        resultHeading: 'NHS',
                                                                                        resultLink: 'https://www.nhs.uk/',
                                                                                      ));
                                                                                }

                                                                                safeSetState(() {});
                                                                              },
                                                                              child: Container(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  image: DecorationImage(
                                                                                    fit: BoxFit.cover,
                                                                                    image: Image.asset(
                                                                                      'assets/images/nhs.jpeg',
                                                                                    ).image,
                                                                                  ),
                                                                                  boxShadow: [
                                                                                    BoxShadow(
                                                                                      blurRadius: _model.mouseRegionNHSHovered == false ? 0.0 : 4.0,
                                                                                      color: Color(0x33000000),
                                                                                      offset: Offset(
                                                                                        0.0,
                                                                                        _model.mouseRegionNHSHovered == false ? 0.0 : 2.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseRegionNHSHovered = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              safeSetState(() => _model.mouseRegionNHSHovered = false);
                                                                            }),
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
                                                      onEnter: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered5 =
                                                            true);
                                                      }),
                                                      onExit: ((event) async {
                                                        safeSetState(() => _model
                                                                .mouseRegionHovered5 =
                                                            false);
                                                      }),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            if (FFAppState().templateView ==
                                                false)
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      _model.switchCKSValue ==
                                                                              false
                                                                          ? 'NICE CKS'
                                                                          : 'All key resources',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color: _model.mouseRegionCombinedHovered == true
                                                                                ? FlutterFlowTheme.of(context).hover
                                                                                : FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if ('1' ==
                                                                      '2')
                                                                    Container(
                                                                      width:
                                                                          44.0,
                                                                      height:
                                                                          20.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          AlignedTooltip(
                                                                        content:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(4.0),
                                                                          child:
                                                                              Text(
                                                                            _model.switchCKSValue == false
                                                                                ? 'Switch to all resources'
                                                                                : 'Switch to NICE CKS only',
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        offset:
                                                                            4.0,
                                                                        preferredDirection:
                                                                            AxisDirection.down,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            4.0,
                                                                        tailBaseWidth:
                                                                            24.0,
                                                                        tailLength:
                                                                            12.0,
                                                                        waitDuration:
                                                                            Duration(milliseconds: 0),
                                                                        showDuration:
                                                                            Duration(milliseconds: 0),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child: Transform
                                                                            .scale(
                                                                          scaleX:
                                                                              0.7,
                                                                          scaleY:
                                                                              0.7,
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                6.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Switch.adaptive(
                                                                              value: _model.switchCKSValue!,
                                                                              onChanged: (newValue) async {
                                                                                safeSetState(() => _model.switchCKSValue = newValue);
                                                                                if (newValue) {
                                                                                  logFirebaseEvent('CONSULT_PAGE_SwitchCKS_ON_TOGGLE_ON');
                                                                                  logFirebaseEvent('SwitchCKS_clear_text_fields_pin_codes');
                                                                                  safeSetState(() {
                                                                                    _model.textFieldSearchTextController?.clear();
                                                                                  });
                                                                                  logFirebaseEvent('SwitchCKS_update_app_state');
                                                                                  FFAppState().searchTerm = false;
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('SwitchCKS_update_page_state');
                                                                                  _model.searchReference = null;
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  logFirebaseEvent('CONSULT_PAGE_SwitchCKS_ON_TOGGLE_OFF');
                                                                                  logFirebaseEvent('SwitchCKS_clear_text_fields_pin_codes');
                                                                                  safeSetState(() {
                                                                                    _model.textFieldSearchTextController?.clear();
                                                                                  });
                                                                                  logFirebaseEvent('SwitchCKS_update_app_state');
                                                                                  FFAppState().searchTerm = false;
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('SwitchCKS_update_page_state');
                                                                                  _model.searchReference = null;
                                                                                  safeSetState(() {});
                                                                                }
                                                                              },
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              inactiveThumbColor: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.6,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.63,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: _model.mouseRegionCombinedHovered ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Stack(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    children: [
                                                                      if (FFAppState()
                                                                              .searchTerm ==
                                                                          true)
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                final googleGen = getJsonField(
                                                                                  (_model.googleCombined?.jsonBody ?? ''),
                                                                                  r'''$.items''',
                                                                                ).toList().take(10).toList();
                                                                                if (googleGen.isEmpty) {
                                                                                  return PlaceholderKeyResourcesWidget();
                                                                                }

                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: googleGen.length,
                                                                                  itemBuilder: (context, googleGenIndex) {
                                                                                    final googleGenItem = googleGen[googleGenIndex];
                                                                                    return GoogleResultWidget(
                                                                                      key: Key('Keyj7u_${googleGenIndex}_of_${googleGen.length}'),
                                                                                      parameter1: getJsonField(
                                                                                        googleGenItem,
                                                                                        r'''$.formattedUrl''',
                                                                                      ),
                                                                                      parameter2: getJsonField(
                                                                                        googleGenItem,
                                                                                        r'''$.link''',
                                                                                      ),
                                                                                      parameter3: getJsonField(
                                                                                        googleGenItem,
                                                                                        r'''$.title''',
                                                                                      ),
                                                                                      parameter4: getJsonField(
                                                                                        googleGenItem,
                                                                                        r'''$.snippet''',
                                                                                      ),
                                                                                      searchReference: _model.searchReference!,
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (FFAppState()
                                                                              .searchTerm ==
                                                                          false)
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.placeholderKeyResourcesModel,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              PlaceholderKeyResourcesWidget(),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionCombinedHovered =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            safeSetState(() =>
                                                                _model.mouseRegionCombinedHovered =
                                                                    false);
                                                          }),
                                                        ),
                                                      ),
                                                      Container(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.63,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Text(
                                                                          'Resources uploaded by users',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: _model.mouseRegionUserUploadedResourcesHovered == true ? FlutterFlowTheme.of(context).hover : FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      if (_model
                                                                              .mouseRegionUserUploadedResourcesHovered ==
                                                                          true)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Submit a useful resource for others to see',
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            offset:
                                                                                4.0,
                                                                            preferredDirection:
                                                                                AxisDirection.down,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                4.0,
                                                                            tailBaseWidth:
                                                                                24.0,
                                                                            tailLength:
                                                                                12.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('CONSULT_PAGE_Icon_5jp59n9t_ON_TAP');
                                                                                logFirebaseEvent('Icon_bottom_sheet');
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
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: AddResourceWidget(),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              child: Icon(
                                                                                Icons.add_box,
                                                                                color: _model.mouseRegionUserUploadedResourcesHovered == true ? FlutterFlowTheme.of(context).hover : FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 20.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: _model.mouseRegionUserUploadedResourcesHovered ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).hover
                                                                            : FlutterFlowTheme.of(context).accent3,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        if (FFAppState().searchTerm ==
                                                                            true)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  if (_model.algoliaSearchResults2?.where((e) => e.popularity >= 1).toList() == null) {
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
                                                                                  final resourcesMatching = _model.algoliaSearchResults2?.where((e) => e.popularity >= 1).toList().toList() ?? [];
                                                                                  if (resourcesMatching.isEmpty) {
                                                                                    return PlaceholderCommunityResourcesWidget();
                                                                                  }

                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: resourcesMatching.length,
                                                                                    itemBuilder: (context, resourcesMatchingIndex) {
                                                                                      final resourcesMatchingItem = resourcesMatching[resourcesMatchingIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                                                                                        child: StreamBuilder<ResourcesRecord>(
                                                                                          stream: ResourcesRecord.getDocument(resourcesMatchingItem.reference),
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

                                                                                            final containerResourcesRecord = snapshot.data!;

                                                                                            return Container(
                                                                                              width: double.infinity,
                                                                                              height: 90.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.all(5.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                      children: [
                                                                                                        Container(
                                                                                                          width: 100.0,
                                                                                                          height: 50.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          ),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            children: [
                                                                                                              ToggleIcon(
                                                                                                                onPressed: () async {
                                                                                                                  final upvotedElement = currentUserReference;
                                                                                                                  final upvotedUpdate = containerResourcesRecord.upvoted.contains(upvotedElement) ? FieldValue.arrayRemove([upvotedElement]) : FieldValue.arrayUnion([upvotedElement]);
                                                                                                                  await containerResourcesRecord.reference.update({
                                                                                                                    ...mapToFirestore(
                                                                                                                      {
                                                                                                                        'upvoted': upvotedUpdate,
                                                                                                                      },
                                                                                                                    ),
                                                                                                                  });
                                                                                                                  logFirebaseEvent('CONSULT_ToggleIcon_eriiacgs_ON_TOGGLE');
                                                                                                                  if (loggedIn) {
                                                                                                                    if (containerResourcesRecord.upvoted.contains(currentUserReference)) {
                                                                                                                      logFirebaseEvent('ToggleIcon_backend_call');

                                                                                                                      await containerResourcesRecord.reference.update({
                                                                                                                        ...mapToFirestore(
                                                                                                                          {
                                                                                                                            'popularity': FieldValue.increment(-(1)),
                                                                                                                            'upvoted': FieldValue.arrayRemove([currentUserReference]),
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      });
                                                                                                                      logFirebaseEvent('ToggleIcon_wait__delay');
                                                                                                                      await Future.delayed(const Duration(milliseconds: 1200));
                                                                                                                      logFirebaseEvent('ToggleIcon_set_form_field');
                                                                                                                      safeSetState(() {
                                                                                                                        _model.textFieldSearchTextController?.text = _model.textFieldSearchTextController.text;
                                                                                                                      });
                                                                                                                    } else {
                                                                                                                      logFirebaseEvent('ToggleIcon_backend_call');

                                                                                                                      await containerResourcesRecord.reference.update({
                                                                                                                        ...mapToFirestore(
                                                                                                                          {
                                                                                                                            'popularity': FieldValue.increment(1),
                                                                                                                            'upvoted': FieldValue.arrayUnion([currentUserReference]),
                                                                                                                          },
                                                                                                                        ),
                                                                                                                      });
                                                                                                                      logFirebaseEvent('ToggleIcon_wait__delay');
                                                                                                                      await Future.delayed(const Duration(milliseconds: 1200));
                                                                                                                      logFirebaseEvent('ToggleIcon_set_form_field');
                                                                                                                      safeSetState(() {
                                                                                                                        _model.textFieldSearchTextController?.text = _model.textFieldSearchTextController.text;
                                                                                                                      });
                                                                                                                    }
                                                                                                                  } else {
                                                                                                                    logFirebaseEvent('ToggleIcon_show_snack_bar');
                                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                                      SnackBar(
                                                                                                                        content: Text(
                                                                                                                          'You must be logged in to vote',
                                                                                                                          style: TextStyle(
                                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        duration: Duration(milliseconds: 4000),
                                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  }
                                                                                                                },
                                                                                                                value: containerResourcesRecord.upvoted.contains(currentUserReference),
                                                                                                                onIcon: Icon(
                                                                                                                  Icons.favorite,
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  size: 25.0,
                                                                                                                ),
                                                                                                                offIcon: Icon(
                                                                                                                  Icons.favorite_border,
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  size: 25.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Text(
                                                                                                                containerResourcesRecord.popularity.toString(),
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                    ),
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: 100.0,
                                                                                                                child: VerticalDivider(
                                                                                                                  thickness: 1.0,
                                                                                                                  color: FlutterFlowTheme.of(context).accent4,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Flexible(
                                                                                                          child: CommunityResourceWidget(
                                                                                                            key: Key('Keyi35_${resourcesMatchingIndex}_of_${resourcesMatching.length}'),
                                                                                                            parameter1: containerResourcesRecord.description,
                                                                                                            parameter2: containerResourcesRecord.link,
                                                                                                            searchReference: _model.searchReference!,
                                                                                                            resourceRef: containerResourcesRecord.reference,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (FFAppState().searchTerm ==
                                                                            false)
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.placeholderCommunityResourcesModel,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                PlaceholderCommunityResourcesWidget(),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionUserUploadedResourcesHovered =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionUserUploadedResourcesHovered =
                                                                        false);
                                                              }),
                                                            ),
                                                            MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      'Safety-netting templates',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color: (_model.mouseRegionTemplatesHeaderHovered == true) || (_model.mouseRegionTemplatesHovered == true)
                                                                                ? FlutterFlowTheme.of(context).hover
                                                                                : FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if ((_model.mouseRegionTemplatesHeaderHovered ==
                                                                          true) ||
                                                                      (_model.mouseRegionTemplatesHovered ==
                                                                          true))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CONSULT_PAGE_VIEW_ALL_BTN_ON_TAP');
                                                                          if (FFAppState().templateView ==
                                                                              false) {
                                                                            if (_model.textFieldSearchTextController.text !=
                                                                                '') {
                                                                              logFirebaseEvent('Button_update_app_state');
                                                                              FFAppState().templateView = true;
                                                                              safeSetState(() {});
                                                                            } else {
                                                                              logFirebaseEvent('Button_update_app_state');
                                                                              FFAppState().templateView = true;
                                                                              FFAppState().templateref = null;
                                                                              safeSetState(() {});
                                                                            }
                                                                          } else {
                                                                            logFirebaseEvent('Button_update_app_state');
                                                                            FFAppState().templateView =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          }
                                                                        },
                                                                        text:
                                                                            'View all',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              70.0,
                                                                          height:
                                                                              20.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                              ),
                                                                          elevation:
                                                                              3.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionTemplatesHeaderHovered =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionTemplatesHeaderHovered =
                                                                        false);
                                                              }),
                                                            ),
                                                            MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.35,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.34,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: (_model.mouseRegionTemplatesHeaderHovered ==
                                                                                true) ||
                                                                            (_model.mouseRegionTemplatesHovered ==
                                                                                true)
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxHeight:
                                                                                MediaQuery.sizeOf(context).height * 0.1,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Visibility(
                                                                            visible:
                                                                                FFAppState().searchTerm == true,
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                if (_model.algoliaSearchResults1?.where((e) => e.hasIsSafetyNet() == true).toList() == null) {
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
                                                                                final matchingTemplates = _model.algoliaSearchResults1?.where((e) => e.hasIsSafetyNet() == true).toList().toList() ?? [];

                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: matchingTemplates.length,
                                                                                  itemBuilder: (context, matchingTemplatesIndex) {
                                                                                    final matchingTemplatesItem = matchingTemplates[matchingTemplatesIndex];
                                                                                    return Stack(
                                                                                      children: [
                                                                                        if ((matchingTemplatesItem.owner == null) || (matchingTemplatesItem.owner == currentUserReference) || (matchingTemplatesItem.owner?.id == '0w0BR7jueRep4nH4D0vt9oY1JAX2'))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                            child: StreamBuilder<PresentingComplaintsRecord>(
                                                                                              stream: PresentingComplaintsRecord.getDocument(matchingTemplatesItem.reference),
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

                                                                                                final containerPresentingComplaintsRecord = snapshot.data!;

                                                                                                return InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_0ejx4voj_ON_TAP');
                                                                                                    logFirebaseEvent('Container_update_app_state');
                                                                                                    FFAppState().templateref = containerPresentingComplaintsRecord.reference;
                                                                                                    safeSetState(() {});
                                                                                                    logFirebaseEvent('Container_update_page_state');
                                                                                                    _model.templateSelected = containerPresentingComplaintsRecord.pc;
                                                                                                    safeSetState(() {});
                                                                                                    logFirebaseEvent('Container_set_form_field');
                                                                                                    safeSetState(() {
                                                                                                      _model.textFieldSafetyNetSmallTextController?.text = containerPresentingComplaintsRecord.notes;
                                                                                                    });
                                                                                                    logFirebaseEvent('Container_set_form_field');
                                                                                                    safeSetState(() {
                                                                                                      _model.textFieldTextSmallTextController?.text = containerPresentingComplaintsRecord.textMessage;
                                                                                                    });
                                                                                                  },
                                                                                                  child: Container(
                                                                                                    width: double.infinity,
                                                                                                    height: 40.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                                      border: Border.all(
                                                                                                        color: containerPresentingComplaintsRecord.pc == _model.templateSelected ? FlutterFlowTheme.of(context).accent3 : Color(0x00000000),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: StreamBuilder<PresentingComplaintsRecord>(
                                                                                                      stream: PresentingComplaintsRecord.getDocument(containerPresentingComplaintsRecord.reference),
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

                                                                                                        final rowPresentingComplaintsRecord = snapshot.data!;

                                                                                                        return Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: EdgeInsets.all(5.0),
                                                                                                              child: Text(
                                                                                                                matchingTemplatesItem.pc.maybeHandleOverflow(
                                                                                                                  maxChars: 24,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            if (matchingTemplatesItem.owner == currentUserReference)
                                                                                                              Icon(
                                                                                                                Icons.star_rounded,
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        if ((matchingTemplatesItem.iNote != null) && (((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') == '') && (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) == false)) || ((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'active') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'trialing') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != ''))))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                            child: AuthUserStreamWidget(
                                                                                              builder: (context) => StreamBuilder<PresentingComplaintsRecord>(
                                                                                                stream: PresentingComplaintsRecord.getDocument(matchingTemplatesItem.reference),
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

                                                                                                  final containerPresentingComplaintsRecord = snapshot.data!;

                                                                                                  return InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('CONSULT_PAGE_Container_hvf6zymm_ON_TAP');
                                                                                                      if (matchingTemplatesItem.iNote != null) {
                                                                                                        if (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) != true) {
                                                                                                          logFirebaseEvent('Container_bottom_sheet');
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
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: Padding(
                                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                                    child: B96BottomSheetSubscribeWidget(),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          ).then((value) => safeSetState(() {}));
                                                                                                        }
                                                                                                      } else {
                                                                                                        logFirebaseEvent('Container_update_app_state');
                                                                                                        FFAppState().templateref = containerPresentingComplaintsRecord.reference;
                                                                                                        safeSetState(() {});
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldPCTextController?.text = containerPresentingComplaintsRecord.pc;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldHxTextController?.text = containerPresentingComplaintsRecord.history;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldExTextController?.text = containerPresentingComplaintsRecord.exam;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldImTextController?.text = containerPresentingComplaintsRecord.impression;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldPlanTextController?.text = containerPresentingComplaintsRecord.plan;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldNotesTextController?.text = containerPresentingComplaintsRecord.notes;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldTextTextController?.text = containerPresentingComplaintsRecord.textMessage;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldSafetyNetSmallTextController?.text = containerPresentingComplaintsRecord.notes;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldTextSmallTextController?.text = containerPresentingComplaintsRecord.textMessage;
                                                                                                        });
                                                                                                      }
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      height: 40.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0x1F4741FF),
                                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Icon(
                                                                                                            Icons.lock_outlined,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            size: 24.0,
                                                                                                          ),
                                                                                                          Text(
                                                                                                            'ClickNote',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              (FFAppState().templateref != null) && (_model.textFieldSearchTextController.text != ''),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(10.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  if (_model.textFieldSafetyNetSmallTextController.text != '')
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONSULT_PAGE_Row_tzxp5s51_ON_TAP');
                                                                                          logFirebaseEvent('Row_copy_to_clipboard');
                                                                                          await Clipboard.setData(ClipboardData(text: _model.textFieldSafetyNetSmallTextController.text));
                                                                                          logFirebaseEvent('Row_show_snack_bar');
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Text copied!',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.content_copy,
                                                                                                color: Color(0x5C000000),
                                                                                                size: 20.0,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Copy ',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: Color(0x5C000000),
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (_model.textFieldSafetyNetSmallTextController.text != '')
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(0.0, -0.66),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldSafetyNetSmallTextController,
                                                                                        focusNode: _model.textFieldSafetyNetSmallFocusNode,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: 'Safety-netting',
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 22.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                              ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              lineHeight: 1.5,
                                                                                            ),
                                                                                        maxLines: null,
                                                                                        validator: _model.textFieldSafetyNetSmallTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_efeulomj_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldTextSmallTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldTextSmallTextController,
                                                                                      focusNode: _model.textFieldTextSmallFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'Text message',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldTextSmallTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  if ((currentUserEmail == 'jamesjwalker01@gmail.com') || (currentUserEmail == 'therealcatmimi@gmail.com') || (currentUserEmail == 'roseshendi@gmail.com'))
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('CONSULT_PAGE_UPDATE_BTN_ON_TAP');
                                                                                          logFirebaseEvent('Button_backend_call');

                                                                                          await FFAppState().templateref!.update(createPresentingComplaintsRecordData(
                                                                                                notes: _model.textFieldSafetyNetSmallTextController.text,
                                                                                                textMessage: _model.textFieldTextSmallTextController.text,
                                                                                              ));
                                                                                        },
                                                                                        text: 'Update',
                                                                                        options: FFButtonOptions(
                                                                                          height: 28.16,
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ).animateOnActionTrigger(
                                                                              animationsMap['columnOnActionTriggerAnimation']!,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionTemplatesHovered =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionTemplatesHovered =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().templateView ==
                                                true)
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
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
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'All templates',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: _model.mouseRegionHovered6 ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).hover
                                                                            : FlutterFlowTheme.of(context).accent3,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              if ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                                                                  (currentUserEmail ==
                                                                      'therealcatmimi@gmail.com') ||
                                                                  (currentUserEmail ==
                                                                      'roseshendi@gmail.com'))
                                                                FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      20.0,
                                                                  icon: Icon(
                                                                    Icons.add,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 10.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CONSULT_PAGE_add_ICN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'IconButton_backend_call');

                                                                    await PresentingComplaintsRecord
                                                                        .collection
                                                                        .doc()
                                                                        .set(
                                                                            createPresentingComplaintsRecordData(
                                                                          pc: 'ZZNew',
                                                                          owner:
                                                                              currentUserReference,
                                                                        ));
                                                                  },
                                                                ),
                                                            ],
                                                          ),
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.2,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: _model.mouseRegionHovered6 ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).hover
                                                                            : FlutterFlowTheme.of(context).accent3,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child: FutureBuilder<
                                                                            List<PresentingComplaintsRecord>>(
                                                                          future:
                                                                              queryPresentingComplaintsRecordOnce(
                                                                            queryBuilder: (presentingComplaintsRecord) =>
                                                                                presentingComplaintsRecord.orderBy('pc'),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<PresentingComplaintsRecord>
                                                                                listViewPresentingComplaintsRecordList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              primary: false,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewPresentingComplaintsRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewPresentingComplaintsRecord = listViewPresentingComplaintsRecordList[listViewIndex];
                                                                                return Stack(
                                                                                  children: [
                                                                                    if ((listViewPresentingComplaintsRecord.owner == null) || (listViewPresentingComplaintsRecord.owner == currentUserReference) || (listViewPresentingComplaintsRecord.owner?.id == '0w0BR7jueRep4nH4D0vt9oY1JAX2'))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('CONSULT_PAGE_Container_pu34qc4c_ON_TAP');
                                                                                            if (listViewPresentingComplaintsRecord.iNote != null) {
                                                                                              logFirebaseEvent('Container_update_app_state');
                                                                                              FFAppState().clicknoteSelected = [];
                                                                                              FFAppState().listOfSelected = [];
                                                                                              safeSetState(() {});
                                                                                            } else {
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldHxTextController?.text = listViewPresentingComplaintsRecord.history;
                                                                                              });
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldExTextController?.text = listViewPresentingComplaintsRecord.exam;
                                                                                              });
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldImTextController?.text = listViewPresentingComplaintsRecord.impression;
                                                                                              });
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldPlanTextController?.text = listViewPresentingComplaintsRecord.plan;
                                                                                              });
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldPCTextController?.text = listViewPresentingComplaintsRecord.pc;
                                                                                              });
                                                                                              logFirebaseEvent('Container_update_app_state');
                                                                                              FFAppState().templateref = listViewPresentingComplaintsRecord.reference;
                                                                                              safeSetState(() {});
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldNotesTextController?.text = listViewPresentingComplaintsRecord.notes;
                                                                                              });
                                                                                              logFirebaseEvent('Container_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.textFieldTextTextController?.text = listViewPresentingComplaintsRecord.textMessage;
                                                                                              });
                                                                                            }
                                                                                          },
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            height: 50.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: listViewPresentingComplaintsRecord.iNote != null ? FlutterFlowTheme.of(context).accent3 : FlutterFlowTheme.of(context).primaryBackground,
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsets.all(5.0),
                                                                                                  child: Text(
                                                                                                    listViewPresentingComplaintsRecord.pc.maybeHandleOverflow(
                                                                                                      maxChars: 24,
                                                                                                      replacement: '…',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                if (listViewPresentingComplaintsRecord.owner == currentUserReference)
                                                                                                  Icon(
                                                                                                    Icons.star_rounded,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    if ((listViewPresentingComplaintsRecord.iNote != null) && (((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') == '') && (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) == false)) || ((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'active') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'trialing') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != ''))))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                        child: AuthUserStreamWidget(
                                                                                          builder: (context) => InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('CONSULT_PAGE_Container_vww39fci_ON_TAP');
                                                                                              if (listViewPresentingComplaintsRecord.iNote != null) {
                                                                                                if (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) == true) {
                                                                                                  logFirebaseEvent('Container_update_app_state');
                                                                                                  FFAppState().clicknoteSelected = [];
                                                                                                  FFAppState().listOfSelected = [];
                                                                                                  safeSetState(() {});
                                                                                                } else {
                                                                                                  logFirebaseEvent('Container_bottom_sheet');
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
                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                          },
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: B96BottomSheetSubscribeWidget(),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                }
                                                                                              } else {
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldHxTextController?.text = listViewPresentingComplaintsRecord.history;
                                                                                                });
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldExTextController?.text = listViewPresentingComplaintsRecord.exam;
                                                                                                });
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldImTextController?.text = listViewPresentingComplaintsRecord.impression;
                                                                                                });
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldPlanTextController?.text = listViewPresentingComplaintsRecord.plan;
                                                                                                });
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldPCTextController?.text = listViewPresentingComplaintsRecord.pc;
                                                                                                });
                                                                                                logFirebaseEvent('Container_update_app_state');
                                                                                                FFAppState().templateref = listViewPresentingComplaintsRecord.reference;
                                                                                                safeSetState(() {});
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldNotesTextController?.text = listViewPresentingComplaintsRecord.notes;
                                                                                                });
                                                                                                logFirebaseEvent('Container_set_form_field');
                                                                                                safeSetState(() {
                                                                                                  _model.textFieldTextTextController?.text = listViewPresentingComplaintsRecord.textMessage;
                                                                                                });
                                                                                              }
                                                                                            },
                                                                                            child: Container(
                                                                                              width: double.infinity,
                                                                                              height: 50.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x1F4741FF),
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                              ),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.lock_outlined,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                  Text(
                                                                                                    'ClickNote',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
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
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionHovered6 =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionHovered6 =
                                                                      false);
                                                            }),
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
                                                                            10.0,
                                                                            0.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'My templates',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: _model.mouseRegionMyHovered ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).hover
                                                                            : FlutterFlowTheme.of(context).accent3,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CONSULT_PAGE_ADD_NEW_BTN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await PresentingComplaintsRecord
                                                                        .collection
                                                                        .doc()
                                                                        .set(
                                                                            createPresentingComplaintsRecordData(
                                                                          pc: '*New Template*',
                                                                          owner:
                                                                              currentUserReference,
                                                                        ));
                                                                    logFirebaseEvent(
                                                                        'Button_show_snack_bar');
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Blank template created! Click and start editing.',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  },
                                                                  text:
                                                                      'Add new',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 80.0,
                                                                    height:
                                                                        20.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
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
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14.0,
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
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.2,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.245,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: _model.mouseRegionMyHovered ==
                                                                                true
                                                                            ? FlutterFlowTheme.of(context).hover
                                                                            : FlutterFlowTheme.of(context).accent3,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child: FutureBuilder<
                                                                            List<PresentingComplaintsRecord>>(
                                                                          future:
                                                                              queryPresentingComplaintsRecordOnce(
                                                                            queryBuilder: (presentingComplaintsRecord) => presentingComplaintsRecord
                                                                                .where(
                                                                                  'owner',
                                                                                  isEqualTo: currentUserReference,
                                                                                )
                                                                                .orderBy('pc'),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<PresentingComplaintsRecord>
                                                                                listViewPresentingComplaintsRecordList =
                                                                                snapshot.data!;

                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              primary: false,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: listViewPresentingComplaintsRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewPresentingComplaintsRecord = listViewPresentingComplaintsRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('CONSULT_PAGE_Container_46lbl35o_ON_TAP');
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldHxTextController?.text = listViewPresentingComplaintsRecord.history;
                                                                                      });
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldExTextController?.text = listViewPresentingComplaintsRecord.exam;
                                                                                      });
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldImTextController?.text = listViewPresentingComplaintsRecord.impression;
                                                                                      });
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldPlanTextController?.text = listViewPresentingComplaintsRecord.plan;
                                                                                      });
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldPCTextController?.text = listViewPresentingComplaintsRecord.pc;
                                                                                      });
                                                                                      logFirebaseEvent('Container_update_app_state');
                                                                                      FFAppState().templateref = listViewPresentingComplaintsRecord.reference;
                                                                                      safeSetState(() {});
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldNotesTextController?.text = listViewPresentingComplaintsRecord.notes;
                                                                                      });
                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                      safeSetState(() {
                                                                                        _model.textFieldTextTextController?.text = listViewPresentingComplaintsRecord.textMessage;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(5.0),
                                                                                            child: Text(
                                                                                              listViewPresentingComplaintsRecord.pc.maybeHandleOverflow(
                                                                                                maxChars: 24,
                                                                                                replacement: '…',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Icon(
                                                                                            Icons.star_rounded,
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            size: 24.0,
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
                                                                ),
                                                              ],
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionMyHovered =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionMyHovered =
                                                                      false);
                                                            }),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Templates matching your search',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: _model.mouseRegionHovered7 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.2,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.63,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: _model.mouseRegionHovered7 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .hover
                                                                        : FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Stack(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    children: [
                                                                      if (FFAppState()
                                                                              .searchTerm ==
                                                                          true)
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                if (_model.algoliaSearchResults1 == null) {
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
                                                                                final matchingTemplates = _model.algoliaSearchResults1?.toList() ?? [];

                                                                                return ListView.builder(
                                                                                  padding: EdgeInsets.zero,
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: matchingTemplates.length,
                                                                                  itemBuilder: (context, matchingTemplatesIndex) {
                                                                                    final matchingTemplatesItem = matchingTemplates[matchingTemplatesIndex];
                                                                                    return Stack(
                                                                                      children: [
                                                                                        if ((matchingTemplatesItem.owner == null) || (matchingTemplatesItem.owner == currentUserReference))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                            child: StreamBuilder<PresentingComplaintsRecord>(
                                                                                              stream: PresentingComplaintsRecord.getDocument(matchingTemplatesItem.reference),
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

                                                                                                final containerPresentingComplaintsRecord = snapshot.data!;

                                                                                                return InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('CONSULT_PAGE_Container_l8j88yjd_ON_TAP');
                                                                                                    if (matchingTemplatesItem.iNote != null) {
                                                                                                      logFirebaseEvent('Container_update_app_state');
                                                                                                      FFAppState().clicknoteSelected = [];
                                                                                                      FFAppState().listOfSelected = [];
                                                                                                      safeSetState(() {});
                                                                                                    } else {
                                                                                                      logFirebaseEvent('Container_update_app_state');
                                                                                                      FFAppState().templateref = containerPresentingComplaintsRecord.reference;
                                                                                                      safeSetState(() {});
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldHxTextController?.text = containerPresentingComplaintsRecord.history;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldExTextController?.text = containerPresentingComplaintsRecord.exam;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldImTextController?.text = containerPresentingComplaintsRecord.impression;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldPlanTextController?.text = containerPresentingComplaintsRecord.plan;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldPCTextController?.text = containerPresentingComplaintsRecord.pc;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldNotesTextController?.text = containerPresentingComplaintsRecord.notes;
                                                                                                      });
                                                                                                      logFirebaseEvent('Container_set_form_field');
                                                                                                      safeSetState(() {
                                                                                                        _model.textFieldTextTextController?.text = containerPresentingComplaintsRecord.textMessage;
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Container(
                                                                                                    width: double.infinity,
                                                                                                    height: 50.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: matchingTemplatesItem.iNote != null ? FlutterFlowTheme.of(context).accent3 : FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                                    ),
                                                                                                    child: StreamBuilder<PresentingComplaintsRecord>(
                                                                                                      stream: PresentingComplaintsRecord.getDocument(containerPresentingComplaintsRecord.reference),
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

                                                                                                        final rowPresentingComplaintsRecord = snapshot.data!;

                                                                                                        return Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: EdgeInsets.all(5.0),
                                                                                                              child: Text(
                                                                                                                matchingTemplatesItem.pc.maybeHandleOverflow(
                                                                                                                  maxChars: 24,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            if (rowPresentingComplaintsRecord.owner == currentUserReference)
                                                                                                              Icon(
                                                                                                                Icons.star_rounded,
                                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        if ((matchingTemplatesItem.iNote != null) && (((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') == '') && (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) == false)) || ((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'active') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'trialing') && (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != ''))))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                                                                                            child: AuthUserStreamWidget(
                                                                                              builder: (context) => StreamBuilder<PresentingComplaintsRecord>(
                                                                                                stream: PresentingComplaintsRecord.getDocument(matchingTemplatesItem.reference),
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

                                                                                                  final containerPresentingComplaintsRecord = snapshot.data!;

                                                                                                  return InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('CONSULT_PAGE_Container_gmqjmqcj_ON_TAP');
                                                                                                      if (matchingTemplatesItem.iNote != null) {
                                                                                                        if (valueOrDefault<bool>(currentUserDocument?.activeMembership, false) == true) {
                                                                                                          logFirebaseEvent('Container_update_app_state');
                                                                                                          FFAppState().clicknoteSelected = [];
                                                                                                          FFAppState().listOfSelected = [];
                                                                                                          safeSetState(() {});
                                                                                                        } else {
                                                                                                          logFirebaseEvent('Container_bottom_sheet');
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
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: Padding(
                                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                                    child: B96BottomSheetSubscribeWidget(),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          ).then((value) => safeSetState(() {}));
                                                                                                        }
                                                                                                      } else {
                                                                                                        logFirebaseEvent('Container_update_app_state');
                                                                                                        FFAppState().templateref = containerPresentingComplaintsRecord.reference;
                                                                                                        safeSetState(() {});
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldHxTextController?.text = containerPresentingComplaintsRecord.history;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldExTextController?.text = containerPresentingComplaintsRecord.exam;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldImTextController?.text = containerPresentingComplaintsRecord.impression;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldPlanTextController?.text = containerPresentingComplaintsRecord.plan;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldPCTextController?.text = containerPresentingComplaintsRecord.pc;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldNotesTextController?.text = containerPresentingComplaintsRecord.notes;
                                                                                                        });
                                                                                                        logFirebaseEvent('Container_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.textFieldTextTextController?.text = containerPresentingComplaintsRecord.textMessage;
                                                                                                        });
                                                                                                      }
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      height: 50.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0x1F4741FF),
                                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Icon(
                                                                                                            Icons.lock_outlined,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            size: 24.0,
                                                                                                          ),
                                                                                                          Text(
                                                                                                            'ClickNote',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionHovered7 =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mouseRegionHovered7 =
                                                                      false);
                                                            }),
                                                          ),
                                                        ],
                                                      ),
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'CONSULT_PAGE_GO_BACK_BTN_ON_TAP');
                                                                if (FFAppState()
                                                                        .templateView ==
                                                                    false) {
                                                                  if (_model
                                                                          .textFieldSearchTextController
                                                                          .text !=
                                                                      '') {
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    FFAppState()
                                                                            .templateView =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_update_app_state');
                                                                    FFAppState()
                                                                            .templateView =
                                                                        true;
                                                                    FFAppState()
                                                                            .templateref =
                                                                        null;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_update_app_state');
                                                                  FFAppState()
                                                                          .templateView =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              },
                                                              text: 'Go back',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 30.0,
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.5,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  primary:
                                                                      false,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (FFAppState()
                                                                              .templateref !=
                                                                          null)
                                                                        StreamBuilder<
                                                                            PresentingComplaintsRecord>(
                                                                          stream:
                                                                              PresentingComplaintsRecord.getDocument(FFAppState().templateref!),
                                                                          builder:
                                                                              (context, snapshot) {
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

                                                                            final columnPresentingComplaintsRecord =
                                                                                snapshot.data!;

                                                                            return SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldPCTextController,
                                                                                      focusNode: _model.textFieldPCFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              decoration: TextDecoration.underline,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: InputBorder.none,
                                                                                        focusedBorder: InputBorder.none,
                                                                                        errorBorder: InputBorder.none,
                                                                                        focusedErrorBorder: InputBorder.none,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      textAlign: TextAlign.center,
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldPCTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_4byk0fo9_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldHxTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldHxTextController,
                                                                                      focusNode: _model.textFieldHxFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'History',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldHxTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_1xcwfy59_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldExTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldExTextController,
                                                                                      focusNode: _model.textFieldExFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'Examination',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldExTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_zm21y72b_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldImTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldImTextController,
                                                                                      focusNode: _model.textFieldImFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'Impression',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldImTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_j511upgy_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldPlanTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldPlanTextController,
                                                                                      focusNode: _model.textFieldPlanFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'Plan',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldPlanTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_7ck7gu3q_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldNotesTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: TextFormField(
                                                                                      controller: _model.textFieldNotesTextController,
                                                                                      focusNode: _model.textFieldNotesFocusNode,
                                                                                      autofocus: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: 'Safety-netting',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 22.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            lineHeight: 1.5,
                                                                                          ),
                                                                                      maxLines: null,
                                                                                      validator: _model.textFieldNotesTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('CONSULT_PAGE_Row_nls9qlc1_ON_TAP');
                                                                                        logFirebaseEvent('Row_copy_to_clipboard');
                                                                                        await Clipboard.setData(ClipboardData(text: _model.textFieldTextTextController.text));
                                                                                        logFirebaseEvent('Row_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Text copied!',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.content_copy,
                                                                                              color: Color(0x5C000000),
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Copy ',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: Color(0x5C000000),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, -0.66),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldTextTextController,
                                                                                        focusNode: _model.textFieldTextFocusNode,
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: 'Text message',
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 22.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                              ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              lineHeight: 1.5,
                                                                                            ),
                                                                                        maxLines: null,
                                                                                        validator: _model.textFieldTextTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  if (columnPresentingComplaintsRecord.owner == currentUserReference)
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('CONSULT_PAGE_SAVE_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_backend_call');

                                                                                              await FFAppState().templateref!.update(createPresentingComplaintsRecordData(
                                                                                                    history: _model.textFieldHxTextController.text,
                                                                                                    exam: _model.textFieldExTextController.text,
                                                                                                    impression: _model.textFieldImTextController.text,
                                                                                                    plan: _model.textFieldPlanTextController.text,
                                                                                                    pc: _model.textFieldPCTextController.text,
                                                                                                    notes: _model.textFieldNotesTextController.text,
                                                                                                    textMessage: _model.textFieldTextTextController.text,
                                                                                                  ));
                                                                                            },
                                                                                            text: 'Save',
                                                                                            options: FFButtonOptions(
                                                                                              height: 28.16,
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
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('CONSULT_PAGE_DELETE_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_backend_call');
                                                                                              await FFAppState().templateref!.delete();
                                                                                            },
                                                                                            text: 'Delete',
                                                                                            options: FFButtonOptions(
                                                                                              height: 28.16,
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
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      if ((currentUserEmail == 'jamesjwalker01@gmail.com') || (currentUserEmail == 'therealcatmimi@gmail.com') || (currentUserEmail == 'roseshendi@gmail.com'))
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('CONSULT_PAGE_UPDATE_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_backend_call');

                                                                                              await FFAppState().templateref!.update(createPresentingComplaintsRecordData(
                                                                                                    history: _model.textFieldHxTextController.text,
                                                                                                    exam: _model.textFieldExTextController.text,
                                                                                                    impression: _model.textFieldImTextController.text,
                                                                                                    plan: _model.textFieldPlanTextController.text,
                                                                                                    pc: _model.textFieldPCTextController.text,
                                                                                                    notes: _model.textFieldNotesTextController.text,
                                                                                                    textMessage: _model.textFieldTextTextController.text,
                                                                                                  ));
                                                                                            },
                                                                                            text: 'Update',
                                                                                            options: FFButtonOptions(
                                                                                              height: 28.16,
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
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
                                                                                        ),
                                                                                      if ((currentUserEmail == 'jamesjwalker01@gmail.com') || (currentUserEmail == 'therealcatmimi@gmail.com') || (currentUserEmail == 'roseshendi@gmail.com'))
                                                                                        Transform.scale(
                                                                                          scaleX: 0.7,
                                                                                          scaleY: 0.7,
                                                                                          child: Switch.adaptive(
                                                                                            value: _model.switchValue ??= columnPresentingComplaintsRecord.isSafetyNet,
                                                                                            onChanged: (newValue) async {
                                                                                              safeSetState(() => _model.switchValue = newValue);
                                                                                              if (newValue) {
                                                                                                logFirebaseEvent('CONSULT_Switch_gbwj8o5u_ON_TOGGLE_ON');
                                                                                                logFirebaseEvent('Switch_backend_call');

                                                                                                await FFAppState().templateref!.update(createPresentingComplaintsRecordData(
                                                                                                      isSafetyNet: true,
                                                                                                    ));
                                                                                              } else {
                                                                                                logFirebaseEvent('CONSULT_Switch_gbwj8o5u_ON_TOGGLE_OFF');
                                                                                                logFirebaseEvent('Switch_backend_call');

                                                                                                await FFAppState().templateref!.update(createPresentingComplaintsRecordData(
                                                                                                      isSafetyNet: false,
                                                                                                    ));
                                                                                              }
                                                                                            },
                                                                                            activeColor: FlutterFlowTheme.of(context).primary,
                                                                                            activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                            inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                            inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          ),
                                                                                        ),
                                                                                      if ((currentUserEmail == 'jamesjwalker01@gmail.com') || (currentUserEmail == 'therealcatmimi@gmail.com') || (currentUserEmail == 'roseshendi@gmail.com'))
                                                                                        Text(
                                                                                          '[Only visible to admin]',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      if ((currentUserEmail == 'jamesjwalker01@gmail.com') || (currentUserEmail == 'therealcatmimi@gmail.com') || (currentUserEmail == 'roseshendi@gmail.com'))
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              logFirebaseEvent('CONSULT_PAGE_DELETE_BTN_ON_TAP');
                                                                                              logFirebaseEvent('Button_backend_call');
                                                                                              await FFAppState().templateref!.delete();
                                                                                            },
                                                                                            text: 'Delete',
                                                                                            options: FFButtonOptions(
                                                                                              height: 28.16,
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
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
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
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
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 218.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Text(
                                  'iConsult is currently only available on desktop',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.horizontalNavbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HorizontalNavbarWidget(
                    homeColour:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    consultColour: FlutterFlowTheme.of(context).primary,
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
                    jobsColour:
                        FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
