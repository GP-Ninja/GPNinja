import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b3a_edit_section_text_widget.dart' show B3aEditSectionTextWidget;
import 'package:flutter/material.dart';

class B3aEditSectionTextModel
    extends FlutterFlowModel<B3aEditSectionTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldSectionTitle widget.
  FocusNode? textFieldSectionTitleFocusNode;
  TextEditingController? textFieldSectionTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldSectionTitleTextControllerValidator;
  // Stores action output result for [Custom Action - editSectionText] action in TextFieldSectionTitle widget.
  List<ClicknoteSectionStruct>? sectionsEditSectionTextTextfield;
  // Stores action output result for [Custom Action - editSectionText] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsEditSectionText;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldSectionTitleFocusNode?.dispose();
    textFieldSectionTitleTextController?.dispose();
  }
}
