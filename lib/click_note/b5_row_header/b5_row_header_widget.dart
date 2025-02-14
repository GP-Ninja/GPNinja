import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b5a_edit_row_text/b5a_edit_row_text_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b5_row_header_model.dart';
export 'b5_row_header_model.dart';

class B5RowHeaderWidget extends StatefulWidget {
  const B5RowHeaderWidget({
    super.key,
    required this.rowTitle,
    required this.templateOwner,
    this.rowHasUrl,
    this.rowUrl,
    this.rowUrlTitle,
    required this.templateRef,
    required this.sectionIndex,
    required this.rowIndex,
    required this.rowCount,
    required this.sections,
  });

  final String? rowTitle;
  final DocumentReference? templateOwner;
  final bool? rowHasUrl;
  final String? rowUrl;
  final String? rowUrlTitle;
  final DocumentReference? templateRef;
  final int? sectionIndex;
  final int? rowIndex;
  final int? rowCount;
  final List<ClicknoteSectionStruct>? sections;

  @override
  State<B5RowHeaderWidget> createState() => _B5RowHeaderWidgetState();
}

class _B5RowHeaderWidgetState extends State<B5RowHeaderWidget> {
  late B5RowHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B5RowHeaderModel());

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

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        width: FFAppState().editMode == false ? 140.0 : 200.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      if ((_model.editRowTitleView == false) &&
                          (FFAppState().compactView == false))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.rowTitle,
                                    'Null',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if ((_model.editRowTitleView == false) &&
                          (FFAppState().compactView == true))
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.rowTitle,
                                              'Title',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily),
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
                    ],
                  ),
                ),
              ],
            ),
            if (widget.rowHasUrl == true)
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'B5_ROW_HEADER_Container_l7kmp4go_ON_TAP');
                        logFirebaseEvent('Container_launch_u_r_l');
                        await launchURL(widget.rowUrl!);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
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
                                  widget.rowUrlTitle,
                                  'Null',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              Icon(
                                Icons.open_in_new,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if ((FFAppState().editMode == true) &&
                ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                    (currentUserEmail == 'therealcatmimi@gmail.com') ||
                    (currentUserEmail == 'roseshendi@gmail.com') ||
                    (widget.templateOwner == currentUserReference)) &&
                (_model.editRowTitleView == false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (widget.rowIndex! > 0)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent3,
                                  icon: Icon(
                                    Icons.arrow_upward_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'B5_ROW_HEADER_arrow_upward_rounded_ICN_O');
                                    logFirebaseEvent(
                                        'IconButton_custom_action');
                                    _model.sectionsRowMovedBackwards =
                                        await actions.moveRowBackward(
                                      widget.sections?.toList(),
                                      widget.sectionIndex,
                                      widget.rowIndex,
                                    );
                                    logFirebaseEvent('IconButton_backend_call');

                                    await widget.templateRef!.update({
                                      ...mapToFirestore(
                                        {
                                          'template_sections':
                                              getClicknoteSectionListFirestoreData(
                                            _model.sectionsRowMovedBackwards,
                                          ),
                                        },
                                      ),
                                    });

                                    safeSetState(() {});
                                  },
                                ),
                              ),
                            if (functions.increaseIndex(widget.rowIndex)! <
                                widget.rowCount!)
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).accent3,
                                icon: Icon(
                                  Icons.arrow_downward_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B5_ROW_HEADER_arrow_downward_rounded_ICN');
                                  logFirebaseEvent('IconButton_custom_action');
                                  _model.sectionsRowMovedForward =
                                      await actions.moveRowForward(
                                    widget.sections?.toList(),
                                    widget.sectionIndex,
                                    widget.rowIndex,
                                  );
                                  logFirebaseEvent('IconButton_backend_call');

                                  await widget.templateRef!.update({
                                    ...mapToFirestore(
                                      {
                                        'template_sections':
                                            getClicknoteSectionListFirestoreData(
                                          _model.sectionsRowMovedForward,
                                        ),
                                      },
                                    ),
                                  });

                                  safeSetState(() {});
                                },
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'B5_ROW_HEADER_COMP_EDIT_BTN_ON_TAP');
                                    logFirebaseEvent(
                                        'Button_update_component_state');
                                    _model.editRowTitleView = true;
                                    safeSetState(() {});
                                  },
                                  text: 'Edit',
                                  icon: Icon(
                                    Icons.edit,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 70.0,
                                    height: 25.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconAlignment: IconAlignment.end,
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                              if (currentUserEmail ==
                                  'jamesjwalker01@gmail.com')
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Adv',
                                  icon: Icon(
                                    Icons.settings,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 70.0,
                                    height: 25.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconAlignment: IconAlignment.end,
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.confirmDelete == false)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'B5_ROW_HEADER_COMP_DELETE_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_update_component_state');
                                          _model.confirmDelete = true;
                                          safeSetState(() {});
                                        },
                                        text: 'Delete',
                                        icon: Icon(
                                          Icons.close_sharp,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 70.0,
                                          height: 25.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconAlignment: IconAlignment.end,
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                fontSize: 10.0,
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
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  if (_model.confirmDelete == true)
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'B5_ROW_HEADER_COMP_DELETE_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_custom_action');
                                              _model.sectionsDeleteRow =
                                                  await actions.deleteRow(
                                                widget.sections?.toList(),
                                                widget.sectionIndex,
                                                widget.rowIndex,
                                              );
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await widget.templateRef!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'template_sections':
                                                        getClicknoteSectionListFirestoreData(
                                                      _model.sectionsDeleteRow,
                                                    ),
                                                  },
                                                ),
                                              });

                                              safeSetState(() {});
                                            },
                                            text: 'Delete',
                                            options: FFButtonOptions(
                                              width: 70.0,
                                              height: 25.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                                        fontSize: 10.0,
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
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'B5_ROW_HEADER_COMP_CANCEL_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_update_component_state');
                                              _model.confirmDelete = false;
                                              safeSetState(() {});
                                            },
                                            text: 'Cancel',
                                            options: FFButtonOptions(
                                              width: 70.0,
                                              height: 25.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        fontSize: 10.0,
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
                                                  BorderRadius.circular(8.0),
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
                ),
              ),
            if (_model.editRowTitleView == true)
              wrapWithModel(
                model: _model.b5aEditRowTextModel,
                updateCallback: () => safeSetState(() {}),
                child: B5aEditRowTextWidget(
                  rowTitle: widget.rowTitle!,
                  sections: widget.sections!,
                  sectionIndex: widget.sectionIndex!,
                  rowIndex: widget.rowIndex!,
                  templateRef: widget.templateRef!,
                  editView: () async {
                    logFirebaseEvent(
                        'B5_ROW_HEADER_Container_jce013ro_CALLBAC');
                    logFirebaseEvent(
                        'b5a_edit_row_text_update_component_state');
                    _model.editRowTitleView = false;
                    safeSetState(() {});
                  },
                ),
              ),
          ],
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionRowTitleHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionRowTitleHovered = false);
      }),
    );
  }
}
