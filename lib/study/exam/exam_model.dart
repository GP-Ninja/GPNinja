import '/flutter_flow/flutter_flow_util.dart';
import 'exam_widget.dart' show ExamWidget;
import 'package:flutter/material.dart';

class ExamModel extends FlutterFlowModel<ExamWidget> {
  ///  Local state fields for this component.

  bool showTemplate = false;

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
