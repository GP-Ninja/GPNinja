import '/flutter_flow/flutter_flow_util.dart';
import 'test_output_widget.dart' show TestOutputWidget;
import 'package:flutter/material.dart';

class TestOutputModel extends FlutterFlowModel<TestOutputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldTestOutput widget.
  FocusNode? textFieldTestOutputFocusNode;
  TextEditingController? textFieldTestOutputTextController;
  String? Function(BuildContext, String?)?
      textFieldTestOutputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTestOutputFocusNode?.dispose();
    textFieldTestOutputTextController?.dispose();
  }
}
