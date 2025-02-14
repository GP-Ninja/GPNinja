import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b2_section/b2_section_widget.dart';
import '/click_note/b90_bottom_sheet_template_comments/b90_bottom_sheet_template_comments_widget.dart';
import '/click_note/b91_bottom_sheet_confirm_template_delete/b91_bottom_sheet_confirm_template_delete_widget.dart';
import '/click_note/b92_bottom_sheet_clone_template/b92_bottom_sheet_clone_template_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'b1_clicknote_note_model.dart';
export 'b1_clicknote_note_model.dart';

class B1ClicknoteNoteWidget extends StatefulWidget {
  const B1ClicknoteNoteWidget({
    super.key,
    required this.templateRef,
  });

  final DocumentReference? templateRef;

  @override
  State<B1ClicknoteNoteWidget> createState() => _B1ClicknoteNoteWidgetState();
}

class _B1ClicknoteNoteWidgetState extends State<B1ClicknoteNoteWidget> {
  late B1ClicknoteNoteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B1ClicknoteNoteModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'b1_clicknote_note'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('B1_CLICKNOTE_NOTE_b1_clicknote_note_ON_I');
      logFirebaseEvent('b1_clicknote_note_update_app_state');
      FFAppState().editMode = false;
      safeSetState(() {});
    });

    _model.textFieldNewSectionTextController ??= TextEditingController();
    _model.textFieldNewSectionFocusNode ??= FocusNode();

    _model.textField0TextController ??= TextEditingController();
    _model.textField0FocusNode ??= FocusNode();

    _model.textField1TextController ??= TextEditingController();
    _model.textField1FocusNode ??= FocusNode();

    _model.textField2TextController ??= TextEditingController();
    _model.textField2FocusNode ??= FocusNode();

    _model.textField3TextController ??= TextEditingController();
    _model.textField3FocusNode ??= FocusNode();

    _model.textField4TextController ??= TextEditingController();
    _model.textField4FocusNode ??= FocusNode();

    _model.textField5TextController ??= TextEditingController();
    _model.textField5FocusNode ??= FocusNode();

    _model.textField6TextController ??= TextEditingController();
    _model.textField6FocusNode ??= FocusNode();

    _model.textField7TextController ??= TextEditingController();
    _model.textField7FocusNode ??= FocusNode();

    _model.textFieldTitleFocusNode ??= FocusNode();

    _model.switchEditValue1 = FFAppState().editMode;
    _model.switchEditValue2 = FFAppState().editMode;
    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    _model.switchEditValue5 = FFAppState().compactView;
    _model.switchFocusOnPasteValue = FFAppState().focusTextfield;
    _model.switchCapsValue = false;
    _model.switchHideTitleValue1 = false;
    _model.switchHideTitleValue2 = FFAppState().dragEnabled;
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
        title: 'b1_clicknote_note',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: StreamBuilder<FlattenedTemplatesRecord>(
                stream:
                    FlattenedTemplatesRecord.getDocument(widget.templateRef!),
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

                  final columnFlattenedTemplatesRecord = snapshot.data!;

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      wrapWithModel(
                        model: _model.horizontalNavbarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HorizontalNavbarWidget(
                          homeColour:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          consultColour:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          clickNoteColour: FlutterFlowTheme.of(context).primary,
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
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 100.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (FFAppState().compactView == false)
                                  Container(
                                    width: 40.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.all(valueOrDefault<double>(
                                        FFAppState().compactView == true
                                            ? 0.0
                                            : 10.0,
                                        0.0,
                                      )),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.8,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          border: Border.all(
                                            color: FFAppState().compactView ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent3,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final sections =
                                                      columnFlattenedTemplatesRecord
                                                          .templateSections
                                                          .sortedList(
                                                              keyOf: (e) => e
                                                                  .sectionIndex,
                                                              desc: false)
                                                          .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        sections.length,
                                                        (sectionsIndex) {
                                                      final sectionsItem =
                                                          sections[
                                                              sectionsIndex];
                                                      return B2SectionWidget(
                                                        key: Key(
                                                            'Keybjr_${sectionsIndex}_of_${sections.length}'),
                                                        sectionTitle:
                                                            sectionsItem
                                                                .sectionText,
                                                        sectionRows:
                                                            sectionsItem
                                                                .sectionRows,
                                                        templateOwner:
                                                            columnFlattenedTemplatesRecord
                                                                .templateUser!,
                                                        templateRef: widget
                                                            .templateRef!,
                                                        sectionIndex:
                                                            sectionsItem
                                                                .sectionIndex,
                                                        sectionCount:
                                                            columnFlattenedTemplatesRecord
                                                                .templateSections
                                                                .length,
                                                        sections:
                                                            columnFlattenedTemplatesRecord
                                                                .templateSections,
                                                        isCommunityTemplate:
                                                            columnFlattenedTemplatesRecord
                                                                .templateIsCommunityTemplate,
                                                        pasteFromOption:
                                                            (optionTextToPaste) async {
                                                          logFirebaseEvent(
                                                              'B1_CLICKNOTE_NOTE_Container_bjrwfofm_CAL');
                                                          if (sectionsItem
                                                                  .sectionIndex ==
                                                              0) {
                                                            if (FFAppState()
                                                                    .focusTextfield ==
                                                                true) {
                                                              if (_model.textField0TextController
                                                                          .text !=
                                                                      '') {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField0TextController
                                                                          ?.text =
                                                                      '${_model.textField0TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                  _model
                                                                      .textField0FocusNode
                                                                      ?.requestFocus();
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .addPostFrameCallback(
                                                                          (_) {
                                                                    _model.textField0TextController
                                                                            ?.selection =
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: _model
                                                                          .textField0TextController!
                                                                          .text
                                                                          .length,
                                                                    );
                                                                  });
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField0TextController
                                                                          ?.text =
                                                                      optionTextToPaste;
                                                                  _model
                                                                      .textField0FocusNode
                                                                      ?.requestFocus();
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .addPostFrameCallback(
                                                                          (_) {
                                                                    _model.textField0TextController
                                                                            ?.selection =
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: _model
                                                                          .textField0TextController!
                                                                          .text
                                                                          .length,
                                                                    );
                                                                  });
                                                                });
                                                              }
                                                            } else {
                                                              if (_model.textField0TextController
                                                                          .text !=
                                                                      '') {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField0TextController
                                                                          ?.text =
                                                                      '${_model.textField0TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField0TextController
                                                                          ?.text =
                                                                      optionTextToPaste;
                                                                });
                                                              }
                                                            }
                                                          } else {
                                                            if (sectionsItem
                                                                    .sectionIndex ==
                                                                1) {
                                                              if (FFAppState()
                                                                      .focusTextfield ==
                                                                  true) {
                                                                if (_model.textField1TextController
                                                                            .text !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField1TextController
                                                                            ?.text =
                                                                        '${_model.textField1TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                    _model
                                                                        .textField1FocusNode
                                                                        ?.requestFocus();
                                                                    WidgetsBinding
                                                                        .instance
                                                                        .addPostFrameCallback(
                                                                            (_) {
                                                                      _model.textField1TextController
                                                                              ?.selection =
                                                                          TextSelection
                                                                              .collapsed(
                                                                        offset: _model
                                                                            .textField1TextController!
                                                                            .text
                                                                            .length,
                                                                      );
                                                                    });
                                                                  });
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField1TextController
                                                                            ?.text =
                                                                        optionTextToPaste;
                                                                    _model
                                                                        .textField1FocusNode
                                                                        ?.requestFocus();
                                                                    WidgetsBinding
                                                                        .instance
                                                                        .addPostFrameCallback(
                                                                            (_) {
                                                                      _model.textField1TextController
                                                                              ?.selection =
                                                                          TextSelection
                                                                              .collapsed(
                                                                        offset: _model
                                                                            .textField1TextController!
                                                                            .text
                                                                            .length,
                                                                      );
                                                                    });
                                                                  });
                                                                }
                                                              } else {
                                                                if (_model.textField1TextController
                                                                            .text !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField1TextController
                                                                            ?.text =
                                                                        '${_model.textField1TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                  });
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField1TextController
                                                                            ?.text =
                                                                        optionTextToPaste;
                                                                  });
                                                                }
                                                              }
                                                            } else {
                                                              if (sectionsItem
                                                                      .sectionIndex ==
                                                                  2) {
                                                                if (FFAppState()
                                                                        .focusTextfield ==
                                                                    true) {
                                                                  if (_model.textField2TextController
                                                                              .text !=
                                                                          '') {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField2TextController
                                                                              ?.text =
                                                                          '${_model.textField2TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                      _model
                                                                          .textField2FocusNode
                                                                          ?.requestFocus();
                                                                      WidgetsBinding
                                                                          .instance
                                                                          .addPostFrameCallback(
                                                                              (_) {
                                                                        _model
                                                                            .textField2TextController
                                                                            ?.selection = TextSelection.collapsed(
                                                                          offset: _model
                                                                              .textField2TextController!
                                                                              .text
                                                                              .length,
                                                                        );
                                                                      });
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField2TextController
                                                                              ?.text =
                                                                          optionTextToPaste;
                                                                      _model
                                                                          .textField2FocusNode
                                                                          ?.requestFocus();
                                                                      WidgetsBinding
                                                                          .instance
                                                                          .addPostFrameCallback(
                                                                              (_) {
                                                                        _model
                                                                            .textField2TextController
                                                                            ?.selection = TextSelection.collapsed(
                                                                          offset: _model
                                                                              .textField2TextController!
                                                                              .text
                                                                              .length,
                                                                        );
                                                                      });
                                                                    });
                                                                  }
                                                                } else {
                                                                  if (_model.textField2TextController
                                                                              .text !=
                                                                          '') {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField2TextController
                                                                              ?.text =
                                                                          '${_model.textField2TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField2TextController
                                                                              ?.text =
                                                                          optionTextToPaste;
                                                                    });
                                                                  }
                                                                }
                                                              } else {
                                                                if (sectionsItem
                                                                        .sectionIndex ==
                                                                    3) {
                                                                  if (FFAppState()
                                                                          .focusTextfield ==
                                                                      true) {
                                                                    if (_model.textField3TextController.text !=
                                                                            '') {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.text = '${_model.textField3TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                        _model
                                                                            .textField3FocusNode
                                                                            ?.requestFocus();
                                                                        WidgetsBinding
                                                                            .instance
                                                                            .addPostFrameCallback((_) {
                                                                          _model
                                                                              .textField3TextController
                                                                              ?.selection = TextSelection.collapsed(
                                                                            offset:
                                                                                _model.textField3TextController!.text.length,
                                                                          );
                                                                        });
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.text = optionTextToPaste;
                                                                        _model
                                                                            .textField3FocusNode
                                                                            ?.requestFocus();
                                                                        WidgetsBinding
                                                                            .instance
                                                                            .addPostFrameCallback((_) {
                                                                          _model
                                                                              .textField3TextController
                                                                              ?.selection = TextSelection.collapsed(
                                                                            offset:
                                                                                _model.textField3TextController!.text.length,
                                                                          );
                                                                        });
                                                                      });
                                                                    }
                                                                  } else {
                                                                    if (_model.textField3TextController.text !=
                                                                            '') {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.text = '${_model.textField3TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.text = optionTextToPaste;
                                                                      });
                                                                    }
                                                                  }
                                                                } else {
                                                                  if (sectionsItem
                                                                          .sectionIndex ==
                                                                      4) {
                                                                    if (FFAppState()
                                                                            .focusTextfield ==
                                                                        true) {
                                                                      if (_model.textField4TextController.text !=
                                                                              '') {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.text = '${_model.textField4TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                          _model
                                                                              .textField4FocusNode
                                                                              ?.requestFocus();
                                                                          WidgetsBinding
                                                                              .instance
                                                                              .addPostFrameCallback((_) {
                                                                            _model.textField4TextController?.selection =
                                                                                TextSelection.collapsed(
                                                                              offset: _model.textField4TextController!.text.length,
                                                                            );
                                                                          });
                                                                        });
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.text = optionTextToPaste;
                                                                          _model
                                                                              .textField4FocusNode
                                                                              ?.requestFocus();
                                                                          WidgetsBinding
                                                                              .instance
                                                                              .addPostFrameCallback((_) {
                                                                            _model.textField4TextController?.selection =
                                                                                TextSelection.collapsed(
                                                                              offset: _model.textField4TextController!.text.length,
                                                                            );
                                                                          });
                                                                        });
                                                                      }
                                                                    } else {
                                                                      if (_model.textField4TextController.text !=
                                                                              '') {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.text = '${_model.textField4TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                        });
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.text = optionTextToPaste;
                                                                        });
                                                                      }
                                                                    }
                                                                  } else {
                                                                    if (sectionsItem
                                                                            .sectionIndex ==
                                                                        5) {
                                                                      if (FFAppState()
                                                                              .focusTextfield ==
                                                                          true) {
                                                                        if (_model.textField5TextController.text !=
                                                                                '') {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField5TextController?.text =
                                                                                '${_model.textField5TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                            _model.textField5FocusNode?.requestFocus();
                                                                            WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                              _model.textField5TextController?.selection = TextSelection.collapsed(
                                                                                offset: _model.textField5TextController!.text.length,
                                                                              );
                                                                            });
                                                                          });
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField5TextController?.text =
                                                                                optionTextToPaste;
                                                                            _model.textField5FocusNode?.requestFocus();
                                                                            WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                              _model.textField5TextController?.selection = TextSelection.collapsed(
                                                                                offset: _model.textField5TextController!.text.length,
                                                                              );
                                                                            });
                                                                          });
                                                                        }
                                                                      } else {
                                                                        if (_model.textField5TextController.text !=
                                                                                '') {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField5TextController?.text =
                                                                                '${_model.textField5TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                          });
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField5TextController?.text =
                                                                                optionTextToPaste;
                                                                          });
                                                                        }
                                                                      }
                                                                    } else {
                                                                      if (sectionsItem
                                                                              .sectionIndex ==
                                                                          6) {
                                                                        if (FFAppState().focusTextfield ==
                                                                            true) {
                                                                          if (_model.textField6TextController.text != '') {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField6TextController?.text = '${_model.textField6TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                              _model.textField6FocusNode?.requestFocus();
                                                                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                _model.textField6TextController?.selection = TextSelection.collapsed(
                                                                                  offset: _model.textField6TextController!.text.length,
                                                                                );
                                                                              });
                                                                            });
                                                                          } else {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField6TextController?.text = optionTextToPaste;
                                                                              _model.textField6FocusNode?.requestFocus();
                                                                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                _model.textField6TextController?.selection = TextSelection.collapsed(
                                                                                  offset: _model.textField6TextController!.text.length,
                                                                                );
                                                                              });
                                                                            });
                                                                          }
                                                                        } else {
                                                                          if (_model.textField6TextController.text != '') {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField6TextController?.text = '${_model.textField6TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                            });
                                                                          } else {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField6TextController?.text = optionTextToPaste;
                                                                            });
                                                                          }
                                                                        }
                                                                      } else {
                                                                        if (sectionsItem.sectionIndex ==
                                                                            7) {
                                                                          if (FFAppState().focusTextfield ==
                                                                              true) {
                                                                            if (_model.textField7TextController.text != '') {
                                                                              logFirebaseEvent('b2_section_set_form_field');
                                                                              safeSetState(() {
                                                                                _model.textField7TextController?.text = '${_model.textField7TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                                _model.textField7FocusNode?.requestFocus();
                                                                                WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                  _model.textField7TextController?.selection = TextSelection.collapsed(
                                                                                    offset: _model.textField7TextController!.text.length,
                                                                                  );
                                                                                });
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('b2_section_set_form_field');
                                                                              safeSetState(() {
                                                                                _model.textField7TextController?.text = optionTextToPaste;
                                                                                _model.textField7FocusNode?.requestFocus();
                                                                                WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                  _model.textField7TextController?.selection = TextSelection.collapsed(
                                                                                    offset: _model.textField7TextController!.text.length,
                                                                                  );
                                                                                });
                                                                              });
                                                                            }
                                                                          } else {
                                                                            if (_model.textField7TextController.text != '') {
                                                                              logFirebaseEvent('b2_section_set_form_field');
                                                                              safeSetState(() {
                                                                                _model.textField7TextController?.text = '${_model.textField7TextController.text}${functions.newLineAtStart(optionTextToPaste)}';
                                                                              });
                                                                            } else {
                                                                              logFirebaseEvent('b2_section_set_form_field');
                                                                              safeSetState(() {
                                                                                _model.textField7TextController?.text = optionTextToPaste;
                                                                              });
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        },
                                                        removeSelected:
                                                            (optionTextToRemove) async {
                                                          logFirebaseEvent(
                                                              'B1_CLICKNOTE_NOTE_Container_bjrwfofm_CAL');
                                                          if (sectionsItem
                                                                  .sectionIndex ==
                                                              0) {
                                                            if (functions.checkIfStringInText(
                                                                optionTextToRemove,
                                                                _model
                                                                    .textField0TextController
                                                                    .text)!) {
                                                              logFirebaseEvent(
                                                                  'b2_section_set_form_field');
                                                              safeSetState(() {
                                                                _model.textField0TextController
                                                                        ?.text =
                                                                    functions.checkIfStringInTextAndRemove(
                                                                        optionTextToRemove,
                                                                        _model
                                                                            .textField0TextController
                                                                            .text)!;
                                                              });
                                                            }
                                                          } else {
                                                            if (sectionsItem
                                                                    .sectionIndex ==
                                                                1) {
                                                              if (functions.checkIfStringInText(
                                                                  optionTextToRemove,
                                                                  _model
                                                                      .textField1TextController
                                                                      .text)!) {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField1TextController
                                                                          ?.text =
                                                                      functions.checkIfStringInTextAndRemove(
                                                                          optionTextToRemove,
                                                                          _model
                                                                              .textField1TextController
                                                                              .text)!;
                                                                });
                                                              }
                                                            } else {
                                                              if (sectionsItem
                                                                      .sectionIndex ==
                                                                  2) {
                                                                if (functions.checkIfStringInText(
                                                                    optionTextToRemove,
                                                                    _model
                                                                        .textField2TextController
                                                                        .text)!) {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField2TextController?.text = functions.checkIfStringInTextAndRemove(
                                                                        optionTextToRemove,
                                                                        _model
                                                                            .textField2TextController
                                                                            .text)!;
                                                                  });
                                                                }
                                                              } else {
                                                                if (sectionsItem
                                                                        .sectionIndex ==
                                                                    3) {
                                                                  if (functions.checkIfStringInText(
                                                                      optionTextToRemove,
                                                                      _model
                                                                          .textField3TextController
                                                                          .text)!) {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField3TextController?.text = functions.checkIfStringInTextAndRemove(
                                                                          optionTextToRemove,
                                                                          _model
                                                                              .textField3TextController
                                                                              .text)!;
                                                                    });
                                                                  }
                                                                } else {
                                                                  if (sectionsItem
                                                                          .sectionIndex ==
                                                                      4) {
                                                                    if (functions.checkIfStringInText(
                                                                        optionTextToRemove,
                                                                        _model
                                                                            .textField4TextController
                                                                            .text)!) {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model.textField4TextController?.text = functions.checkIfStringInTextAndRemove(
                                                                            optionTextToRemove,
                                                                            _model.textField4TextController.text)!;
                                                                      });
                                                                    }
                                                                  } else {
                                                                    if (sectionsItem
                                                                            .sectionIndex ==
                                                                        5) {
                                                                      if (functions.checkIfStringInText(
                                                                          optionTextToRemove,
                                                                          _model
                                                                              .textField5TextController
                                                                              .text)!) {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model.textField5TextController?.text = functions.checkIfStringInTextAndRemove(
                                                                              optionTextToRemove,
                                                                              _model.textField5TextController.text)!;
                                                                        });
                                                                      }
                                                                    } else {
                                                                      if (sectionsItem
                                                                              .sectionIndex ==
                                                                          6) {
                                                                        if (functions.checkIfStringInText(
                                                                            optionTextToRemove,
                                                                            _model.textField6TextController.text)!) {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField6TextController?.text =
                                                                                functions.checkIfStringInTextAndRemove(optionTextToRemove, _model.textField6TextController.text)!;
                                                                          });
                                                                        }
                                                                      } else {
                                                                        if (sectionsItem.sectionIndex ==
                                                                            7) {
                                                                          if (functions.checkIfStringInText(
                                                                              optionTextToRemove,
                                                                              _model.textField7TextController.text)!) {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField7TextController?.text = functions.checkIfStringInTextAndRemove(optionTextToRemove, _model.textField7TextController.text)!;
                                                                            });
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        },
                                                        passOnBottomSheetSelection:
                                                            (bottomSheetSelection) async {
                                                          logFirebaseEvent(
                                                              'B1_CLICKNOTE_NOTE_Container_bjrwfofm_CAL');
                                                          if (sectionsItem
                                                                  .sectionIndex ==
                                                              0) {
                                                            if (_model.textField0TextController
                                                                        .text !=
                                                                    '') {
                                                              logFirebaseEvent(
                                                                  'b2_section_set_form_field');
                                                              safeSetState(() {
                                                                _model.textField0TextController
                                                                        ?.text =
                                                                    '${_model.textField0TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                _model
                                                                    .textField0FocusNode
                                                                    ?.requestFocus();
                                                                WidgetsBinding
                                                                    .instance
                                                                    .addPostFrameCallback(
                                                                        (_) {
                                                                  _model.textField0TextController
                                                                          ?.selection =
                                                                      TextSelection
                                                                          .collapsed(
                                                                    offset: _model
                                                                        .textField0TextController!
                                                                        .text
                                                                        .length,
                                                                  );
                                                                });
                                                              });
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'b2_section_set_form_field');
                                                              safeSetState(() {
                                                                _model.textField0TextController
                                                                        ?.text =
                                                                    bottomSheetSelection;
                                                                _model
                                                                    .textField0FocusNode
                                                                    ?.requestFocus();
                                                                WidgetsBinding
                                                                    .instance
                                                                    .addPostFrameCallback(
                                                                        (_) {
                                                                  _model.textField0TextController
                                                                          ?.selection =
                                                                      TextSelection
                                                                          .collapsed(
                                                                    offset: _model
                                                                        .textField0TextController!
                                                                        .text
                                                                        .length,
                                                                  );
                                                                });
                                                              });
                                                            }
                                                          } else {
                                                            if (sectionsItem
                                                                    .sectionIndex ==
                                                                1) {
                                                              if (_model.textField1TextController
                                                                          .text !=
                                                                      '') {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField1TextController
                                                                          ?.text =
                                                                      '${_model.textField1TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                  _model
                                                                      .textField1FocusNode
                                                                      ?.requestFocus();
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .addPostFrameCallback(
                                                                          (_) {
                                                                    _model.textField1TextController
                                                                            ?.selection =
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: _model
                                                                          .textField1TextController!
                                                                          .text
                                                                          .length,
                                                                    );
                                                                  });
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'b2_section_set_form_field');
                                                                safeSetState(
                                                                    () {
                                                                  _model.textField1TextController
                                                                          ?.text =
                                                                      bottomSheetSelection;
                                                                  _model
                                                                      .textField1FocusNode
                                                                      ?.requestFocus();
                                                                  WidgetsBinding
                                                                      .instance
                                                                      .addPostFrameCallback(
                                                                          (_) {
                                                                    _model.textField1TextController
                                                                            ?.selection =
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: _model
                                                                          .textField1TextController!
                                                                          .text
                                                                          .length,
                                                                    );
                                                                  });
                                                                });
                                                              }
                                                            } else {
                                                              if (sectionsItem
                                                                      .sectionIndex ==
                                                                  2) {
                                                                if (_model.textField2TextController
                                                                            .text !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField2TextController
                                                                            ?.text =
                                                                        '${_model.textField2TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                    _model
                                                                        .textField2FocusNode
                                                                        ?.requestFocus();
                                                                    WidgetsBinding
                                                                        .instance
                                                                        .addPostFrameCallback(
                                                                            (_) {
                                                                      _model.textField2TextController
                                                                              ?.selection =
                                                                          TextSelection
                                                                              .collapsed(
                                                                        offset: _model
                                                                            .textField2TextController!
                                                                            .text
                                                                            .length,
                                                                      );
                                                                    });
                                                                  });
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'b2_section_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model.textField2TextController
                                                                            ?.text =
                                                                        bottomSheetSelection;
                                                                    _model
                                                                        .textField2FocusNode
                                                                        ?.requestFocus();
                                                                    WidgetsBinding
                                                                        .instance
                                                                        .addPostFrameCallback(
                                                                            (_) {
                                                                      _model.textField2TextController
                                                                              ?.selection =
                                                                          TextSelection
                                                                              .collapsed(
                                                                        offset: _model
                                                                            .textField2TextController!
                                                                            .text
                                                                            .length,
                                                                      );
                                                                    });
                                                                  });
                                                                }
                                                              } else {
                                                                if (sectionsItem
                                                                        .sectionIndex ==
                                                                    3) {
                                                                  if (_model.textField3TextController
                                                                              .text !=
                                                                          '') {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField3TextController
                                                                              ?.text =
                                                                          '${_model.textField3TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                      _model
                                                                          .textField3FocusNode
                                                                          ?.requestFocus();
                                                                      WidgetsBinding
                                                                          .instance
                                                                          .addPostFrameCallback(
                                                                              (_) {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.selection = TextSelection.collapsed(
                                                                          offset: _model
                                                                              .textField3TextController!
                                                                              .text
                                                                              .length,
                                                                        );
                                                                      });
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'b2_section_set_form_field');
                                                                    safeSetState(
                                                                        () {
                                                                      _model.textField3TextController
                                                                              ?.text =
                                                                          bottomSheetSelection;
                                                                      _model
                                                                          .textField3FocusNode
                                                                          ?.requestFocus();
                                                                      WidgetsBinding
                                                                          .instance
                                                                          .addPostFrameCallback(
                                                                              (_) {
                                                                        _model
                                                                            .textField3TextController
                                                                            ?.selection = TextSelection.collapsed(
                                                                          offset: _model
                                                                              .textField3TextController!
                                                                              .text
                                                                              .length,
                                                                        );
                                                                      });
                                                                    });
                                                                  }
                                                                } else {
                                                                  if (sectionsItem
                                                                          .sectionIndex ==
                                                                      4) {
                                                                    if (_model.textField4TextController.text !=
                                                                            '') {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField4TextController
                                                                            ?.text = '${_model.textField4TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                        _model
                                                                            .textField4FocusNode
                                                                            ?.requestFocus();
                                                                        WidgetsBinding
                                                                            .instance
                                                                            .addPostFrameCallback((_) {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.selection = TextSelection.collapsed(
                                                                            offset:
                                                                                _model.textField4TextController!.text.length,
                                                                          );
                                                                        });
                                                                      });
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'b2_section_set_form_field');
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textField4TextController
                                                                            ?.text = bottomSheetSelection;
                                                                        _model
                                                                            .textField4FocusNode
                                                                            ?.requestFocus();
                                                                        WidgetsBinding
                                                                            .instance
                                                                            .addPostFrameCallback((_) {
                                                                          _model
                                                                              .textField4TextController
                                                                              ?.selection = TextSelection.collapsed(
                                                                            offset:
                                                                                _model.textField4TextController!.text.length,
                                                                          );
                                                                        });
                                                                      });
                                                                    }
                                                                  } else {
                                                                    if (sectionsItem
                                                                            .sectionIndex ==
                                                                        5) {
                                                                      if (_model.textField5TextController.text !=
                                                                              '') {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField5TextController
                                                                              ?.text = '${_model.textField5TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                          _model
                                                                              .textField5FocusNode
                                                                              ?.requestFocus();
                                                                          WidgetsBinding
                                                                              .instance
                                                                              .addPostFrameCallback((_) {
                                                                            _model.textField5TextController?.selection =
                                                                                TextSelection.collapsed(
                                                                              offset: _model.textField5TextController!.text.length,
                                                                            );
                                                                          });
                                                                        });
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'b2_section_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .textField5TextController
                                                                              ?.text = bottomSheetSelection;
                                                                          _model
                                                                              .textField5FocusNode
                                                                              ?.requestFocus();
                                                                          WidgetsBinding
                                                                              .instance
                                                                              .addPostFrameCallback((_) {
                                                                            _model.textField5TextController?.selection =
                                                                                TextSelection.collapsed(
                                                                              offset: _model.textField5TextController!.text.length,
                                                                            );
                                                                          });
                                                                        });
                                                                      }
                                                                    } else {
                                                                      if (sectionsItem
                                                                              .sectionIndex ==
                                                                          6) {
                                                                        if (_model.textField6TextController.text !=
                                                                                '') {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField6TextController?.text =
                                                                                '${_model.textField6TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                            _model.textField6FocusNode?.requestFocus();
                                                                            WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                              _model.textField6TextController?.selection = TextSelection.collapsed(
                                                                                offset: _model.textField6TextController!.text.length,
                                                                              );
                                                                            });
                                                                          });
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'b2_section_set_form_field');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.textField6TextController?.text =
                                                                                bottomSheetSelection;
                                                                            _model.textField6FocusNode?.requestFocus();
                                                                            WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                              _model.textField6TextController?.selection = TextSelection.collapsed(
                                                                                offset: _model.textField6TextController!.text.length,
                                                                              );
                                                                            });
                                                                          });
                                                                        }
                                                                      } else {
                                                                        if (sectionsItem.sectionIndex ==
                                                                            7) {
                                                                          if (_model.textField7TextController.text != '') {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField7TextController?.text = '${_model.textField7TextController.text}${functions.newLineAtStart(bottomSheetSelection)}';
                                                                              _model.textField7FocusNode?.requestFocus();
                                                                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                _model.textField7TextController?.selection = TextSelection.collapsed(
                                                                                  offset: _model.textField7TextController!.text.length,
                                                                                );
                                                                              });
                                                                            });
                                                                          } else {
                                                                            logFirebaseEvent('b2_section_set_form_field');
                                                                            safeSetState(() {
                                                                              _model.textField7TextController?.text = bottomSheetSelection;
                                                                              _model.textField7FocusNode?.requestFocus();
                                                                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                _model.textField7TextController?.selection = TextSelection.collapsed(
                                                                                  offset: _model.textField7TextController!.text.length,
                                                                                );
                                                                              });
                                                                            });
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        },
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (FFAppState().editMode == true)
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textFieldNewSectionTextController,
                                                                focusNode: _model
                                                                    .textFieldNewSectionFocusNode,
                                                                onFieldSubmitted:
                                                                    (_) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_TextFieldNewSection_ON');
                                                                  if (columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .length <
                                                                      8) {
                                                                    logFirebaseEvent(
                                                                        'TextFieldNewSection_custom_action');
                                                                    _model.sectionsNewSectionTextfield =
                                                                        await actions
                                                                            .addSection(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .toList(),
                                                                      _model
                                                                          .textFieldNewSectionTextController
                                                                          .text,
                                                                    );
                                                                    logFirebaseEvent(
                                                                        'TextFieldNewSection_backend_call');

                                                                    await widget
                                                                        .templateRef!
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'template_sections':
                                                                              getClicknoteSectionListFirestoreData(
                                                                            _model.sectionsNewSectionTextfield,
                                                                          ),
                                                                        },
                                                                      ),
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'TextFieldNewSection_clear_text_fields_pi');
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .textFieldNewSectionTextController
                                                                          ?.clear();
                                                                    });
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'TextFieldNewSection_show_snack_bar');
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'ClickNote currently allows a maximum of 8 sections. Please email support@gpninja.co.uk if you would like the option to add more sections and we will prioritise the development of this feature.',
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
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Type new section label here...',
                                                                  labelStyle: FlutterFlowTheme.of(
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
                                                                  hintStyle: FlutterFlowTheme.of(
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                validator: _model
                                                                    .textFieldNewSectionTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'B1_CLICKNOTE_NOTE_ADD_SECTION_BTN_ON_TAP');
                                                              if (columnFlattenedTemplatesRecord
                                                                      .templateSections
                                                                      .length <
                                                                  8) {
                                                                logFirebaseEvent(
                                                                    'Button_custom_action');
                                                                _model.sectionsNewSection =
                                                                    await actions
                                                                        .addSection(
                                                                  columnFlattenedTemplatesRecord
                                                                      .templateSections
                                                                      .toList(),
                                                                  _model
                                                                      .textFieldNewSectionTextController
                                                                      .text,
                                                                );
                                                                logFirebaseEvent(
                                                                    'Button_backend_call');

                                                                await widget
                                                                    .templateRef!
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'template_sections':
                                                                          getClicknoteSectionListFirestoreData(
                                                                        _model
                                                                            .sectionsNewSection,
                                                                      ),
                                                                    },
                                                                  ),
                                                                });
                                                                logFirebaseEvent(
                                                                    'Button_clear_text_fields_pin_codes');
                                                                safeSetState(
                                                                    () {
                                                                  _model
                                                                      .textFieldNewSectionTextController
                                                                      ?.clear();
                                                                });
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Button_show_snack_bar');
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'ClickNote currently allows a maximum of 8 sections. Please email support@gpninja.co.uk if you would like the option to add more sections and we will prioritise the development of this feature.',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                  ),
                                                                );
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'Add section',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (columnFlattenedTemplatesRecord
                                                  .reviewDate !=
                                              null)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Last reviewed ${dateTimeFormat("yMMMd", columnFlattenedTemplatesRecord.reviewDate)}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent3,
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
                                          if (currentUserEmail ==
                                              'jamesjwalker01@gmail.com')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'B1_CLICKNOTE_NOTE_REVIEW_DONE_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await widget.templateRef!.update(
                                                      createFlattenedTemplatesRecordData(
                                                    reviewDate:
                                                        getCurrentTimestamp,
                                                  ));
                                                },
                                                text: 'Review done',
                                                options: FFButtonOptions(
                                                  height: 15.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 0.0, 3.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.transparent,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                  ],
                                ),
                                if (FFAppState().compactView == false)
                                  Container(
                                    width: 40.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                Flexible(
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.8,
                                    decoration: BoxDecoration(),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    1)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (FFAppState()
                                                                        .compactView ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        columnFlattenedTemplatesRecord
                                                                            .templateSections
                                                                            .sortedList(
                                                                                keyOf: (e) => e.sectionIndex,
                                                                                desc: false)
                                                                            .elementAtOrNull(0)
                                                                            ?.sectionText,
                                                                        'Title',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            fontSize: FFAppState().compactView == true
                                                                                ? 18.0
                                                                                : 22.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                Stack(
                                                                  children: [
                                                                    if (_model
                                                                            .textField0Copy ==
                                                                        false)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
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
                                                                            logFirebaseEvent('B1_CLICKNOTE_NOTE_Container_3pe02bau_ON_');
                                                                            if (_model.switchCapsValue ==
                                                                                false) {
                                                                              logFirebaseEvent('Container_copy_to_clipboard');
                                                                              await Clipboard.setData(ClipboardData(text: _model.choiceChips0Value == 'Bullets' ? functions.addBullets(_model.textField0TextController.text)! : _model.textField0TextController.text));
                                                                              logFirebaseEvent('Container_update_page_state');
                                                                              _model.textField0Copy = true;
                                                                              safeSetState(() {});
                                                                              logFirebaseEvent('Container_timer');
                                                                              _model.timer0Controller.onResetTimer();

                                                                              logFirebaseEvent('Container_timer');
                                                                              _model.timer0Controller.onStartTimer();
                                                                            } else {
                                                                              logFirebaseEvent('Container_copy_to_clipboard');
                                                                              await Clipboard.setData(ClipboardData(text: functions.makeAllCaps(_model.choiceChips0Value == 'Bullets' ? functions.addBullets(_model.textField0TextController.text) : _model.textField0TextController.text)!));
                                                                              logFirebaseEvent('Container_update_page_state');
                                                                              _model.textField0Copy = true;
                                                                              safeSetState(() {});
                                                                              logFirebaseEvent('Container_timer');
                                                                              _model.timer0Controller.onResetTimer();

                                                                              logFirebaseEvent('Container_timer');
                                                                              _model.timer0Controller.onStartTimer();
                                                                            }
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 3.0, 3.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.content_copy_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                                  ),
                                                                                  Text(
                                                                                    'Copy ${valueOrDefault<String>(
                                                                                      columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(0)?.sectionText,
                                                                                      'Title',
                                                                                    )}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .textField0Copy ==
                                                                        true)
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              5.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                width: 2.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(3.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.library_add_check_outlined,
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      FFAppState().compactView == false
                                                                                          ? '${valueOrDefault<String>(
                                                                                              columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(0)?.sectionText,
                                                                                              'Title',
                                                                                            )} copied!'
                                                                                          : 'Copied!',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    FlutterFlowTimer(
                                                                      initialTime:
                                                                          _model
                                                                              .timer0InitialTimeMs,
                                                                      getDisplayTime:
                                                                          (value) =>
                                                                              StopWatchTimer.getDisplayTime(
                                                                        value,
                                                                        hours:
                                                                            false,
                                                                        milliSecond:
                                                                            false,
                                                                      ),
                                                                      controller:
                                                                          _model
                                                                              .timer0Controller,
                                                                      updateStateInterval:
                                                                          Duration(
                                                                              milliseconds: 1000),
                                                                      onChanged: (value,
                                                                          displayTime,
                                                                          shouldUpdate) {
                                                                        _model.timer0Milliseconds =
                                                                            value;
                                                                        _model.timer0Value =
                                                                            displayTime;
                                                                        if (shouldUpdate)
                                                                          safeSetState(
                                                                              () {});
                                                                      },
                                                                      onEnded:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Timer0_ON_TIMER_END');
                                                                        logFirebaseEvent(
                                                                            'Timer0_update_page_state');
                                                                        _model.textField0Copy =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                        logFirebaseEvent(
                                                                            'Timer0_wait__delay');
                                                                        await Future.delayed(const Duration(
                                                                            milliseconds:
                                                                                10000));
                                                                        logFirebaseEvent(
                                                                            'Timer0_copy_to_clipboard');
                                                                        await Clipboard.setData(ClipboardData(
                                                                            text:
                                                                                ' '));
                                                                      },
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                            fontSize:
                                                                                0.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                  child: Row(
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
                                                                            'Select copied text format',
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
                                                                            0.0,
                                                                        tailLength:
                                                                            0.0,
                                                                        waitDuration:
                                                                            Duration(milliseconds: 0),
                                                                        showDuration:
                                                                            Duration(milliseconds: 0),
                                                                        triggerMode:
                                                                            TooltipTriggerMode.tap,
                                                                        child:
                                                                            Visibility(
                                                                          visible:
                                                                              _model.mouseRegionRow0Hovered == true,
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.settings,
                                                                              color: FlutterFlowTheme.of(context).grayIcon,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (_model
                                                                              .mouseRegionSettings0Hovered ==
                                                                          true)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                130.0,
                                                                            height:
                                                                                35.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                FlutterFlowChoiceChips(
                                                                              options: [
                                                                                ChipData('None'),
                                                                                ChipData('Bullets')
                                                                              ],
                                                                              onChanged: (val) => safeSetState(() => _model.choiceChips0Value = val?.firstOrNull),
                                                                              selectedChipStyle: ChipStyle(
                                                                                backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                iconColor: FlutterFlowTheme.of(context).info,
                                                                                iconSize: 16.0,
                                                                                labelPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                elevation: 0.0,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: BorderRadius.circular(16.0),
                                                                              ),
                                                                              unselectedChipStyle: ChipStyle(
                                                                                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                iconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                iconSize: 16.0,
                                                                                labelPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                                elevation: 0.0,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: BorderRadius.circular(16.0),
                                                                              ),
                                                                              chipSpacing: 5.0,
                                                                              rowSpacing: 5.0,
                                                                              multiselect: false,
                                                                              initialized: _model.choiceChips0Value != null,
                                                                              alignment: WrapAlignment.start,
                                                                              controller: _model.choiceChips0ValueController ??= FormFieldController<List<String>>(
                                                                                [
                                                                                  'None'
                                                                                ],
                                                                              ),
                                                                              wrapped: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  onEnter:
                                                                      ((event) async {
                                                                    safeSetState(() =>
                                                                        _model.mouseRegionSettings0Hovered =
                                                                            true);
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    safeSetState(() =>
                                                                        _model.mouseRegionSettings0Hovered =
                                                                            false);
                                                                  }),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow0Hovered =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow0Hovered =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_lk97q20k_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField0TextController
                                                                        ?.text = (_model.textField0TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField0TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField0TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField0FocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.textField0TextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                0),
                                                                        () => safeSetState(
                                                                            () {}),
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField0TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    2)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(1)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField1Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_62dypflz_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(
                                                                              ClipboardData(text: _model.choiceChips1Value == 'Bullets' ? functions.addBullets(_model.textField1TextController.text)! : _model.textField1TextController.text));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField1Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer1Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer1Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(
                                                                              ClipboardData(text: functions.makeAllCaps(_model.choiceChips1Value == 'Bullets' ? functions.addBullets(_model.textField1TextController.text) : _model.textField1TextController.text)!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField1Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer1Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer1Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(1)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField1Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(1)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer1InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
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
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer1_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer1_update_page_state');
                                                                    _model.textField1Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionrRow1Hovered ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings1Hovered ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            130.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips1Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips1Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips1ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings1Hovered =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings1Hovered =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionrRow1Hovered =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionrRow1Hovered =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_b7tymwvw_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField1TextController
                                                                        ?.text = (_model.textField1TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField1TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField1TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField1FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField1TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    3)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(2)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField2Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_8l4bld8l_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips2Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField2TextController.text)!;
                                                                            } else if (_model.choiceChips2Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField2TextController.text)!;
                                                                            } else {
                                                                              return _model.textField2TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField2Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer2Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer2Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips2Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField2TextController.text);
                                                                            } else if (_model.choiceChips2Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField2TextController.text);
                                                                            } else {
                                                                              return _model.textField2TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField2Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer2Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer2Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(2)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField2Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(2)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer2InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
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
                                                                        'B1_CLICKNOTE_NOTE_Timer2_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer2_update_page_state');
                                                                    _model.textField2Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow2Hovered ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings2Hovered ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips2Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips2Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips2ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings2Hovered =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings2Hovered =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow2Hovered =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow2Hovered =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_8t9eu06k_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField2TextController
                                                                        ?.text = (_model.textField2TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField2TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField2TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField2FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField2TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    4)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(3)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField3Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_p8ix5kko_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips3Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField3TextController.text)!;
                                                                            } else if (_model.choiceChips3Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField3TextController.text)!;
                                                                            } else {
                                                                              return _model.textField3TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField3Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer3Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer3Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips3Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField3TextController.text);
                                                                            } else if (_model.choiceChips3Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField3TextController.text);
                                                                            } else {
                                                                              return _model.textField3TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField3Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer3Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer3Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(3)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField3Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(3)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer3InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
                                                                    milliSecond:
                                                                        false,
                                                                  ),
                                                                  controller: _model
                                                                      .timer3Controller,
                                                                  updateStateInterval:
                                                                      Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                  onChanged: (value,
                                                                      displayTime,
                                                                      shouldUpdate) {
                                                                    _model.timer3Milliseconds =
                                                                        value;
                                                                    _model.timer3Value =
                                                                        displayTime;
                                                                    if (shouldUpdate)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer3_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer3_update_page_state');
                                                                    _model.textField3Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow3Hovered1 ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings3Hovered1 ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips3Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips3Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips3ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered1 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered1 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered1 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered1 =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_tphlh5fm_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField3TextController
                                                                        ?.text = (_model.textField3TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField3TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField3TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField3FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField3TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    5)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(4)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField4Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_m9t47pbv_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips4Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField4TextController.text)!;
                                                                            } else if (_model.choiceChips4Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField4TextController.text)!;
                                                                            } else {
                                                                              return _model.textField4TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField4Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer4Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer4Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips4Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField4TextController.text);
                                                                            } else if (_model.choiceChips4Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField4TextController.text);
                                                                            } else {
                                                                              return _model.textField4TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField4Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer4Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer4Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(4)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField4Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(4)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer4InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
                                                                    milliSecond:
                                                                        false,
                                                                  ),
                                                                  controller: _model
                                                                      .timer4Controller,
                                                                  updateStateInterval:
                                                                      Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                  onChanged: (value,
                                                                      displayTime,
                                                                      shouldUpdate) {
                                                                    _model.timer4Milliseconds =
                                                                        value;
                                                                    _model.timer4Value =
                                                                        displayTime;
                                                                    if (shouldUpdate)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer4_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer4_update_page_state');
                                                                    _model.textField4Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow3Hovered2 ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings3Hovered2 ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips4Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips4Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips4ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered2 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered2 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered2 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered2 =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_ya7zr3dd_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField4TextController
                                                                        ?.text = (_model.textField4TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField4TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField4TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField4FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField4TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    6)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(5)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField5Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_kyvs7vf2_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips5Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField5TextController.text)!;
                                                                            } else if (_model.choiceChips5Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField5TextController.text)!;
                                                                            } else {
                                                                              return _model.textField5TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField5Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer5Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer5Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips5Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField5TextController.text);
                                                                            } else if (_model.choiceChips5Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField5TextController.text);
                                                                            } else {
                                                                              return _model.textField5TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField5Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer5Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer5Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(5)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField5Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(5)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer5InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
                                                                    milliSecond:
                                                                        false,
                                                                  ),
                                                                  controller: _model
                                                                      .timer5Controller,
                                                                  updateStateInterval:
                                                                      Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                  onChanged: (value,
                                                                      displayTime,
                                                                      shouldUpdate) {
                                                                    _model.timer5Milliseconds =
                                                                        value;
                                                                    _model.timer5Value =
                                                                        displayTime;
                                                                    if (shouldUpdate)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer5_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer5_update_page_state');
                                                                    _model.textField5Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow3Hovered3 ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings3Hovered3 ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips5Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips5Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips5ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered3 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered3 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered3 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered3 =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_9bsqn3mz_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField5TextController
                                                                        ?.text = (_model.textField5TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField5TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField5TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField5FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField5TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    7)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(6)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField6Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_5jjovf8k_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips6Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField6TextController.text)!;
                                                                            } else if (_model.choiceChips6Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField6TextController.text)!;
                                                                            } else {
                                                                              return _model.textField6TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField6Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer6Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer6Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips6Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField6TextController.text);
                                                                            } else if (_model.choiceChips6Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField6TextController.text);
                                                                            } else {
                                                                              return _model.textField6TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField6Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer6Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer6Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(6)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField6Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(6)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer6InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
                                                                    milliSecond:
                                                                        false,
                                                                  ),
                                                                  controller: _model
                                                                      .timer6Controller,
                                                                  updateStateInterval:
                                                                      Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                  onChanged: (value,
                                                                      displayTime,
                                                                      shouldUpdate) {
                                                                    _model.timer6Milliseconds =
                                                                        value;
                                                                    _model.timer6Value =
                                                                        displayTime;
                                                                    if (shouldUpdate)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer6_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer6_update_page_state');
                                                                    _model.textField6Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow3Hovered4 ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings3Hovered4 ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips6Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips6Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips6ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered4 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered4 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered4 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered4 =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_v86ntas5_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField6TextController
                                                                        ?.text = (_model.textField6TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField6TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField6TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField6FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField6TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                if (columnFlattenedTemplatesRecord
                                                        .templateSections
                                                        .length >=
                                                    8)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .compactView ==
                                                                false)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .sortedList(
                                                                              keyOf: (e) => e.sectionIndex,
                                                                              desc: false)
                                                                          .elementAtOrNull(7)
                                                                          ?.sectionText,
                                                                      'Title',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize: FFAppState().compactView == true
                                                                              ? 18.0
                                                                              : 22.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .textField7Copy ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_Container_5at66ytb_ON_');
                                                                        if (_model.switchCapsValue ==
                                                                            false) {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(text:
                                                                              () {
                                                                            if (_model.choiceChips7Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField7TextController.text)!;
                                                                            } else if (_model.choiceChips7Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField7TextController.text)!;
                                                                            } else {
                                                                              return _model.textField7TextController.text;
                                                                            }
                                                                          }()));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField7Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer7Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer7Controller
                                                                              .onStartTimer();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_copy_to_clipboard');
                                                                          await Clipboard.setData(ClipboardData(
                                                                              text: functions.makeAllCaps(() {
                                                                            if (_model.choiceChips7Value ==
                                                                                'Bullets') {
                                                                              return functions.addBullets(_model.textField7TextController.text);
                                                                            } else if (_model.choiceChips7Value ==
                                                                                'Numbers') {
                                                                              return functions.addNumbering(_model.textField7TextController.text);
                                                                            } else {
                                                                              return _model.textField7TextController.text;
                                                                            }
                                                                          }())!));
                                                                          logFirebaseEvent(
                                                                              'Container_update_page_state');
                                                                          _model.textField7Copy =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer7Controller
                                                                              .onResetTimer();

                                                                          logFirebaseEvent(
                                                                              'Container_timer');
                                                                          _model
                                                                              .timer7Controller
                                                                              .onStartTimer();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              3.0,
                                                                              3.0,
                                                                              3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.content_copy_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Text(
                                                                                'Copy ${valueOrDefault<String>(
                                                                                  columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(7)?.sectionText,
                                                                                  'Title',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (_model
                                                                        .textField7Copy ==
                                                                    true)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -40.37,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(3.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.library_add_check_outlined,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                size: FFAppState().compactView == true ? 14.0 : 20.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFAppState().compactView == false
                                                                                      ? '${valueOrDefault<String>(
                                                                                          columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(7)?.sectionText,
                                                                                          'Title',
                                                                                        )} copied!'
                                                                                      : 'Copied!',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: FFAppState().compactView == true ? 12.0 : 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                FlutterFlowTimer(
                                                                  initialTime:
                                                                      _model
                                                                          .timer7InitialTimeMs,
                                                                  getDisplayTime:
                                                                      (value) =>
                                                                          StopWatchTimer
                                                                              .getDisplayTime(
                                                                    value,
                                                                    hours:
                                                                        false,
                                                                    milliSecond:
                                                                        false,
                                                                  ),
                                                                  controller: _model
                                                                      .timer7Controller,
                                                                  updateStateInterval:
                                                                      Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                  onChanged: (value,
                                                                      displayTime,
                                                                      shouldUpdate) {
                                                                    _model.timer7Milliseconds =
                                                                        value;
                                                                    _model.timer7Value =
                                                                        displayTime;
                                                                    if (shouldUpdate)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  onEnded:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_Timer7_ON_TIMER_END');
                                                                    logFirebaseEvent(
                                                                        'Timer7_update_page_state');
                                                                    _model.textField7Copy =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        fontSize:
                                                                            0.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
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
                                                                        'Select copied text format',
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
                                                                        0.0,
                                                                    tailLength:
                                                                        0.0,
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
                                                                        Visibility(
                                                                      visible:
                                                                          _model.mouseRegionRow3Hovered5 ==
                                                                              true,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).grayIcon,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .mouseRegionSettings3Hovered5 ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            191.0,
                                                                        height:
                                                                            35.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            FlutterFlowChoiceChips(
                                                                          options: [
                                                                            ChipData('None'),
                                                                            ChipData('Bullets'),
                                                                            ChipData('Numbers')
                                                                          ],
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.choiceChips7Value = val?.firstOrNull),
                                                                          selectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          unselectedChipStyle:
                                                                              ChipStyle(
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            iconSize:
                                                                                16.0,
                                                                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                5.0,
                                                                                0.0),
                                                                            elevation:
                                                                                0.0,
                                                                            borderWidth:
                                                                                0.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          chipSpacing:
                                                                              5.0,
                                                                          rowSpacing:
                                                                              5.0,
                                                                          multiselect:
                                                                              false,
                                                                          initialized:
                                                                              _model.choiceChips7Value != null,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          controller: _model.choiceChips7ValueController ??=
                                                                              FormFieldController<List<String>>(
                                                                            [
                                                                              'None'
                                                                            ],
                                                                          ),
                                                                          wrapped:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered5 =
                                                                        true);
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                safeSetState(() =>
                                                                    _model.mouseRegionSettings3Hovered5 =
                                                                        false);
                                                              }),
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered5 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionRow3Hovered5 =
                                                                  false);
                                                        }),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: DragTarget<
                                                                  String>(
                                                                onAcceptWithDetails:
                                                                    (details) async {
                                                                  logFirebaseEvent(
                                                                      'B1_CLICKNOTE_NOTE_DragTarget_4lmgs4nz_ON');
                                                                  logFirebaseEvent(
                                                                      'DragTarget_set_form_field');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textField7TextController
                                                                        ?.text = (_model.textField7TextController.text !=
                                                                                ''
                                                                        ? '${_model.textField7TextController.text}${functions.newLineAtStart(details.data)}'
                                                                        : details
                                                                            .data);
                                                                  });

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                builder:
                                                                    (context, _,
                                                                        __) {
                                                                  return Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textField7TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textField7FocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .textField7TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  );
                                                                },
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons
                                                      .exclamationCircle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent3,
                                                  size: 16.0,
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.3,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Take a moment to review your note for accuracy and completeness.',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().compactView == false)
                                  Container(
                                    width: 40.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                if (FFAppState().compactView == true)
                                  Container(
                                    width: 4.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.1),
                            child: Stack(
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          width: 1000.0,
                                          decoration: BoxDecoration(),
                                          child: Visibility(
                                            visible: _model.hideTitle != true,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .textFieldTitleTextController ??=
                                                    TextEditingController(
                                                  text:
                                                      columnFlattenedTemplatesRecord
                                                          .templateName,
                                                ),
                                                focusNode: _model
                                                    .textFieldTitleFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textFieldTitleTextController',
                                                  Duration(milliseconds: 2000),
                                                  () async {
                                                    logFirebaseEvent(
                                                        'B1_CLICKNOTE_NOTE_TextFieldTitle_ON_TEXT');
                                                    logFirebaseEvent(
                                                        'TextFieldTitle_backend_call');

                                                    await widget.templateRef!
                                                        .update(
                                                            createFlattenedTemplatesRecordData(
                                                      templateName: _model
                                                          .textFieldTitleTextController
                                                          .text,
                                                    ));
                                                  },
                                                ),
                                                autofocus: false,
                                                readOnly:
                                                    columnFlattenedTemplatesRecord
                                                            .templateUser !=
                                                        currentUserReference,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displayLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displayLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .displayLargeFamily),
                                                        ),
                                                textAlign: TextAlign.center,
                                                validator: _model
                                                    .textFieldTitleTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 23.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        30.0, 0.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'B1_CLICKNOTE_NOTE_PAGE_BACK_BTN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.pushNamed(
                                                        'a1_clicknote_home');
                                                  },
                                                  text: 'Back',
                                                  icon: Icon(
                                                    Icons.chevron_left,
                                                    size: 26.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                15.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: AlignedTooltip(
                                                  content: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Reset page',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  offset: 4.0,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4.0,
                                                  tailBaseWidth: 0.0,
                                                  tailLength: 0.0,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration:
                                                      Duration(milliseconds: 0),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius: 8.0,
                                                      borderWidth: 2.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      icon: Icon(
                                                        Icons.restore_sharp,
                                                        color: Colors.white,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'B1_CLICKNOTE_NOTE_restore_sharp_ICN_ON_T');
                                                        logFirebaseEvent(
                                                            'IconButton_navigate_to');

                                                        context.pushNamed(
                                                          'b1_clicknote_note',
                                                          queryParameters: {
                                                            'templateRef':
                                                                serializeParam(
                                                              widget
                                                                  .templateRef,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if ((currentUserEmail ==
                                                      'jamesjwalker01@gmail.com') &&
                                                  (FFAppState().demoMode ==
                                                      false))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 125.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  2.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 58.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Admin edit',
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scaleX: 0.7,
                                                            scaleY: 0.7,
                                                            child:
                                                                AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Copy text in upper case',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  0.0,
                                                              tailLength: 0.0,
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
                                                              child: Switch
                                                                  .adaptive(
                                                                value: _model
                                                                    .switchEditValue1!,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.switchEditValue1 =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_update_app_state');
                                                                    FFAppState()
                                                                            .editMode =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_update_app_state');
                                                                    FFAppState()
                                                                            .editMode =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (columnFlattenedTemplatesRecord
                                                      .templateUser ==
                                                  currentUserReference)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 125.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  2.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 58.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Edit template',
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scaleX: 0.7,
                                                            scaleY: 0.7,
                                                            child:
                                                                AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Toggle to edit your template',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  0.0,
                                                              tailLength: 0.0,
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
                                                              child: Switch
                                                                  .adaptive(
                                                                value: _model
                                                                    .switchEditValue2!,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.switchEditValue2 =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_update_app_state');
                                                                    FFAppState()
                                                                            .editMode =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_update_app_state');
                                                                    FFAppState()
                                                                            .editMode =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if ((currentUserEmail ==
                                                      'jamesjwalker01@gmail.com') &&
                                                  (FFAppState().demoMode ==
                                                      false))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 125.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  2.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 58.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Admin publish',
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scaleX: 0.7,
                                                            scaleY: 0.7,
                                                            child:
                                                                AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Copy text in upper case',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  0.0,
                                                              tailLength: 0.0,
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
                                                              child: Switch
                                                                  .adaptive(
                                                                value: _model
                                                                        .switchEditValue3 ??=
                                                                    columnFlattenedTemplatesRecord
                                                                        .templateIsPublished,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.switchEditValue3 =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_backend_call');

                                                                    await columnFlattenedTemplatesRecord
                                                                        .reference
                                                                        .update(
                                                                            createFlattenedTemplatesRecordData(
                                                                      templateIsPublished:
                                                                          true,
                                                                    ));
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_backend_call');

                                                                    await columnFlattenedTemplatesRecord
                                                                        .reference
                                                                        .update(
                                                                            createFlattenedTemplatesRecordData(
                                                                      templateIsPublished:
                                                                          false,
                                                                    ));
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (columnFlattenedTemplatesRecord
                                                      .templateUser ==
                                                  currentUserReference)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 206.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  2.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 140.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'Publish to community templates',
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scaleX: 0.7,
                                                            scaleY: 0.7,
                                                            child:
                                                                AlignedTooltip(
                                                              content: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Text(
                                                                  'Copy text in upper case',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              offset: 4.0,
                                                              preferredDirection:
                                                                  AxisDirection
                                                                      .down,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              elevation: 4.0,
                                                              tailBaseWidth:
                                                                  0.0,
                                                              tailLength: 0.0,
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
                                                              child: Switch
                                                                  .adaptive(
                                                                value: _model
                                                                        .switchEditValue4 ??=
                                                                    columnFlattenedTemplatesRecord
                                                                        .templateIsCommunityTemplate,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.switchEditValue4 =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_custom_action');
                                                                    _model.anyOptionHasUrl =
                                                                        await actions
                                                                            .checkIfAnyOptionHasUrl(
                                                                      columnFlattenedTemplatesRecord
                                                                          .templateSections
                                                                          .toList(),
                                                                    );
                                                                    if (_model
                                                                            .anyOptionHasUrl ==
                                                                        true) {
                                                                      logFirebaseEvent(
                                                                          'SwitchEdit_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Currenty, external URLs are not supported on community templates to avoid sharing of malicious links.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'SwitchEdit_backend_call');

                                                                      await columnFlattenedTemplatesRecord
                                                                          .reference
                                                                          .update(
                                                                              createFlattenedTemplatesRecordData(
                                                                        templateIsCommunityTemplate:
                                                                            true,
                                                                      ));
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                    logFirebaseEvent(
                                                                        'SwitchEdit_backend_call');

                                                                    await columnFlattenedTemplatesRecord
                                                                        .reference
                                                                        .update(
                                                                            createFlattenedTemplatesRecordData(
                                                                      templateIsCommunityTemplate:
                                                                          false,
                                                                    ));
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                if (_model.allCopy == false)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                20.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'B1_CLICKNOTE_NOTE_PAGE_ButtonCopy_ON_TAP');
                                                        if (_model
                                                                .switchCapsValue ==
                                                            false) {
                                                          logFirebaseEvent(
                                                              'ButtonCopy_copy_to_clipboard');
                                                          await Clipboard.setData(ClipboardData(
                                                              text: '${columnFlattenedTemplatesRecord.templateSections.length >= 1 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(0)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 1 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(_model.choiceChips0Value == 'Bullets' ? functions.addBullets(_model.textField0TextController.text) : _model.textField0TextController.text)) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 2 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(1)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 2 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(_model.choiceChips1Value == 'Bullets' ? functions.addBullets(_model.textField1TextController.text) : _model.textField1TextController.text)) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 3 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(2)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 3 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips2Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField2TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips2Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField2TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField2TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 4 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(3)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 4 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips3Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField3TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips3Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField3TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField3TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 5 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(4)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 5 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips4Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField4TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips4Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField4TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField4TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 6 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(5)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 6 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips5Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField5TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips5Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField5TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField5TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 7 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(6)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 7 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips6Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField6TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips6Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField6TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField6TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 8 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(7)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 8 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips7Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField7TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips7Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField7TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField7TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}'));
                                                          logFirebaseEvent(
                                                              'ButtonCopy_update_page_state');
                                                          _model.allCopy = true;
                                                          safeSetState(() {});
                                                          logFirebaseEvent(
                                                              'ButtonCopy_timer');
                                                          _model
                                                              .timerAllController
                                                              .onResetTimer();

                                                          logFirebaseEvent(
                                                              'ButtonCopy_timer');
                                                          _model
                                                              .timerAllController
                                                              .onStartTimer();
                                                        } else {
                                                          logFirebaseEvent(
                                                              'ButtonCopy_copy_to_clipboard');
                                                          await Clipboard.setData(ClipboardData(
                                                              text: functions.makeAllCaps('${columnFlattenedTemplatesRecord.templateSections.length >= 1 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(0)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 1 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(_model.choiceChips0Value == 'Bullets' ? functions.addBullets(_model.textField0TextController.text) : _model.textField0TextController.text)) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 2 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(1)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 2 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(_model.choiceChips1Value == 'Bullets' ? functions.addBullets(_model.textField1TextController.text) : _model.textField1TextController.text)) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 3 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(2)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 3 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips2Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField2TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips2Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField2TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField2TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 4 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(3)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 4 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips3Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField3TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips3Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField3TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField3TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 5 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(4)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 5 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips4Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField4TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips4Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField4TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField4TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 6 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(5)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 6 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips5Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField5TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips5Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField5TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField5TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 7 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(6)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 7 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips6Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField6TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips6Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField6TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField6TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 8 ? functions.addNewLineIfNotEmpty('${columnFlattenedTemplatesRecord.templateSections.sortedList(keyOf: (e) => e.sectionIndex, desc: false).elementAtOrNull(7)?.sectionText}') : ''}${columnFlattenedTemplatesRecord.templateSections.length >= 8 ? functions.addNewLineIfNotEmpty(functions.addNewLineIfNotEmpty(() {
                                                                  if (_model
                                                                          .choiceChips7Value ==
                                                                      'Bullets') {
                                                                    return functions
                                                                        .addBullets(_model
                                                                            .textField7TextController
                                                                            .text);
                                                                  } else if (_model
                                                                          .choiceChips7Value ==
                                                                      'Numbers') {
                                                                    return functions
                                                                        .addNumbering(_model
                                                                            .textField7TextController
                                                                            .text);
                                                                  } else {
                                                                    return _model
                                                                        .textField7TextController
                                                                        .text;
                                                                  }
                                                                }())) : ''}')!));
                                                          logFirebaseEvent(
                                                              'ButtonCopy_update_page_state');
                                                          _model.allCopy = true;
                                                          safeSetState(() {});
                                                          logFirebaseEvent(
                                                              'ButtonCopy_timer');
                                                          _model
                                                              .timerAllController
                                                              .onResetTimer();

                                                          logFirebaseEvent(
                                                              'ButtonCopy_timer');
                                                          _model
                                                              .timerAllController
                                                              .onStartTimer();
                                                        }
                                                      },
                                                      text: 'Copy All',
                                                      icon: Icon(
                                                        Icons
                                                            .content_copy_rounded,
                                                        size: 22.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 115.0,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                if (_model.allCopy == true)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                20.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'ButtonCopied pressed ...');
                                                      },
                                                      text: 'Copied!',
                                                      icon: Icon(
                                                        Icons
                                                            .library_add_check_outlined,
                                                        size: 22.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 115.0,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    15.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                FlutterFlowTimer(
                                                  initialTime: _model
                                                      .timerAllInitialTimeMs,
                                                  getDisplayTime: (value) =>
                                                      StopWatchTimer
                                                          .getDisplayTime(
                                                    value,
                                                    hours: false,
                                                    milliSecond: false,
                                                  ),
                                                  controller:
                                                      _model.timerAllController,
                                                  updateStateInterval: Duration(
                                                      milliseconds: 1000),
                                                  onChanged: (value,
                                                      displayTime,
                                                      shouldUpdate) {
                                                    _model.timerAllMilliseconds =
                                                        value;
                                                    _model.timerAllValue =
                                                        displayTime;
                                                    if (shouldUpdate)
                                                      safeSetState(() {});
                                                  },
                                                  onEnded: () async {
                                                    logFirebaseEvent(
                                                        'B1_CLICKNOTE_NOTE_TimerAll_ON_TIMER_END');
                                                    logFirebaseEvent(
                                                        'TimerAll_update_page_state');
                                                    _model.allCopy = false;
                                                    safeSetState(() {});
                                                  },
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        fontSize: 0.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily),
                                                      ),
                                                ),
                                              ],
                                            ),
                                            MouseRegion(
                                              opaque: false,
                                              cursor: MouseCursor.defer ??
                                                  MouseCursor.defer,
                                              child: Visibility(
                                                visible:
                                                    (columnFlattenedTemplatesRecord
                                                                .templateIsPublished ==
                                                            true) &&
                                                        responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  20.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        borderRadius: 8.0,
                                                        borderWidth: 2.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        icon: Icon(
                                                          Icons.insert_comment,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'B1_CLICKNOTE_NOTE_insert_comment_ICN_ON_');
                                                          logFirebaseEvent(
                                                              'IconButton_bottom_sheet');
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
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
                                                                        B90BottomSheetTemplateCommentsWidget(
                                                                      clicknoteRef:
                                                                          widget
                                                                              .templateRef!,
                                                                      templateName:
                                                                          columnFlattenedTemplatesRecord
                                                                              .templateName,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: FutureBuilder<int>(
                                                        future:
                                                            queryFlattenedTemplateCommentsRecordCount(
                                                          parent: widget
                                                              .templateRef,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitPulse(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          int containerCount =
                                                              snapshot.data!;

                                                          return Container(
                                                            height: 20.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              minWidth: 20.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                              child: Text(
                                                                containerCount
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() => _model
                                                        .mouseRegionCommentsHovered =
                                                    true);
                                              }),
                                              onExit: ((event) async {
                                                safeSetState(() => _model
                                                        .mouseRegionCommentsHovered =
                                                    false);
                                              }),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 5.0, 20.0, 0.0),
                                              child: Container(
                                                width: 160.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .grayIcon,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  color: Color(0x00000000),
                                                  child: ExpandableNotifier(
                                                    controller: _model
                                                        .expandableExpandableController,
                                                    child: ExpandablePanel(
                                                      header: Text(
                                                        'Settings',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                      ),
                                                      collapsed: Container(
                                                        width: 1.0,
                                                        height: 1.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                      ),
                                                      expanded: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    5.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 135.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Button size',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Slider(
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        inactiveColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        min:
                                                                            0.0,
                                                                        max:
                                                                            2.0,
                                                                        value: _model.sliderValue ??=
                                                                            1.0,
                                                                        divisions:
                                                                            2,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          newValue =
                                                                              double.parse(newValue.toStringAsFixed(0));
                                                                          safeSetState(() =>
                                                                              _model.sliderValue = newValue);
                                                                          logFirebaseEvent(
                                                                              'B1_CLICKNOTE_NOTE_Slider_13dtk4jy_ON_FOR');
                                                                          if (_model.sliderValue ==
                                                                              0.0) {
                                                                            logFirebaseEvent('Slider_update_app_state');
                                                                            FFAppState().optionHeight =
                                                                                28;
                                                                            FFAppState().optionTextSize =
                                                                                14;
                                                                            safeSetState(() {});
                                                                          } else {
                                                                            if (_model.sliderValue ==
                                                                                1.0) {
                                                                              logFirebaseEvent('Slider_update_app_state');
                                                                              FFAppState().optionHeight = 37;
                                                                              FFAppState().optionTextSize = 16;
                                                                              safeSetState(() {});
                                                                            } else {
                                                                              if (_model.sliderValue == 2.0) {
                                                                                logFirebaseEvent('Slider_update_app_state');
                                                                                FFAppState().optionHeight = 45;
                                                                                FFAppState().optionTextSize = 18;
                                                                                safeSetState(() {});
                                                                              }
                                                                            }
                                                                          }
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        1.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          135.0,
                                                                      height:
                                                                          45.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                3.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 74.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                'Tablet mode',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Transform
                                                                              .scale(
                                                                            scaleX:
                                                                                0.7,
                                                                            scaleY:
                                                                                0.7,
                                                                            child:
                                                                                AlignedTooltip(
                                                                              content: Padding(
                                                                                padding: EdgeInsets.all(4.0),
                                                                                child: Text(
                                                                                  'Copy text in upper case',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              offset: 4.0,
                                                                              preferredDirection: AxisDirection.down,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 4.0,
                                                                              tailBaseWidth: 0.0,
                                                                              tailLength: 0.0,
                                                                              waitDuration: Duration(milliseconds: 0),
                                                                              showDuration: Duration(milliseconds: 0),
                                                                              triggerMode: TooltipTriggerMode.tap,
                                                                              child: Switch.adaptive(
                                                                                value: _model.switchEditValue5!,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.switchEditValue5 = newValue);
                                                                                  if (newValue) {
                                                                                    logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                                    logFirebaseEvent('SwitchEdit_update_app_state');
                                                                                    FFAppState().compactView = true;
                                                                                    FFAppState().focusTextfield = false;
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('SwitchEdit_update_app_state');
                                                                                    FFAppState().optionHeight = 28;
                                                                                    FFAppState().optionTextSize = 14;
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('SwitchEdit_set_form_field');
                                                                                    safeSetState(() {
                                                                                      _model.sliderValue = 0.0;
                                                                                    });
                                                                                    logFirebaseEvent('SwitchEdit_set_form_field');
                                                                                    safeSetState(() {
                                                                                      _model.switchFocusOnPasteValue = false;
                                                                                    });
                                                                                  } else {
                                                                                    logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchEdit_ON_TOGGLE_O');
                                                                                    logFirebaseEvent('SwitchEdit_update_app_state');
                                                                                    FFAppState().compactView = false;
                                                                                    FFAppState().focusTextfield = true;
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('SwitchEdit_update_app_state');
                                                                                    FFAppState().optionHeight = 37;
                                                                                    FFAppState().optionTextSize = 16;
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('SwitchEdit_set_form_field');
                                                                                    safeSetState(() {
                                                                                      _model.sliderValue = 1.0;
                                                                                    });
                                                                                    logFirebaseEvent('SwitchEdit_set_form_field');
                                                                                    safeSetState(() {
                                                                                      _model.switchFocusOnPasteValue = true;
                                                                                    });
                                                                                  }
                                                                                },
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        135.0,
                                                                    height:
                                                                        45.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                74.0,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Text(
                                                                              'Focus on paste',
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Transform
                                                                            .scale(
                                                                          scaleX:
                                                                              0.7,
                                                                          scaleY:
                                                                              0.7,
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Copy text in upper case',
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
                                                                                0.0,
                                                                            tailLength:
                                                                                0.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Switch.adaptive(
                                                                              value: _model.switchFocusOnPasteValue!,
                                                                              onChanged: (newValue) async {
                                                                                safeSetState(() => _model.switchFocusOnPasteValue = newValue);
                                                                                if (newValue) {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchFocusOnPaste_ON_');
                                                                                  logFirebaseEvent('SwitchFocusOnPaste_update_app_state');
                                                                                  FFAppState().focusTextfield = true;
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchFocusOnPaste_ON_');
                                                                                  logFirebaseEvent('SwitchFocusOnPaste_update_app_state');
                                                                                  FFAppState().focusTextfield = false;
                                                                                  safeSetState(() {});
                                                                                }
                                                                              },
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        1.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          135.0,
                                                                      height:
                                                                          45.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                3.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 74.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                'Copy upper case',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Transform
                                                                              .scale(
                                                                            scaleX:
                                                                                0.7,
                                                                            scaleY:
                                                                                0.7,
                                                                            child:
                                                                                AlignedTooltip(
                                                                              content: Padding(
                                                                                padding: EdgeInsets.all(4.0),
                                                                                child: Text(
                                                                                  'Copy text in upper case',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              offset: 4.0,
                                                                              preferredDirection: AxisDirection.down,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 4.0,
                                                                              tailBaseWidth: 0.0,
                                                                              tailLength: 0.0,
                                                                              waitDuration: Duration(milliseconds: 0),
                                                                              showDuration: Duration(milliseconds: 0),
                                                                              triggerMode: TooltipTriggerMode.tap,
                                                                              child: Switch.adaptive(
                                                                                value: _model.switchCapsValue!,
                                                                                onChanged: (newValue) async {
                                                                                  safeSetState(() => _model.switchCapsValue = newValue);
                                                                                },
                                                                                activeColor: FlutterFlowTheme.of(context).primary,
                                                                                activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        135.0,
                                                                    height:
                                                                        45.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                74.0,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Text(
                                                                              'Hide title',
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Transform
                                                                            .scale(
                                                                          scaleX:
                                                                              0.7,
                                                                          scaleY:
                                                                              0.7,
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Copy text in upper case',
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
                                                                                0.0,
                                                                            tailLength:
                                                                                0.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Switch.adaptive(
                                                                              value: _model.switchHideTitleValue1!,
                                                                              onChanged: (newValue) async {
                                                                                safeSetState(() => _model.switchHideTitleValue1 = newValue);
                                                                                if (newValue) {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchHideTitle_ON_TOG');
                                                                                  logFirebaseEvent('SwitchHideTitle_update_page_state');
                                                                                  _model.hideTitle = true;
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchHideTitle_ON_TOG');
                                                                                  logFirebaseEvent('SwitchHideTitle_update_page_state');
                                                                                  _model.hideTitle = false;
                                                                                  safeSetState(() {});
                                                                                }
                                                                              },
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        135.0,
                                                                    height:
                                                                        45.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              3.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                74.0,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Text(
                                                                              'Enable draggable',
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Transform
                                                                            .scale(
                                                                          scaleX:
                                                                              0.7,
                                                                          scaleY:
                                                                              0.7,
                                                                          child:
                                                                              AlignedTooltip(
                                                                            content:
                                                                                Padding(
                                                                              padding: EdgeInsets.all(4.0),
                                                                              child: Text(
                                                                                'Copy text in upper case',
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
                                                                                0.0,
                                                                            tailLength:
                                                                                0.0,
                                                                            waitDuration:
                                                                                Duration(milliseconds: 0),
                                                                            showDuration:
                                                                                Duration(milliseconds: 0),
                                                                            triggerMode:
                                                                                TooltipTriggerMode.tap,
                                                                            child:
                                                                                Switch.adaptive(
                                                                              value: _model.switchHideTitleValue2!,
                                                                              onChanged: (newValue) async {
                                                                                safeSetState(() => _model.switchHideTitleValue2 = newValue);
                                                                                if (newValue) {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchHideTitle_ON_TOG');
                                                                                  logFirebaseEvent('SwitchHideTitle_update_app_state');
                                                                                  FFAppState().dragEnabled = true;
                                                                                  safeSetState(() {});
                                                                                } else {
                                                                                  logFirebaseEvent('B1_CLICKNOTE_NOTE_SwitchHideTitle_ON_TOG');
                                                                                  logFirebaseEvent('SwitchHideTitle_update_app_state');
                                                                                  FFAppState().dragEnabled = false;
                                                                                  safeSetState(() {});
                                                                                }
                                                                              },
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveTrackColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (columnFlattenedTemplatesRecord
                                                                        .templateUser !=
                                                                    currentUserReference)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_CLONE_TEMPLATE_BTN_ON_');
                                                                        logFirebaseEvent(
                                                                            'Button_bottom_sheet');
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: B92BottomSheetCloneTemplateWidget(
                                                                                    templateRef: widget.templateRef!,
                                                                                    templateName: columnFlattenedTemplatesRecord.templateName,
                                                                                    templateSections: columnFlattenedTemplatesRecord.templateSections,
                                                                                    templateIcon: columnFlattenedTemplatesRecord.templateIcon,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                      text:
                                                                          'Clone template',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            135.0,
                                                                        height:
                                                                            40.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (columnFlattenedTemplatesRecord
                                                                        .templateUser ==
                                                                    currentUserReference)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            30.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'B1_CLICKNOTE_NOTE_DELETE_TEMPLATE_BTN_ON');
                                                                        logFirebaseEvent(
                                                                            'Button_bottom_sheet');
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: B91BottomSheetConfirmTemplateDeleteWidget(
                                                                                    templateRef: widget.templateRef!,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                      text:
                                                                          'Delete template',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            36.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: Colors.white,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      theme:
                                                          ExpandableThemeData(
                                                        tapHeaderToExpand: true,
                                                        tapBodyToExpand: false,
                                                        tapBodyToCollapse:
                                                            false,
                                                        headerAlignment:
                                                            ExpandablePanelHeaderAlignment
                                                                .center,
                                                        hasIcon: true,
                                                        expandIcon: Icons
                                                            .settings_sharp,
                                                        iconSize: 20.0,
                                                        iconColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}
