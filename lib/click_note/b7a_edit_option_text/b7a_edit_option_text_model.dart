import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b7a_edit_option_text_widget.dart' show B7aEditOptionTextWidget;
import 'package:flutter/material.dart';

class B7aEditOptionTextModel extends FlutterFlowModel<B7aEditOptionTextWidget> {
  ///  Local state fields for this component.

  bool isVisible = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldEditOption widget.
  FocusNode? textFieldEditOptionFocusNode;
  TextEditingController? textFieldEditOptionTextController;
  String? Function(BuildContext, String?)?
      textFieldEditOptionTextControllerValidator;
  // Stores action output result for [Custom Action - editOptionText] action in TextFieldEditOption widget.
  List<ClicknoteSectionStruct>? newSectionsOptionTextEditedTextfield;
  // Stores action output result for [Custom Action - editOptionText] action in Button widget.
  List<ClicknoteSectionStruct>? newSectionsOptionTextEdited;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEditOptionFocusNode?.dispose();
    textFieldEditOptionTextController?.dispose();
  }
}
