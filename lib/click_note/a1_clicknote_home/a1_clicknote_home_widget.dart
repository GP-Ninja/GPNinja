import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/a2_clicknote_block/a2_clicknote_block_widget.dart';
import '/click_note/a3_clicknote_block_small/a3_clicknote_block_small_widget.dart';
import '/click_note/b96_bottom_sheet_subscribe/b96_bottom_sheet_subscribe_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'a1_clicknote_home_model.dart';
export 'a1_clicknote_home_model.dart';

class A1ClicknoteHomeWidget extends StatefulWidget {
  const A1ClicknoteHomeWidget({super.key});

  @override
  State<A1ClicknoteHomeWidget> createState() => _A1ClicknoteHomeWidgetState();
}

class _A1ClicknoteHomeWidgetState extends State<A1ClicknoteHomeWidget>
    with TickerProviderStateMixin {
  late A1ClicknoteHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A1ClicknoteHomeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'a1_clicknote_home'});
    _model.switchViewValue = FFAppState().largeTiles;
    _model.textFieldSearchTextController ??= TextEditingController();
    _model.textFieldSearchFocusNode ??= FocusNode();

    _model.textFieldMyTemplateTextController ??= TextEditingController();
    _model.textFieldMyTemplateFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
    context.watch<FFAppState>();

    return StreamBuilder<List<FlattenedTemplatesRecord>>(
      stream: FFAppState().templates(
        requestFn: () => queryFlattenedTemplatesRecord(
          queryBuilder: (flattenedTemplatesRecord) => flattenedTemplatesRecord
              .where(
                'template_is_admin_owned',
                isEqualTo: true,
              )
              .orderBy('template_name'),
        ),
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
        List<FlattenedTemplatesRecord>
            a1ClicknoteHomeFlattenedTemplatesRecordList = snapshot.data!;

        return Title(
            title: 'ClickNote',
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
                body: SafeArea(
                  top: true,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                              clickNoteColour:
                                  FlutterFlowTheme.of(context).primary,
                              reflectColour: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
                        Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Welcome to ClickNote',
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displayMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .displayMediumFamily),
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              'Your lightning-fast documentation tool',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 50.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'A1_CLICKNOTE_HOME_Container_c6rhz700_ON_');
                                          logFirebaseEvent(
                                              'Container_launch_u_r_l');
                                          await launchURL(
                                              'https://firebasestorage.googleapis.com/v0/b/gpninja-1c716.appspot.com/o/CreateClickNoteFinal.mp4?alt=media&token=135c7230-0ecd-4ecc-b6fb-0774cb3f189a');
                                        },
                                        child: Container(
                                          width: 227.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegionHovered ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 189.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'View tutorial on creating your own ClickNote templates',
                                                    textAlign: TextAlign.center,
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
                                                Icon(
                                                  Icons.open_in_new,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(
                                        () => _model.mouseRegionHovered = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered = false);
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        if (_model.myTemplates == false)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: 141.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent3,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 5.0, 0.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      FFAppState().largeTiles ==
                                                              false
                                                          ? 'Small tiles'
                                                          : 'Large tiles',
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
                                                    Transform.scale(
                                                      scaleX: 0.7,
                                                      scaleY: 0.7,
                                                      child: Switch.adaptive(
                                                        value: _model
                                                            .switchViewValue!,
                                                        onChanged:
                                                            (newValue) async {
                                                          safeSetState(() =>
                                                              _model.switchViewValue =
                                                                  newValue);
                                                          if (newValue) {
                                                            logFirebaseEvent(
                                                                'A1_CLICKNOTE_HOME_SwitchView_ON_TOGGLE_O');
                                                            logFirebaseEvent(
                                                                'SwitchView_update_app_state');
                                                            FFAppState()
                                                                    .largeTiles =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            logFirebaseEvent(
                                                                'A1_CLICKNOTE_HOME_SwitchView_ON_TOGGLE_O');
                                                            logFirebaseEvent(
                                                                'SwitchView_update_app_state');
                                                            FFAppState()
                                                                    .largeTiles =
                                                                false;
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        inactiveThumbColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        if ((_model.myTemplates == false) &&
                                            responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                            ))
                                          Container(
                                            width: 300.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldSearchTextController,
                                              focusNode: _model
                                                  .textFieldSearchFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textFieldSearchTextController',
                                                Duration(milliseconds: 500),
                                                () async {
                                                  logFirebaseEvent(
                                                      'A1_CLICKNOTE_HOME_TextFieldSearch_ON_TEX');
                                                  logFirebaseEvent(
                                                      'TextFieldSearch_simple_search');
                                                  await queryFlattenedTemplatesRecordOnce()
                                                      .then(
                                                        (records) => _model
                                                                .simpleSearchResults =
                                                            TextSearch(
                                                          records
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem
                                                                        .fromTerms(
                                                                            record,
                                                                            [
                                                                      record
                                                                          .templateName
                                                                    ]),
                                                              )
                                                              .toList(),
                                                        )
                                                                .search(_model
                                                                    .textFieldSearchTextController
                                                                    .text)
                                                                .map((r) =>
                                                                    r.object)
                                                                .toList(),
                                                      )
                                                      .onError((_, __) => _model
                                                              .simpleSearchResults =
                                                          [])
                                                      .whenComplete(() =>
                                                          safeSetState(() {}));
                                                },
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                hintText: 'Type here...',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                prefixIcon: Icon(
                                                  Icons.search,
                                                ),
                                                suffixIcon: _model
                                                        .textFieldSearchTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .textFieldSearchTextController
                                                              ?.clear();
                                                          logFirebaseEvent(
                                                              'A1_CLICKNOTE_HOME_TextFieldSearch_ON_TEX');
                                                          logFirebaseEvent(
                                                              'TextFieldSearch_simple_search');
                                                          await queryFlattenedTemplatesRecordOnce()
                                                              .then(
                                                                (records) => _model
                                                                        .simpleSearchResults =
                                                                    TextSearch(
                                                                  records
                                                                      .map(
                                                                        (record) => TextSearchItem.fromTerms(
                                                                            record,
                                                                            [
                                                                              record.templateName
                                                                            ]),
                                                                      )
                                                                      .toList(),
                                                                )
                                                                        .search(_model
                                                                            .textFieldSearchTextController
                                                                            .text)
                                                                        .map((r) =>
                                                                            r.object)
                                                                        .toList(),
                                                              )
                                                              .onError((_,
                                                                      __) =>
                                                                  _model.simpleSearchResults =
                                                                      [])
                                                              .whenComplete(() =>
                                                                  safeSetState(
                                                                      () {}));

                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 20.0,
                                                        ),
                                                      )
                                                    : null,
                                              ),
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
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .textFieldSearchTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        if (responsiveVisibility(
                                          context: context,
                                          desktop: false,
                                        ))
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
                                            child: Text(
                                              'Templates',
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
                                          ),
                                      ],
                                    ),
                                    if ((_model.textFieldSearchTextController
                                                    .text ==
                                                '') &&
                                        (_model.myTemplates == false))
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.77,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            child: Builder(
                                              builder: (context) {
                                                final templates =
                                                    a1ClicknoteHomeFlattenedTemplatesRecordList
                                                        .toList();

                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: FFAppState()
                                                                .largeTiles ==
                                                            false
                                                        ? 5
                                                        : 3,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    childAspectRatio: 2.5,
                                                  ),
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: templates.length,
                                                  itemBuilder: (context,
                                                      templatesIndex) {
                                                    final templatesItem =
                                                        templates[
                                                            templatesIndex];
                                                    return Visibility(
                                                      visible: ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                                                              (currentUserEmail ==
                                                                  'therealcatmimi@gmail.com') ||
                                                              (currentUserEmail ==
                                                                  'roseshendi@gmail.com')) ||
                                                          (templatesItem
                                                                  .templateIsPublished ==
                                                              true),
                                                      child:
                                                          A2ClicknoteBlockWidget(
                                                        key: Key(
                                                            'Keyc3n_${templatesIndex}_of_${templates.length}'),
                                                        image: templatesItem
                                                            .templateIcon,
                                                        title: templatesItem
                                                            .templateName,
                                                        templateRef:
                                                            templatesItem
                                                                .reference,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    if ((_model.textFieldSearchTextController
                                                    .text !=
                                                '') &&
                                        (_model.myTemplates == false))
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.77,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            child: Builder(
                                              builder: (context) {
                                                final list2 = _model
                                                    .simpleSearchResults
                                                    .where((e) =>
                                                        (e.templateUser ==
                                                            currentUserReference) ||
                                                        (e.templateIsAdminOwned ==
                                                            true))
                                                    .toList();

                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    childAspectRatio: 2.5,
                                                  ),
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: list2.length,
                                                  itemBuilder:
                                                      (context, list2Index) {
                                                    final list2Item =
                                                        list2[list2Index];
                                                    return A2ClicknoteBlockWidget(
                                                      key: Key(
                                                          'Keygtf_${list2Index}_of_${list2.length}'),
                                                      image: list2Item
                                                          .templateIcon,
                                                      title: list2Item
                                                          .templateName,
                                                      templateRef:
                                                          list2Item.reference,
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
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: 45.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Text(
                                          'My templates',
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
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.77,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.3,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent3,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 20.0),
                                                child: StreamBuilder<
                                                    List<
                                                        FlattenedTemplatesRecord>>(
                                                  stream:
                                                      _model.myTemplatesCache(
                                                    requestFn: () =>
                                                        queryFlattenedTemplatesRecord(
                                                      queryBuilder:
                                                          (flattenedTemplatesRecord) =>
                                                              flattenedTemplatesRecord
                                                                  .where(
                                                                    'template_user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .orderBy(
                                                                      'template_name'),
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
                                                    List<FlattenedTemplatesRecord>
                                                        listViewFlattenedTemplatesRecordList =
                                                        snapshot.data!;

                                                    return ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewFlattenedTemplatesRecordList
                                                              .length,
                                                      separatorBuilder:
                                                          (_, __) => SizedBox(
                                                              height: 10.0),
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewFlattenedTemplatesRecord =
                                                            listViewFlattenedTemplatesRecordList[
                                                                listViewIndex];
                                                        return A3ClicknoteBlockSmallWidget(
                                                          key: Key(
                                                              'Key3zw_${listViewIndex}_of_${listViewFlattenedTemplatesRecordList.length}'),
                                                          image:
                                                              listViewFlattenedTemplatesRecord
                                                                  .templateIcon,
                                                          title:
                                                              listViewFlattenedTemplatesRecord
                                                                  .templateName,
                                                          templateRef:
                                                              listViewFlattenedTemplatesRecord
                                                                  .reference,
                                                          userRef:
                                                              listViewFlattenedTemplatesRecord
                                                                  .templateUser!,
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.25,
                                                height: 45.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    5.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          width: 200.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldMyTemplateTextController,
                                                            focusNode: _model
                                                                .textFieldMyTemplateFocusNode,
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              logFirebaseEvent(
                                                                  'A1_CLICKNOTE_HOME_TextFieldMyTemplate_ON');
                                                              if (((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') ==
                                                                              '') &&
                                                                      (valueOrDefault<bool>(
                                                                              currentUserDocument
                                                                                  ?.activeMembership,
                                                                              false) ==
                                                                          false)) ||
                                                                  ((valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') != 'active') &&
                                                                      (valueOrDefault(
                                                                              currentUserDocument
                                                                                  ?.stripeSubscriptionStatus,
                                                                              '') !=
                                                                          'trialing') &&
                                                                      (valueOrDefault(currentUserDocument?.stripeSubscriptionStatus, '') !=
                                                                              ''))) {
                                                                logFirebaseEvent(
                                                                    'TextFieldMyTemplate_bottom_sheet');
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              B96BottomSheetSubscribeWidget(
                                                                            iNotePage:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'TextFieldMyTemplate_backend_call');

                                                                var flattenedTemplatesRecordReference =
                                                                    FlattenedTemplatesRecord
                                                                        .collection
                                                                        .doc();
                                                                await flattenedTemplatesRecordReference
                                                                    .set({
                                                                  ...createFlattenedTemplatesRecordData(
                                                                    templateName:
                                                                        _model
                                                                            .textFieldMyTemplateTextController
                                                                            .text,
                                                                    templateUser:
                                                                        currentUserReference,
                                                                    templateIsPublished:
                                                                        false,
                                                                    templateIsAdminOwned:
                                                                        false,
                                                                    templateIsCommunityTemplate:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'template_sections':
                                                                          [
                                                                        getClicknoteSectionFirestoreData(
                                                                          updateClicknoteSectionStruct(
                                                                            ClicknoteSectionStruct(
                                                                              sectionIndex: 0,
                                                                              sectionText: 'History',
                                                                            ),
                                                                            clearUnsetFields:
                                                                                false,
                                                                            create:
                                                                                true,
                                                                          ),
                                                                          true,
                                                                        )
                                                                      ],
                                                                    },
                                                                  ),
                                                                });
                                                                _model.myNewTemplate1Copy =
                                                                    FlattenedTemplatesRecord
                                                                        .getDocumentFromData({
                                                                  ...createFlattenedTemplatesRecordData(
                                                                    templateName:
                                                                        _model
                                                                            .textFieldMyTemplateTextController
                                                                            .text,
                                                                    templateUser:
                                                                        currentUserReference,
                                                                    templateIsPublished:
                                                                        false,
                                                                    templateIsAdminOwned:
                                                                        false,
                                                                    templateIsCommunityTemplate:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'template_sections':
                                                                          [
                                                                        getClicknoteSectionFirestoreData(
                                                                          updateClicknoteSectionStruct(
                                                                            ClicknoteSectionStruct(
                                                                              sectionIndex: 0,
                                                                              sectionText: 'History',
                                                                            ),
                                                                            clearUnsetFields:
                                                                                false,
                                                                            create:
                                                                                true,
                                                                          ),
                                                                          true,
                                                                        )
                                                                      ],
                                                                    },
                                                                  ),
                                                                }, flattenedTemplatesRecordReference);
                                                                logFirebaseEvent(
                                                                    'TextFieldMyTemplate_clear_text_fields_pi');
                                                                safeSetState(
                                                                    () {
                                                                  _model
                                                                      .textFieldMyTemplateTextController
                                                                      ?.clear();
                                                                });
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              hintText:
                                                                  'Template name',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
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
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            validator: _model
                                                                .textFieldMyTemplateTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'A1_CLICKNOTE_HOME_PAGE_CREATE_BTN_ON_TAP');
                                                          if (((valueOrDefault(
                                                                              currentUserDocument
                                                                                  ?.stripeSubscriptionStatus,
                                                                              '') ==
                                                                          '') &&
                                                                  (valueOrDefault<
                                                                              bool>(
                                                                          currentUserDocument
                                                                              ?.activeMembership,
                                                                          false) ==
                                                                      false)) ||
                                                              ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.stripeSubscriptionStatus,
                                                                          '') !=
                                                                      'active') &&
                                                                  (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.stripeSubscriptionStatus,
                                                                          '') !=
                                                                      'trialing') &&
                                                                  (valueOrDefault(
                                                                              currentUserDocument?.stripeSubscriptionStatus,
                                                                              '') !=
                                                                          ''))) {
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
                                                              builder:
                                                                  (context) {
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
                                                                          B96BottomSheetSubscribeWidget(
                                                                        iNotePage:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          } else {
                                                            if (_model.textFieldMyTemplateTextController
                                                                        .text !=
                                                                    '') {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');

                                                              var flattenedTemplatesRecordReference =
                                                                  FlattenedTemplatesRecord
                                                                      .collection
                                                                      .doc();
                                                              await flattenedTemplatesRecordReference
                                                                  .set({
                                                                ...createFlattenedTemplatesRecordData(
                                                                  templateName:
                                                                      _model
                                                                          .textFieldMyTemplateTextController
                                                                          .text,
                                                                  templateUser:
                                                                      currentUserReference,
                                                                  templateIsPublished:
                                                                      false,
                                                                  templateIsAdminOwned:
                                                                      false,
                                                                  templateIsCommunityTemplate:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'template_sections':
                                                                        [
                                                                      getClicknoteSectionFirestoreData(
                                                                        updateClicknoteSectionStruct(
                                                                          ClicknoteSectionStruct(
                                                                            sectionIndex:
                                                                                0,
                                                                            sectionText:
                                                                                'History',
                                                                          ),
                                                                          clearUnsetFields:
                                                                              false,
                                                                          create:
                                                                              true,
                                                                        ),
                                                                        true,
                                                                      )
                                                                    ],
                                                                  },
                                                                ),
                                                              });
                                                              _model.myNewTemplate1CopyCopy =
                                                                  FlattenedTemplatesRecord
                                                                      .getDocumentFromData({
                                                                ...createFlattenedTemplatesRecordData(
                                                                  templateName:
                                                                      _model
                                                                          .textFieldMyTemplateTextController
                                                                          .text,
                                                                  templateUser:
                                                                      currentUserReference,
                                                                  templateIsPublished:
                                                                      false,
                                                                  templateIsAdminOwned:
                                                                      false,
                                                                  templateIsCommunityTemplate:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'template_sections':
                                                                        [
                                                                      getClicknoteSectionFirestoreData(
                                                                        updateClicknoteSectionStruct(
                                                                          ClicknoteSectionStruct(
                                                                            sectionIndex:
                                                                                0,
                                                                            sectionText:
                                                                                'History',
                                                                          ),
                                                                          clearUnsetFields:
                                                                              false,
                                                                          create:
                                                                              true,
                                                                        ),
                                                                        true,
                                                                      )
                                                                    ],
                                                                  },
                                                                ),
                                                              }, flattenedTemplatesRecordReference);
                                                              logFirebaseEvent(
                                                                  'Button_clear_text_fields_pin_codes');
                                                              safeSetState(() {
                                                                _model
                                                                    .textFieldMyTemplateTextController
                                                                    ?.clear();
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_show_snack_bar');
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Please enter a title for your new template!',
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
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                        text: 'Create',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 33.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
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
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
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
                                              tabletLandscape: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Community templates',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              desktop: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Community',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.25,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.35,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 20.0,
                                                          20.0, 20.0),
                                                  child: StreamBuilder<
                                                      List<
                                                          FlattenedTemplatesRecord>>(
                                                    stream: _model
                                                        .communityTemplatesCache(
                                                      requestFn: () =>
                                                          queryFlattenedTemplatesRecord(
                                                        queryBuilder:
                                                            (flattenedTemplatesRecord) =>
                                                                flattenedTemplatesRecord
                                                                    .where(
                                                                      'template_is_community_template',
                                                                      isEqualTo:
                                                                          true,
                                                                    )
                                                                    .orderBy(
                                                                        'template_name'),
                                                      ),
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<FlattenedTemplatesRecord>
                                                          listViewFlattenedTemplatesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewFlattenedTemplatesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                height: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewFlattenedTemplatesRecord =
                                                              listViewFlattenedTemplatesRecordList[
                                                                  listViewIndex];
                                                          return A3ClicknoteBlockSmallWidget(
                                                            key: Key(
                                                                'Keyd22_${listViewIndex}_of_${listViewFlattenedTemplatesRecordList.length}'),
                                                            image:
                                                                listViewFlattenedTemplatesRecord
                                                                    .templateIcon,
                                                            title:
                                                                listViewFlattenedTemplatesRecord
                                                                    .templateName,
                                                            templateRef:
                                                                listViewFlattenedTemplatesRecord
                                                                    .reference,
                                                            userRef:
                                                                listViewFlattenedTemplatesRecord
                                                                    .templateUser!,
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
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        if ((currentUserEmail == 'jamesjwalker01@gmail.com') &&
                            (FFAppState().demoMode == false))
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.744,
                              height: MediaQuery.sizeOf(context).height * 0.67,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent3,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 20.0),
                                child: StreamBuilder<
                                    List<FlattenedTemplatesRecord>>(
                                  stream: queryFlattenedTemplatesRecord(
                                    queryBuilder: (flattenedTemplatesRecord) =>
                                        flattenedTemplatesRecord.where(
                                      'template_user',
                                      isNotEqualTo: currentUserReference,
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<FlattenedTemplatesRecord>
                                        gridViewFlattenedTemplatesRecordList =
                                        snapshot.data!;

                                    return GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0,
                                        childAspectRatio: 2.5,
                                      ),
                                      primary: false,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          gridViewFlattenedTemplatesRecordList
                                              .length,
                                      itemBuilder: (context, gridViewIndex) {
                                        final gridViewFlattenedTemplatesRecord =
                                            gridViewFlattenedTemplatesRecordList[
                                                gridViewIndex];
                                        return Stack(
                                          children: [
                                            A2ClicknoteBlockWidget(
                                              key: Key(
                                                  'Keyzew_${gridViewIndex}_of_${gridViewFlattenedTemplatesRecordList.length}'),
                                              image:
                                                  gridViewFlattenedTemplatesRecord
                                                      .templateIcon,
                                              title:
                                                  gridViewFlattenedTemplatesRecord
                                                      .templateName,
                                              templateRef:
                                                  gridViewFlattenedTemplatesRecord
                                                      .reference,
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 25.0),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream: UsersRecord.getDocument(
                                                      gridViewFlattenedTemplatesRecord
                                                          .templateUser!),
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

                                                    final textUsersRecord =
                                                        snapshot.data!;

                                                    return Text(
                                                      textUsersRecord
                                                          .displayName,
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
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
