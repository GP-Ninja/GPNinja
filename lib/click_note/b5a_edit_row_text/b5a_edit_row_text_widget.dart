import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b5a_edit_row_text_model.dart';
export 'b5a_edit_row_text_model.dart';

class B5aEditRowTextWidget extends StatefulWidget {
  const B5aEditRowTextWidget({
    super.key,
    required this.rowTitle,
    required this.sections,
    required this.sectionIndex,
    required this.rowIndex,
    required this.templateRef,
    required this.editView,
  });

  final String? rowTitle;
  final List<ClicknoteSectionStruct>? sections;
  final int? sectionIndex;
  final int? rowIndex;
  final DocumentReference? templateRef;
  final Future Function()? editView;

  @override
  State<B5aEditRowTextWidget> createState() => _B5aEditRowTextWidgetState();
}

class _B5aEditRowTextWidgetState extends State<B5aEditRowTextWidget> {
  late B5aEditRowTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B5aEditRowTextModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('B5A_EDIT_ROW_TEXT_b5a_edit_row_text_ON_I');
      logFirebaseEvent('b5a_edit_row_text_set_form_field');
      safeSetState(() {
        _model.textFieldRowTitleTextController?.text = widget.rowTitle!;
        _model.textFieldRowTitleFocusNode?.requestFocus();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _model.textFieldRowTitleTextController?.selection =
              TextSelection.collapsed(
            offset: _model.textFieldRowTitleTextController!.text.length,
          );
        });
      });
    });

    _model.textFieldRowTitleTextController ??=
        TextEditingController(text: widget.rowTitle);
    _model.textFieldRowTitleFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  child: TextFormField(
                    controller: _model.textFieldRowTitleTextController,
                    focusNode: _model.textFieldRowTitleFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'B5A_EDIT_ROW_TEXT_TextFieldRowTitle_ON_T');
                      logFirebaseEvent('TextFieldRowTitle_custom_action');
                      _model.sectionsNewRowTextTextfield =
                          await actions.editRowText(
                        widget.sections?.toList(),
                        widget.sectionIndex,
                        widget.rowIndex,
                        _model.textFieldRowTitleTextController.text,
                      );
                      logFirebaseEvent('TextFieldRowTitle_backend_call');

                      await widget.templateRef!.update({
                        ...mapToFirestore(
                          {
                            'template_sections':
                                getClicknoteSectionListFirestoreData(
                              _model.sectionsNewRowTextTextfield,
                            ),
                          },
                        ),
                      });
                      logFirebaseEvent('TextFieldRowTitle_execute_callback');
                      await widget.editView?.call();

                      safeSetState(() {});
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                      hintText: 'Type here...',
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
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
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                    validator: _model.textFieldRowTitleTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'B5A_EDIT_ROW_TEXT_COMP_SAVE_BTN_ON_TAP');
                        logFirebaseEvent('Button_custom_action');
                        _model.sectionsNewRowText = await actions.editRowText(
                          widget.sections?.toList(),
                          widget.sectionIndex,
                          widget.rowIndex,
                          _model.textFieldRowTitleTextController.text,
                        );
                        logFirebaseEvent('Button_backend_call');

                        await widget.templateRef!.update({
                          ...mapToFirestore(
                            {
                              'template_sections':
                                  getClicknoteSectionListFirestoreData(
                                _model.sectionsNewRowText,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'B5A_EDIT_ROW_TEXT_COMP_CANCEL_BTN_ON_TAP');
                          logFirebaseEvent('Button_execute_callback');
                          await widget.editView?.call();
                        },
                        text: 'Cancel',
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
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
