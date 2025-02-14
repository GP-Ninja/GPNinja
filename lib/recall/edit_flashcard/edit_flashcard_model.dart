import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_flashcard_widget.dart' show EditFlashcardWidget;
import 'package:flutter/material.dart';

class EditFlashcardModel extends FlutterFlowModel<EditFlashcardWidget> {
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
  // State field(s) for TextFielLink widget.
  FocusNode? textFielLinkFocusNode;
  TextEditingController? textFielLinkTextController;
  String? Function(BuildContext, String?)? textFielLinkTextControllerValidator;
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

    textFielLinkFocusNode?.dispose();
    textFielLinkTextController?.dispose();
  }
}
