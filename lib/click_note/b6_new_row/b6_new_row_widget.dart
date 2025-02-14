import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b6_new_row_model.dart';
export 'b6_new_row_model.dart';

class B6NewRowWidget extends StatefulWidget {
  const B6NewRowWidget({
    super.key,
    required this.templateRef,
    required this.sectionIndex,
    required this.sections,
  });

  final DocumentReference? templateRef;
  final int? sectionIndex;
  final List<ClicknoteSectionStruct>? sections;

  @override
  State<B6NewRowWidget> createState() => _B6NewRowWidgetState();
}

class _B6NewRowWidgetState extends State<B6NewRowWidget> {
  late B6NewRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B6NewRowModel());

    _model.textFieldNewRowTextController ??= TextEditingController();
    _model.textFieldNewRowFocusNode ??= FocusNode();

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
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).accent3,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textFieldNewRowTextController,
                    focusNode: _model.textFieldNewRowFocusNode,
                    onFieldSubmitted: (_) async {
                      logFirebaseEvent(
                          'B6_NEW_ROW_TextFieldNewRow_ON_TEXTFIELD_');
                      logFirebaseEvent('TextFieldNewRow_custom_action');
                      _model.sectionsAddRowTextfield = await actions.addRow(
                        widget.sections?.toList(),
                        widget.sectionIndex,
                        _model.textFieldNewRowTextController.text,
                      );
                      logFirebaseEvent('TextFieldNewRow_backend_call');

                      await widget.templateRef!.update({
                        ...mapToFirestore(
                          {
                            'template_sections':
                                getClicknoteSectionListFirestoreData(
                              _model.sectionsAddRowTextfield,
                            ),
                          },
                        ),
                      });
                      logFirebaseEvent(
                          'TextFieldNewRow_clear_text_fields_pin_co');
                      safeSetState(() {
                        _model.textFieldNewRowTextController?.clear();
                      });

                      safeSetState(() {});
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Type new row label here...',
                      labelStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
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
                    validator: _model.textFieldNewRowTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('B6_NEW_ROW_COMP_ADD_ROW_BTN_ON_TAP');
                  logFirebaseEvent('Button_custom_action');
                  _model.sectionsAddRow = await actions.addRow(
                    widget.sections?.toList(),
                    widget.sectionIndex,
                    _model.textFieldNewRowTextController.text,
                  );
                  logFirebaseEvent('Button_backend_call');

                  await widget.templateRef!.update({
                    ...mapToFirestore(
                      {
                        'template_sections':
                            getClicknoteSectionListFirestoreData(
                          _model.sectionsAddRow,
                        ),
                      },
                    ),
                  });
                  logFirebaseEvent('Button_clear_text_fields_pin_codes');
                  safeSetState(() {
                    _model.textFieldNewRowTextController?.clear();
                  });

                  safeSetState(() {});
                },
                text: 'Add row',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
