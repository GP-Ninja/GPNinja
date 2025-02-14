import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b3a_edit_section_text/b3a_edit_section_text_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b3_section_header_model.dart';
export 'b3_section_header_model.dart';

class B3SectionHeaderWidget extends StatefulWidget {
  const B3SectionHeaderWidget({
    super.key,
    required this.sectionTitle,
    required this.templateOwner,
    required this.sectionIndex,
    required this.templateRef,
    required this.sectionCount,
    required this.sections,
  });

  final String? sectionTitle;
  final DocumentReference? templateOwner;
  final int? sectionIndex;
  final DocumentReference? templateRef;
  final int? sectionCount;
  final List<ClicknoteSectionStruct>? sections;

  @override
  State<B3SectionHeaderWidget> createState() => _B3SectionHeaderWidgetState();
}

class _B3SectionHeaderWidgetState extends State<B3SectionHeaderWidget> {
  late B3SectionHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B3SectionHeaderModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
              child: Text(
                valueOrDefault<String>(
                  widget.sectionTitle,
                  'Title',
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineLargeFamily,
                      fontSize: FFAppState().compactView == true ? 26.0 : 32.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineLargeFamily),
                    ),
              ),
            ),
          ),
          if (_model.editSectionTitle == true)
            wrapWithModel(
              model: _model.b3aEditSectionTextModel,
              updateCallback: () => safeSetState(() {}),
              child: B3aEditSectionTextWidget(
                sectionTitle: widget.sectionTitle!,
                sections: widget.sections!,
                sectionIndex: widget.sectionIndex!,
                templateRef: widget.templateRef!,
                editView: () async {
                  logFirebaseEvent('B3_SECTION_HEADER_Container_mo6jpgd6_CAL');
                  logFirebaseEvent('b3a_edit_section_text_update_component_s');
                  _model.editSectionTitle = false;
                  safeSetState(() {});
                },
              ),
            ),
          if (((_model.mouseRegionEditSectionTitleHovered == true) ||
                  (_model.isLoading == true)) &&
              (FFAppState().editMode == true) &&
              ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                  (currentUserEmail == 'therealcatmimi@gmail.com') ||
                  (currentUserEmail == 'roseshendi@gmail.com') ||
                  (widget.templateOwner == currentUserReference)) &&
              (_model.editSectionTitle == false))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (widget.sectionIndex! > 0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent3,
                            icon: Icon(
                              Icons.arrow_upward_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 24.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              logFirebaseEvent(
                                  'B3_SECTION_HEADER_arrow_upward_rounded_I');
                              logFirebaseEvent('IconButton_custom_action');
                              _model.sectionsSectionMovedBackwards =
                                  await actions.moveSectionBackward(
                                widget.sections?.toList(),
                                widget.sectionIndex,
                              );
                              logFirebaseEvent('IconButton_backend_call');

                              await widget.templateRef!.update({
                                ...mapToFirestore(
                                  {
                                    'template_sections':
                                        getClicknoteSectionListFirestoreData(
                                      _model.sectionsSectionMovedBackwards,
                                    ),
                                  },
                                ),
                              });

                              safeSetState(() {});
                            },
                          ),
                        ),
                      if (functions.increaseIndex(widget.sectionIndex)! <
                          widget.sectionCount!)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
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
                                  'B3_SECTION_HEADER_arrow_downward_rounded');
                              logFirebaseEvent('IconButton_custom_action');
                              _model.sectionsSectionMovedForwards =
                                  await actions.moveSectionForward(
                                widget.sections?.toList(),
                                widget.sectionIndex,
                              );
                              logFirebaseEvent('IconButton_backend_call');

                              await widget.templateRef!.update({
                                ...mapToFirestore(
                                  {
                                    'template_sections':
                                        getClicknoteSectionListFirestoreData(
                                      _model.sectionsSectionMovedForwards,
                                    ),
                                  },
                                ),
                              });

                              safeSetState(() {});
                            },
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'B3_SECTION_HEADER_COMP_EDIT_BTN_ON_TAP');
                            logFirebaseEvent('Button_update_component_state');
                            _model.editSectionTitle = true;
                            safeSetState(() {});
                          },
                          text: 'Edit',
                          icon: Icon(
                            Icons.edit,
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 70.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconAlignment: IconAlignment.end,
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      if (_model.confirmDelete == false)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'B3_SECTION_HEADER_COMP_DELETE_BTN_ON_TAP');
                              logFirebaseEvent('Button_update_component_state');
                              _model.confirmDelete = true;
                              safeSetState(() {});
                            },
                            text: 'Delete',
                            icon: Icon(
                              Icons.close,
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              width: 70.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconAlignment: IconAlignment.end,
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
                        ),
                      if (_model.confirmDelete == true)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B3_SECTION_HEADER_COMP_DELETE_BTN_ON_TAP');
                                  logFirebaseEvent('Button_custom_action');
                                  _model.sectionsSectionDeleted =
                                      await actions.deleteSection(
                                    widget.sections?.toList(),
                                    widget.sectionIndex,
                                  );
                                  logFirebaseEvent('Button_backend_call');

                                  await widget.templateRef!.update({
                                    ...mapToFirestore(
                                      {
                                        'template_sections':
                                            getClicknoteSectionListFirestoreData(
                                          _model.sectionsSectionDeleted,
                                        ),
                                      },
                                    ),
                                  });

                                  safeSetState(() {});
                                },
                                text: 'Delete',
                                options: FFButtonOptions(
                                  width: 70.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconAlignment: IconAlignment.end,
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'B3_SECTION_HEADER_COMP_CANCEL_BTN_ON_TAP');
                                  logFirebaseEvent(
                                      'Button_update_component_state');
                                  _model.confirmDelete = false;
                                  safeSetState(() {});
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  width: 70.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
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
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionEditSectionTitleHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionEditSectionTitleHovered = false);
      }),
    );
  }
}
