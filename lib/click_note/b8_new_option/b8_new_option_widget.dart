import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b8_new_option_model.dart';
export 'b8_new_option_model.dart';

class B8NewOptionWidget extends StatefulWidget {
  const B8NewOptionWidget({
    super.key,
    required this.templateOwner,
    required this.templateRef,
    required this.sectionIndex,
    required this.rowIndex,
    required this.sections,
  });

  final DocumentReference? templateOwner;
  final DocumentReference? templateRef;
  final int? sectionIndex;
  final int? rowIndex;
  final List<ClicknoteSectionStruct>? sections;

  @override
  State<B8NewOptionWidget> createState() => _B8NewOptionWidgetState();
}

class _B8NewOptionWidgetState extends State<B8NewOptionWidget> {
  late B8NewOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B8NewOptionModel());

    _model.textFieldNewOptionTextController ??= TextEditingController();
    _model.textFieldNewOptionFocusNode ??= FocusNode();

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
        if ((_model.addOptionView == false) &&
            (FFAppState().editMode == true) &&
            ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                (currentUserEmail == 'therealcatmimi@gmail.com') ||
                (currentUserEmail == 'roseshendi@gmail.com') ||
                (widget.templateOwner == currentUserReference)))
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('B8_NEW_OPTION_COMP_Icon_uq8nq9gi_ON_TAP');
                    logFirebaseEvent('Icon_update_component_state');
                    _model.addOptionView = true;
                    safeSetState(() {});
                  },
                  child: Icon(
                    Icons.add_box,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 24.0,
                  ),
                ),
                Text(
                  'Add',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
                Text(
                  'option',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ),
        if (_model.addOptionView == true)
          Container(
            width: 256.0,
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
                      controller: _model.textFieldNewOptionTextController,
                      focusNode: _model.textFieldNewOptionFocusNode,
                      onFieldSubmitted: (_) async {
                        logFirebaseEvent(
                            'B8_NEW_OPTION_TextFieldNewOption_ON_TEXT');
                        logFirebaseEvent('TextFieldNewOption_custom_action');
                        _model.sectionsAddOptionTextfield =
                            await actions.addOption(
                          widget.sections?.toList(),
                          widget.sectionIndex,
                          widget.rowIndex,
                          _model.textFieldNewOptionTextController.text,
                        );
                        logFirebaseEvent('TextFieldNewOption_backend_call');

                        await widget.templateRef!.update({
                          ...mapToFirestore(
                            {
                              'template_sections':
                                  getClicknoteSectionListFirestoreData(
                                _model.sectionsAddOptionTextfield,
                              ),
                            },
                          ),
                        });
                        logFirebaseEvent(
                            'TextFieldNewOption_clear_text_fields_pin');
                        safeSetState(() {
                          _model.textFieldNewOptionTextController?.clear();
                        });
                        logFirebaseEvent(
                            'TextFieldNewOption_update_component_stat');
                        _model.addOptionView = false;
                        safeSetState(() {});

                        safeSetState(() {});
                      },
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintText: 'Type here...',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
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
                      validator: _model
                          .textFieldNewOptionTextControllerValidator
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
                          logFirebaseEvent(
                              'B8_NEW_OPTION_COMP_SAVE_BTN_ON_TAP');
                          logFirebaseEvent('Button_custom_action');
                          _model.sectionsAddOption = await actions.addOption(
                            widget.sections?.toList(),
                            widget.sectionIndex,
                            widget.rowIndex,
                            _model.textFieldNewOptionTextController.text,
                          );
                          logFirebaseEvent('Button_backend_call');

                          await widget.templateRef!.update({
                            ...mapToFirestore(
                              {
                                'template_sections':
                                    getClicknoteSectionListFirestoreData(
                                  _model.sectionsAddOption,
                                ),
                              },
                            ),
                          });
                          logFirebaseEvent(
                              'Button_clear_text_fields_pin_codes');
                          safeSetState(() {
                            _model.textFieldNewOptionTextController?.clear();
                          });
                          logFirebaseEvent('Button_update_component_state');
                          _model.addOptionView = false;
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        text: 'Save',
                        options: FFButtonOptions(
                          width: 45.0,
                          height: 20.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                                'B8_NEW_OPTION_COMP_BACK_BTN_ON_TAP');
                            logFirebaseEvent(
                                'Button_clear_text_fields_pin_codes');
                            safeSetState(() {
                              _model.textFieldNewOptionTextController?.clear();
                            });
                            logFirebaseEvent('Button_update_component_state');
                            _model.addOptionView = false;
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
                                      .containsKey(FlutterFlowTheme.of(context)
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
      ],
    );
  }
}
