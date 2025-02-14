import '/flutter_flow/flutter_flow_util.dart';
import 'flowchart_note_text_widget.dart' show FlowchartNoteTextWidget;
import 'package:flutter/material.dart';

class FlowchartNoteTextModel extends FlutterFlowModel<FlowchartNoteTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
