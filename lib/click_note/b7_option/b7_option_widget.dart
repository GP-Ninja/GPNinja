import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b7a_edit_option_text/b7a_edit_option_text_widget.dart';
import '/click_note/b93_bottom_sheet_webview/b93_bottom_sheet_webview_widget.dart';
import '/click_note/b94_bottom_sheet_edit_option/b94_bottom_sheet_edit_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'b7_option_model.dart';
export 'b7_option_model.dart';

class B7OptionWidget extends StatefulWidget {
  const B7OptionWidget({
    super.key,
    required this.optionText,
    required this.optionIndex,
    this.optionHasURL,
    this.optionURL,
    this.urlOptions,
    this.urlPropmt,
    this.isMedication,
    this.bnfURL,
    this.bnfcURL,
    this.isRedFlag,
    this.hasNote,
    this.optionNote,
    this.noteColour,
    this.urlIsWebview,
    this.redLight,
    this.amberLight,
    this.greenLight,
    required this.templateOwner,
    required this.pasteFromOption,
    required this.removeSelected,
    required this.passOnBottomSheetSelection,
    required this.sectionIndex,
    required this.rowIndex,
    required this.templateRef,
    required this.optionsCount,
    required this.sections,
    required this.optionHasNote,
    required this.isCommunityTemplate,
  });

  final String? optionText;
  final int? optionIndex;
  final bool? optionHasURL;
  final String? optionURL;
  final List<String>? urlOptions;
  final String? urlPropmt;
  final bool? isMedication;
  final String? bnfURL;
  final String? bnfcURL;
  final bool? isRedFlag;
  final bool? hasNote;
  final String? optionNote;
  final Color? noteColour;
  final bool? urlIsWebview;
  final bool? redLight;
  final bool? amberLight;
  final bool? greenLight;
  final DocumentReference? templateOwner;
  final Future Function(String optionTextToPaste)? pasteFromOption;
  final Future Function(String optionTextToRemove)? removeSelected;
  final Future Function(String bottomSheetSelection)?
      passOnBottomSheetSelection;
  final int? sectionIndex;
  final int? rowIndex;
  final DocumentReference? templateRef;
  final int? optionsCount;
  final List<ClicknoteSectionStruct>? sections;
  final bool? optionHasNote;
  final bool? isCommunityTemplate;

  @override
  State<B7OptionWidget> createState() => _B7OptionWidgetState();
}

