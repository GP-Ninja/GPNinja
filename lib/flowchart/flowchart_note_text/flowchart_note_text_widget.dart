import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flowchart_note_text_model.dart';
export 'flowchart_note_text_model.dart';

class FlowchartNoteTextWidget extends StatefulWidget {
  const FlowchartNoteTextWidget({
    super.key,
    required this.text,
    required this.index,
  });

  final String? text;
  final int? index;

  @override
  State<FlowchartNoteTextWidget> createState() =>
      _FlowchartNoteTextWidgetState();
}

class _FlowchartNoteTextWidgetState extends State<FlowchartNoteTextWidget> {
  late FlowchartNoteTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlowchartNoteTextModel());

    _model.textController ??= TextEditingController(text: widget.text);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _model.textController,
      focusNode: _model.textFieldFocusNode,
      onChanged: (_) => EasyDebounce.debounce(
        '_model.textController',
        Duration(milliseconds: 10),
        () async {
          logFirebaseEvent('FLOWCHART_NOTE_TEXT_TextField_gxbuc9xw_O');
          logFirebaseEvent('TextField_update_app_state');
          FFAppState().updateFlowchartTextToCopyAppStateAtIndex(
            widget.index!,
            (_) => _model.textController.text,
          );
          safeSetState(() {});
        },
      ),
      autofocus: true,
      obscureText: false,
      decoration: InputDecoration(
        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
            ),
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
            ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
      style: FlutterFlowTheme.of(context).titleLarge.override(
            fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
          ),
      maxLines: null,
      validator: _model.textControllerValidator.asValidator(context),
    );
  }
}
