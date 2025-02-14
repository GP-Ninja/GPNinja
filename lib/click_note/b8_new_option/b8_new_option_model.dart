import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b8_new_option_widget.dart' show B8NewOptionWidget;
import 'package:flutter/material.dart';

class B8NewOptionModel extends FlutterFlowModel<B8NewOptionWidget> {
  ///  Local state fields for this component.

  bool addOptionView = false;

  ClicknoteSectionStruct? currentSection;
  void updateCurrentSectionStruct(Function(ClicknoteSectionStruct) updateFn) {
    updateFn(currentSection ??= ClicknoteSectionStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldNewOption widget.
  FocusNode? textFieldNewOptionFocusNode;
  TextEditingController? textFieldNewOptionTextController;
  String? Function(BuildContext, String?)?
      textFieldNewOptionTextControllerValidator;
  // Stores action output result for [Custom Action - addOption] action in TextFieldNewOption widget.
  List<ClicknoteSectionStruct>? sectionsAddOptionTextfield;
  // Stores action output result for [Custom Action - addOption] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsAddOption;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNewOptionFocusNode?.dispose();
    textFieldNewOptionTextController?.dispose();
  }
}