class _B7OptionWidgetState extends State<B7OptionWidget> {
  late B7OptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B7OptionModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('B7_OPTION_COMP_b7_option_ON_INIT_STATE');
      logFirebaseEvent('b7_option_update_component_state');
      _model.optionText = widget.optionText;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (FFAppState().compactView == false)
          Container(
            width: 20.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        if (FFAppState().compactView == true)
          Container(
            width: 5.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        Flexible(
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                if (_model.editOptionView == false)
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Stack(
                      children: [
                        if (FFAppState().dragEnabled == true)
                          Draggable<String>(
                            data: widget.optionText!,
                            feedback: Material(
                              type: MaterialType.transparency,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'B7_OPTION_COMP_Container_nnsi2rgq_ON_TAP');
                                    if (_model.isSelected == true) {
                                      logFirebaseEvent(
                                          'Container_update_component_state');
                                      _model.isSelected = false;
                                      safeSetState(() {});
                                      logFirebaseEvent(
                                          'Container_execute_callback');
                                      await widget.removeSelected?.call(
                                        widget.optionText!,
                                      );
                                    } else {
                                      logFirebaseEvent(
                                          'Container_update_component_state');
                                      _model.isSelected = true;
                                      safeSetState(() {});
                                      if ((widget.optionHasURL == true) &&
                                          (widget.urlIsWebview == true)) {
                                        logFirebaseEvent(
                                            'Container_bottom_sheet');
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    B93BottomSheetWebviewWidget(
                                                  url: widget.optionURL!,
                                                  optionText:
                                                      widget.optionText!,
                                                  urlOptions:
                                                      widget.urlOptions,
                                                  urlPrompt: widget.urlPropmt,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() =>
                                            _model.optionOutput1Copy = value));

                                        logFirebaseEvent(
                                            'Container_execute_callback');
                                        await widget.passOnBottomSheetSelection
                                            ?.call(
                                          _model.optionOutput1Copy!,
                                        );
                                      } else {
                                        logFirebaseEvent(
                                            'Container_execute_callback');
                                        await widget.pasteFromOption?.call(
                                          widget.optionText!,
                                        );
                                      }
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    constraints: BoxConstraints(
                                      minHeight:
                                          FFAppState().optionHeight.toDouble(),
                                    ),
                                    decoration: BoxDecoration(
                                      color: _model.isSelected == true
                                          ? () {
                                              if ((widget.optionHasURL ==
                                                      true) &&
                                                  (widget.urlIsWebview ==
                                                      true)) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .tertiary;
                                              } else if (widget.isMedication ==
                                                  true) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .secondary;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .primary;
                                              }
                                            }()
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: () {
                                          if ((widget.optionHasURL == true) &&
                                              (widget.urlIsWebview == true)) {
                                            return FlutterFlowTheme.of(context)
                                                .tertiary;
                                          } else if (widget.isMedication ==
                                              true) {
                                            return FlutterFlowTheme.of(context)
                                                .secondary;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          }
                                        }(),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 5.0, 10.0, 5.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: widget
                                                              .optionText!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: _model
                                                                            .isSelected ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: FFAppState()
                                                                    .optionTextSize
                                                                    .toDouble(),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: widget
                                                                      .hasNote ==
                                                                  true
                                                              ? widget
                                                                  .optionNote!
                                                              : '',
                                                          style: TextStyle(
                                                            color: widget
                                                                .noteColour,
                                                            fontSize: FFAppState()
                                                                .optionTextSize
                                                                .toDouble(),
                                                          ),
                                                        )
                                                      ],
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: _model
                                                                            .isSelected ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: FFAppState()
                                                                    .optionTextSize
                                                                    .toDouble(),
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        if ((widget.optionHasURL == true) &&
                                            (widget.urlIsWebview == true))
                                          Icon(
                                            Icons.open_in_new,
                                            color: _model.isSelected == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            size: 24.0,
                                          ),
                                        if ((widget.optionHasURL == true) &&
                                            (widget.urlIsWebview == false))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 3.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'B7_OPTION_COMP_ContainerLink_ON_TAP');
                                                logFirebaseEvent(
                                                    'ContainerLink_launch_u_r_l');
                                                await launchURL(
                                                    widget.optionURL!);
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          widget.urlPropmt,
                                                          'Link',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: _model
                                                                              .isSelected ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      Icon(
                                                        Icons.open_in_new,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        size: 20.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (widget.bnfURL != null &&
                                            widget.bnfURL != '')
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'B7_OPTION_COMP_ContainerBNF_ON_TAP');
                                              logFirebaseEvent(
                                                  'ContainerBNF_launch_u_r_l');
                                              await launchURL(widget.bnfURL!);
                                            },
                                            child: Container(
                                              width: 54.0,
                                              height: 24.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF98DC4C),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'BNF',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
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
                                            ),
                                          ),
                                        if (widget.bnfcURL != null &&
                                            widget.bnfcURL != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'B7_OPTION_COMP_ContainerBNFc_ON_TAP');
                                                logFirebaseEvent(
                                                    'ContainerBNFc_launch_u_r_l');
                                                await launchURL(
                                                    widget.bnfcURL!);
                                              },
                                              child: Container(
                                                width: 54.0,
                                                height: 24.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF04C84),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'BNFc',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
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
                                              ),
                                            ),
                                          ),
                                        if (widget.isRedFlag == true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidFlag,
                                              color: _model.isSelected == false
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              size: 20.0,
                                            ),
                                          ),
                                        if (widget.greenLight == true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Icon(
                                              Icons.traffic,
                                              color: Color(0xFFFF0000),
                                              size: 24.0,
                                            ),
                                          ),
                                        if (widget.amberLight == true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Icon(
                                              Icons.traffic,
                                              color: Color(0xFFFF8000),
                                              size: 24.0,
                                            ),
                                          ),
                                        if (widget.redLight == true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Icon(
                                              Icons.traffic,
                                              color: Color(0xFF07E13E),
                                              size: 24.0,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'B7_OPTION_COMP_Container_nnsi2rgq_ON_TAP');
                                  if (_model.isSelected == true) {
                                    logFirebaseEvent(
                                        'Container_update_component_state');
                                    _model.isSelected = false;
                                    safeSetState(() {});
                                    logFirebaseEvent(
                                        'Container_execute_callback');
                                    await widget.removeSelected?.call(
                                      widget.optionText!,
                                    );
                                  } else {
                                    logFirebaseEvent(
                                        'Container_update_component_state');
                                    _model.isSelected = true;
                                    safeSetState(() {});
                                    if ((widget.optionHasURL == true) &&
                                        (widget.urlIsWebview == true)) {
                                      logFirebaseEvent(
                                          'Container_bottom_sheet');
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  B93BottomSheetWebviewWidget(
                                                url: widget.optionURL!,
                                                optionText: widget.optionText!,
                                                urlOptions: widget.urlOptions,
                                                urlPrompt: widget.urlPropmt,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() =>
                                          _model.optionOutput1Copy = value));

                                      logFirebaseEvent(
                                          'Container_execute_callback');
                                      await widget.passOnBottomSheetSelection
                                          ?.call(
                                        _model.optionOutput1Copy!,
                                      );
                                    } else {
                                      logFirebaseEvent(
                                          'Container_execute_callback');
                                      await widget.pasteFromOption?.call(
                                        widget.optionText!,
                                      );
                                    }
                                  }

                                  safeSetState(() {});
                                },
                                child: Container(
                                  constraints: BoxConstraints(
                                    minHeight:
                                        FFAppState().optionHeight.toDouble(),
                                  ),
                                  decoration: BoxDecoration(
                                    color: _model.isSelected == true
                                        ? () {
                                            if ((widget.optionHasURL ==
                                                    true) &&
                                                (widget.urlIsWebview ==
                                                    true)) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .tertiary;
                                            } else if (widget.isMedication ==
                                                true) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondary;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            }
                                          }()
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: () {
                                        if ((widget.optionHasURL == true) &&
                                            (widget.urlIsWebview == true)) {
                                          return FlutterFlowTheme.of(context)
                                              .tertiary;
                                        } else if (widget.isMedication ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .secondary;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .primary;
                                        }
                                      }(),
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 5.0, 10.0, 5.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            widget.optionText!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: _model
                                                                              .isSelected ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: FFAppState()
                                                                      .optionTextSize
                                                                      .toDouble(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: widget.hasNote ==
                                                                true
                                                            ? widget
                                                                .optionNote!
                                                            : '',
                                                        style: TextStyle(
                                                          color: widget
                                                              .noteColour,
                                                          fontSize: FFAppState()
                                                              .optionTextSize
                                                              .toDouble(),
                                                        ),
                                                      )
                                                    ],
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: _model
                                                                          .isSelected ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: FFAppState()
                                                                  .optionTextSize
                                                                  .toDouble(),
                                                              letterSpacing:
                                                                  0.0,
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
                                        ),
                                      ),
                                      if ((widget.optionHasURL == true) &&
                                          (widget.urlIsWebview == true))
                                        Icon(
                                          Icons.open_in_new,
                                          color: _model.isSelected == true
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          size: 24.0,
                                        ),
                                      if ((widget.optionHasURL == true) &&
                                          (widget.urlIsWebview == false))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 3.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'B7_OPTION_COMP_ContainerLink_ON_TAP');
                                              logFirebaseEvent(
                                                  'ContainerLink_launch_u_r_l');
                                              await launchURL(
                                                  widget.optionURL!);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        widget.urlPropmt,
                                                        'Link',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: _model
                                                                            .isSelected ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Icon(
                                                      Icons.open_in_new,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (widget.bnfURL != null &&
                                          widget.bnfURL != '')
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'B7_OPTION_COMP_ContainerBNF_ON_TAP');
                                            logFirebaseEvent(
                                                'ContainerBNF_launch_u_r_l');
                                            await launchURL(widget.bnfURL!);
                                          },
                                          child: Container(
                                            width: 54.0,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF98DC4C),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'BNF',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
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
                                          ),
                                        ),
                                      if (widget.bnfcURL != null &&
                                          widget.bnfcURL != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'B7_OPTION_COMP_ContainerBNFc_ON_TAP');
                                              logFirebaseEvent(
                                                  'ContainerBNFc_launch_u_r_l');
                                              await launchURL(widget.bnfcURL!);
                                            },
                                            child: Container(
                                              width: 54.0,
                                              height: 24.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF04C84),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'BNFc',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
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
                                            ),
                                          ),
                                        ),
                                      if (widget.isRedFlag == true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.solidFlag,
                                            color: _model.isSelected == false
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            size: 20.0,
                                          ),
                                        ),
                                      if (widget.greenLight == true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.traffic,
                                            color: Color(0xFFFF0000),
                                            size: 24.0,
                                          ),
                                        ),
                                      if (widget.amberLight == true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.traffic,
                                            color: Color(0xFFFF8000),
                                            size: 24.0,
                                          ),
                                        ),
                                      if (widget.redLight == true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.traffic,
                                            color: Color(0xFF07E13E),
                                            size: 24.0,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (FFAppState().dragEnabled == false)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'B7_OPTION_ContainerNonDraggable_ON_TAP');
                                if (_model.isSelected == true) {
                                  logFirebaseEvent(
                                      'ContainerNonDraggable_update_component_s');
                                  _model.isSelected = false;
                                  safeSetState(() {});
                                  logFirebaseEvent(
                                      'ContainerNonDraggable_execute_callback');
                                  await widget.removeSelected?.call(
                                    widget.optionText!,
                                  );
                                } else {
                                  logFirebaseEvent(
                                      'ContainerNonDraggable_update_component_s');
                                  _model.isSelected = true;
                                  safeSetState(() {});
                                  if ((widget.optionHasURL == true) &&
                                      (widget.urlIsWebview == true)) {
                                    logFirebaseEvent(
                                        'ContainerNonDraggable_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: B93BottomSheetWebviewWidget(
                                              url: widget.optionURL!,
                                              optionText: widget.optionText!,
                                              urlOptions: widget.urlOptions,
                                              urlPrompt: widget.urlPropmt,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() =>
                                        _model.optionOutput1Copye = value));

                                    logFirebaseEvent(
                                        'ContainerNonDraggable_execute_callback');
                                    await widget.passOnBottomSheetSelection
                                        ?.call(
                                      _model.optionOutput1Copye!,
                                    );
                                  } else {
                                    logFirebaseEvent(
                                        'ContainerNonDraggable_execute_callback');
                                    await widget.pasteFromOption?.call(
                                      widget.optionText!,
                                    );
                                  }
                                }

                                safeSetState(() {});
                              },
                              child: Container(
                                constraints: BoxConstraints(
                                  minHeight:
                                      FFAppState().optionHeight.toDouble(),
                                ),
                                decoration: BoxDecoration(
                                  color: _model.isSelected == true
                                      ? () {
                                          if ((widget.optionHasURL == true) &&
                                              (widget.urlIsWebview == true)) {
                                            return FlutterFlowTheme.of(context)
                                                .tertiary;
                                          } else if (widget.isMedication ==
                                              true) {
                                            return FlutterFlowTheme.of(context)
                                                .secondary;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          }
                                        }()
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    color: () {
                                      if ((widget.optionHasURL == true) &&
                                          (widget.urlIsWebview == true)) {
                                        return FlutterFlowTheme.of(context)
                                            .tertiary;
                                      } else if (widget.isMedication == true) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    width: 2.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 5.0, 10.0, 5.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        widget.optionText,
                                                        'Unset',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: _model
                                                                            .isSelected ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: FFAppState()
                                                                    .optionTextSize
                                                                    .toDouble(),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    TextSpan(
                                                      text: widget.hasNote ==
                                                              true
                                                          ? widget.optionNote!
                                                          : '',
                                                      style: TextStyle(
                                                        color:
                                                            widget.noteColour,
                                                        fontSize: FFAppState()
                                                            .optionTextSize
                                                            .toDouble(),
                                                      ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: _model
                                                                        .isSelected ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: FFAppState()
                                                                .optionTextSize
                                                                .toDouble(),
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
                                      ),
                                    ),
                                    if ((widget.optionHasURL == true) &&
                                        (widget.urlIsWebview == true))
                                      Icon(
                                        Icons.open_in_new,
                                        color: _model.isSelected == true
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .tertiary,
                                        size: 24.0,
                                      ),
                                    if ((widget.optionHasURL == true) &&
                                        (widget.urlIsWebview == false))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 3.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'B7_OPTION_COMP_ContainerURL_ON_TAP');
                                            logFirebaseEvent(
                                                'ContainerURL_launch_u_r_l');
                                            await launchURL(widget.optionURL!);
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      widget.urlPropmt,
                                                      'Link',
                                                    ),
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: _model
                                                                          .isSelected ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumFamily),
                                                            ),
                                                  ),
                                                  Icon(
                                                    Icons.open_in_new,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 20.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (widget.bnfURL != null &&
                                        widget.bnfURL != '')
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'B7_OPTION_COMP_ContainerBNF_ON_TAP');
                                          logFirebaseEvent(
                                              'ContainerBNF_launch_u_r_l');
                                          await launchURL(widget.bnfURL!);
                                        },
                                        child: Container(
                                          width: 54.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF98DC4C),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'BNF',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
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
                                        ),
                                      ),
                                    if (widget.bnfcURL != null &&
                                        widget.bnfcURL != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'B7_OPTION_COMP_ContainerBNFc_ON_TAP');
                                            logFirebaseEvent(
                                                'ContainerBNFc_launch_u_r_l');
                                            await launchURL(widget.bnfcURL!);
                                          },
                                          child: Container(
                                            width: 54.0,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF04C84),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'BNFc',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
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
                                          ),
                                        ),
                                      ),
                                    if (widget.isRedFlag == true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidFlag,
                                          color: _model.isSelected == false
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          size: 20.0,
                                        ),
                                      ),
                                    if (widget.redLight == true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          Icons.traffic,
                                          color: Color(0xFFFF0000),
                                          size: 24.0,
                                        ),
                                      ),
                                    if (widget.amberLight == true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          Icons.traffic,
                                          color: Color(0xFFFF8000),
                                          size: 24.0,
                                        ),
                                      ),
                                    if (widget.greenLight == true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          Icons.traffic,
                                          color: Color(0xFF07E13E),
                                          size: 24.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    onEnter: ((event) async {
                      safeSetState(
                          () => _model.mouseRegionOptionHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(
                          () => _model.mouseRegionOptionHovered = false);
                    }),
                  ),
                if (((_model.mouseRegionEditOptionHovered == true) ||
                        (_model.whileIndexChanging == true) ||
                        (_model.optionDeleteCheck == true)) &&
                    (FFAppState().editMode == true) &&
                    ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                        (currentUserEmail == 'therealcatmimi@gmail.com') ||
                        (currentUserEmail == 'roseshendi@gmail.com') ||
                        (widget.templateOwner == currentUserReference)) &&
                    (_model.editOptionView == false))
                  Container(
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: Color(0xE6F1F4F8),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.optionIndex! > 0)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent('B7_OPTION_COMP__BTN_ON_TAP');
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.whileIndexChanging = true;
                                safeSetState(() {});
                                logFirebaseEvent('Button_custom_action');
                                _model.newSectionsBackward =
                                    await actions.moveOptionBackward(
                                  widget.sections?.toList(),
                                  widget.optionIndex,
                                  widget.rowIndex,
                                  widget.sectionIndex,
                                );
                                logFirebaseEvent('Button_backend_call');

                                await widget.templateRef!.update({
                                  ...mapToFirestore(
                                    {
                                      'template_sections':
                                          getClicknoteSectionListFirestoreData(
                                        _model.newSectionsBackward,
                                      ),
                                    },
                                  ),
                                });
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.whileIndexChanging = false;
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                              text: '<',
                              options: FFButtonOptions(
                                width: 20.0,
                                height: 20.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).tertiary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: Text(
                            functions
                                .increaseIndex(widget.optionIndex)
                                .toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                        if (functions.increaseIndex(widget.optionIndex)! <
                            widget.optionsCount!)
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent('B7_OPTION_COMP__BTN_ON_TAP');
                              logFirebaseEvent('Button_update_component_state');
                              _model.whileIndexChanging = true;
                              safeSetState(() {});
                              logFirebaseEvent('Button_custom_action');
                              _model.newSections =
                                  await actions.moveOptionForward(
                                widget.sections?.toList(),
                                widget.optionIndex,
                                widget.rowIndex,
                                widget.sectionIndex,
                              );
                              logFirebaseEvent('Button_backend_call');

                              await widget.templateRef!.update({
                                ...mapToFirestore(
                                  {
                                    'template_sections':
                                        getClicknoteSectionListFirestoreData(
                                      _model.newSections,
                                    ),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_update_component_state');
                              _model.whileIndexChanging = false;
                              safeSetState(() {});

                              safeSetState(() {});
                            },
                            text: '>',
                            options: FFButtonOptions(
                              width: 20.0,
                              height: 20.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).tertiary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        AlignedTooltip(
                          content: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Edit option text',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 0),
                          showDuration: Duration(milliseconds: 0),
                          triggerMode: TooltipTriggerMode.tap,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'B7_OPTION_COMP_Icon_5gzukk0r_ON_TAP');
                                logFirebaseEvent('Icon_update_component_state');
                                _model.editOptionView = true;
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.edit,
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        AlignedTooltip(
                          content: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Option settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 0),
                          showDuration: Duration(milliseconds: 0),
                          triggerMode: TooltipTriggerMode.tap,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'B7_OPTION_COMP_Icon_8gxs42m0_ON_TAP');
                                logFirebaseEvent('Icon_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: B94BottomSheetEditOptionWidget(
                                          templateRef: widget.templateRef!,
                                          sectionIndex: widget.sectionIndex!,
                                          rowIndex: widget.rowIndex!,
                                          optionIndex: widget.optionIndex!,
                                          sections: widget.sections!,
                                          optionHasNote: widget.optionHasNote!,
                                          optionNote: widget.optionNote!,
                                          optionHasUrl: widget.optionHasURL!,
                                          optionUrl: widget.optionURL!,
                                          urlPrompt: widget.urlPropmt!,
                                          isCommunityTemplate:
                                              widget.isCommunityTemplate!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Icon(
                                Icons.settings_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        if (_model.optionDeleteCheck == false)
                          AlignedTooltip(
                            content: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                'Delete',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              ),
                            ),
                            offset: 4.0,
                            preferredDirection: AxisDirection.down,
                            borderRadius: BorderRadius.circular(8.0),
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 4.0,
                            tailBaseWidth: 24.0,
                            tailLength: 12.0,
                            waitDuration: Duration(milliseconds: 0),
                            showDuration: Duration(milliseconds: 0),
                            triggerMode: TooltipTriggerMode.tap,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'B7_OPTION_COMP_Icon_j3qhlpo0_ON_TAP');
                                  logFirebaseEvent(
                                      'Icon_update_component_state');
                                  _model.optionDeleteCheck = true;
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.close,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        if (_model.optionDeleteCheck == true)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B7_OPTION_COMP_ButtonDelete_ON_TAP');
                                  logFirebaseEvent(
                                      'ButtonDelete_custom_action');
                                  _model.sectionsAfterDeleted =
                                      await actions.deleteOption(
                                    widget.sections?.toList(),
                                    widget.sectionIndex,
                                    widget.rowIndex,
                                    widget.optionIndex,
                                  );
                                  logFirebaseEvent('ButtonDelete_backend_call');

                                  await widget.templateRef!.update({
                                    ...mapToFirestore(
                                      {
                                        'template_sections':
                                            getClicknoteSectionListFirestoreData(
                                          _model.sectionsAfterDeleted,
                                        ),
                                      },
                                    ),
                                  });

                                  safeSetState(() {});
                                },
                                text: 'Delete',
                                options: FFButtonOptions(
                                  width: 45.0,
                                  height: 20.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'B7_OPTION_COMP_ButtonDelete_ON_TAP');
                                    logFirebaseEvent(
                                        'ButtonDelete_update_component_state');
                                    _model.optionDeleteCheck = false;
                                    safeSetState(() {});
                                  },
                                  text: 'Back',
                                  options: FFButtonOptions(
                                    width: 45.0,
                                    height: 20.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Colors.white,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
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
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionEditOptionHovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionEditOptionHovered = false);
            }),
          ),
        ),
        if (_model.editOptionView == true)
          wrapWithModel(
            model: _model.b7aEditOptionTextModel,
            updateCallback: () => safeSetState(() {}),
            child: B7aEditOptionTextWidget(
              optionText: widget.optionText,
              templateRef: widget.templateRef!,
              sectionIndex: widget.sectionIndex!,
              rowIndex: widget.rowIndex!,
              optionIndex: widget.optionIndex!,
              sections: widget.sections!,
              viewToFalse: () async {
                logFirebaseEvent('B7_OPTION_Container_9nf62sr1_CALLBACK');
                logFirebaseEvent('b7a_edit_option_text_update_component_st');
                _model.editOptionView = false;
                safeSetState(() {});
              },
            ),
          ),
      ],
    );
  }
}
