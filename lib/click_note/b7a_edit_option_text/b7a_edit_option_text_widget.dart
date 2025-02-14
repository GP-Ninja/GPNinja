import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b7a_edit_option_text_model.dart';
export 'b7a_edit_option_text_model.dart';

class B7aEditOptionTextWidget extends StatefulWidget {
  const B7aEditOptionTextWidget({
    super.key,
    String? optionText,
    required this.templateRef,
    required this.sectionIndex,
    required this.rowIndex,
    required this.optionIndex,
    required this.viewToFalse,
    required this.sections,
  }) : this.optionText = optionText ?? '';

  final String optionText;
  final DocumentReference? templateRef;
  final int? sectionIndex;
  final int? rowIndex;
  final int? optionIndex;
  final Future Function()? viewToFalse;
  final List<ClicknoteSectionStruct>? sections;

  @override
  State<B7aEditOptionTextWidget> createState() =>
      _B7aEditOptionTextWidgetState();
}

class _B7aEditOptionTextWidgetState extends State<B7aEditOptionTextWidget> {
  late B7aEditOptionTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B7aEditOptionTextModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('B7A_EDIT_OPTION_TEXT_b7a_edit_option_tex');
      logFirebaseEvent('b7a_edit_option_text_set_form_field');
      safeSetState(() {
        _model.textFieldEditOptionTextController?.text = widget.optionText;
      });
    });

    _model.textFieldEditOptionTextController ??= TextEditingController();
    _model.textFieldEditOptionFocusNode ??= FocusNode();

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
      width: 500.0,
      height: 50.0,
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: TextFormField(
                controller: _model.textFieldEditOptionTextController,
                focusNode: _model.textFieldEditOptionFocusNode,
                onFieldSubmitted: (_) async {
                  logFirebaseEvent('B7A_EDIT_OPTION_TEXT_TextFieldEditOption');
                  logFirebaseEvent('TextFieldEditOption_custom_action');
                  _model.newSectionsOptionTextEditedTextfield =
                      await actions.editOptionText(
                    widget.sections?.toList(),
                    widget.optionIndex,
                    widget.rowIndex,
                    widget.sectionIndex,
                    _model.textFieldEditOptionTextController.text,
                  );
                  logFirebaseEvent('TextFieldEditOption_backend_call');

                  await widget.templateRef!.update({
                    ...mapToFirestore(
                      {
                        'template_sections':
                            getClicknoteSectionListFirestoreData(
                          _model.newSectionsOptionTextEditedTextfield,
                        ),
                      },
                    ),
                  });
                  logFirebaseEvent('TextFieldEditOption_execute_callback');
                  await widget.viewToFalse?.call();

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
                validator: _model.textFieldEditOptionTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('B7A_EDIT_OPTION_TEXT_SAVE_BTN_ON_TAP');
                    logFirebaseEvent('Button_custom_action');
                    _model.newSectionsOptionTextEdited =
                        await actions.editOptionText(
                      widget.sections?.toList(),
                      widget.optionIndex,
                      widget.rowIndex,
                      widget.sectionIndex,
                      _model.textFieldEditOptionTextController.text,
                    );
                    logFirebaseEvent('Button_backend_call');

                    await widget.templateRef!.update({
                      ...mapToFirestore(
                        {
                          'template_sections':
                              getClicknoteSectionListFirestoreData(
                            _model.newSectionsOptionTextEdited,
                          ),
                        },
                      ),
                    });
                    logFirebaseEvent('Button_execute_callback');
                    await widget.viewToFalse?.call();

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
                          'B7A_EDIT_OPTION_TEXT_CANCEL_BTN_ON_TAP');
                      logFirebaseEvent('Button_execute_callback');
                      await widget.viewToFalse?.call();
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
