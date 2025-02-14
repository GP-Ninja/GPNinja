import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b3a_edit_section_text_model.dart';
export 'b3a_edit_section_text_model.dart';

class B3aEditSectionTextWidget extends StatefulWidget {
  const B3aEditSectionTextWidget({
    super.key,
    required this.sectionTitle,
    required this.sections,
    required this.sectionIndex,
    required this.templateRef,
    required this.editView,
  });

  final String? sectionTitle;
  final List<ClicknoteSectionStruct>? sections;
  final int? sectionIndex;
  final DocumentReference? templateRef;
  final Future Function()? editView;

  @override
  State<B3aEditSectionTextWidget> createState() =>
      _B3aEditSectionTextWidgetState();
}

class _B3aEditSectionTextWidgetState extends State<B3aEditSectionTextWidget> {
  late B3aEditSectionTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B3aEditSectionTextModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('B3A_EDIT_SECTION_TEXT_b3a_edit_section_t');
      logFirebaseEvent('b3a_edit_section_text_set_form_field');
      safeSetState(() {
        _model.textFieldSectionTitleTextController?.text =
            widget.sectionTitle!;
        _model.textFieldSectionTitleFocusNode?.requestFocus();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _model.textFieldSectionTitleTextController?.selection =
              TextSelection.collapsed(
            offset: _model.textFieldSectionTitleTextController!.text.length,
          );
        });
      });
    });

    _model.textFieldSectionTitleTextController ??=
        TextEditingController(text: widget.sectionTitle);
    _model.textFieldSectionTitleFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.textFieldSectionTitleTextController,
                focusNode: _model.textFieldSectionTitleFocusNode,
                onFieldSubmitted: (_) async {
                  logFirebaseEvent('B3A_EDIT_SECTION_TEXT_TextFieldSectionTi');
                  logFirebaseEvent('TextFieldSectionTitle_custom_action');
                  _model.sectionsEditSectionTextTextfield =
                      await actions.editSectionText(
                    widget.sections?.toList(),
                    widget.sectionIndex,
                    _model.textFieldSectionTitleTextController.text,
                  );
                  logFirebaseEvent('TextFieldSectionTitle_backend_call');

                  await widget.templateRef!.update({
                    ...mapToFirestore(
                      {
                        'template_sections':
                            getClicknoteSectionListFirestoreData(
                          _model.sectionsEditSectionTextTextfield,
                        ),
                      },
                    ),
                  });
                  logFirebaseEvent('TextFieldSectionTitle_execute_callback');
                  await widget.editView?.call();

                  safeSetState(() {});
                },
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                  hintText: 'Type here...',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
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
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                validator: _model.textFieldSectionTitleTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('B3A_EDIT_SECTION_TEXT_SAVE_BTN_ON_TAP');
                    logFirebaseEvent('Button_custom_action');
                    _model.sectionsEditSectionText =
                        await actions.editSectionText(
                      widget.sections?.toList(),
                      widget.sectionIndex,
                      _model.textFieldSectionTitleTextController.text,
                    );
                    logFirebaseEvent('Button_backend_call');

                    await widget.templateRef!.update({
                      ...mapToFirestore(
                        {
                          'template_sections':
                              getClicknoteSectionListFirestoreData(
                            _model.sectionsEditSectionText,
                          ),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_execute_callback');
                    await widget.editView?.call();

                    safeSetState(() {});
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    width: 45.0,
                    height: 20.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'B3A_EDIT_SECTION_TEXT_CANCEL_BTN_ON_TAP');
                      logFirebaseEvent('Button_execute_callback');
                      await widget.editView?.call();
                    },
                    text: 'Cancel',
                    options: FFButtonOptions(
                      width: 45.0,
                      height: 20.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
