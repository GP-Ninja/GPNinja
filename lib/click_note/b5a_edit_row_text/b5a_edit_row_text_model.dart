import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b5a_edit_row_text_widget.dart' show B5aEditRowTextWidget;
import 'package:flutter/material.dart';

class B5aEditRowTextModel extends FlutterFlowModel<B5aEditRowTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldRowTitle widget.
  FocusNode? textFieldRowTitleFocusNode;
  TextEditingController? textFieldRowTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldRowTitleTextControllerValidator;
  // Stores action output result for [Custom Action - editRowText] action in TextFieldRowTitle widget.
  List<ClicknoteSectionStruct>? sectionsNewRowTextTextfield;
  // Stores action output result for [Custom Action - editRowText] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsNewRowText;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldRowTitleFocusNode?.dispose();
    textFieldRowTitleTextController?.dispose();
  }
}
