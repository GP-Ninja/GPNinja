import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_flashcard_widget.dart' show NewFlashcardWidget;
import 'package:flutter/material.dart';

class NewFlashcardModel extends FlutterFlowModel<NewFlashcardWidget> {
  ///  Local state fields for this component.

  DocumentReference? selectedCategoryId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldQuestion widget.
  FocusNode? textFieldQuestionFocusNode;
  TextEditingController? textFieldQuestionTextController;
  String? Function(BuildContext, String?)?
      textFieldQuestionTextControllerValidator;
  // State field(s) for TextFieldAnswer widget.
  FocusNode? textFieldAnswerFocusNode;
  TextEditingController? textFieldAnswerTextController;
  String? Function(BuildContext, String?)?
      textFieldAnswerTextControllerValidator;
  // State field(s) for TextFieldLink widget.
  FocusNode? textFieldLinkFocusNode;
  TextEditingController? textFieldLinkTextController;
  String? Function(BuildContext, String?)? textFieldLinkTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldQuestionFocusNode?.dispose();
    textFieldQuestionTextController?.dispose();

    textFieldAnswerFocusNode?.dispose();
    textFieldAnswerTextController?.dispose();

    textFieldLinkFocusNode?.dispose();
    textFieldLinkTextController?.dispose();
  }
}
