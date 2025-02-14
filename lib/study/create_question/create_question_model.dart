import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_question_widget.dart' show CreateQuestionWidget;
import 'package:flutter/material.dart';

class CreateQuestionModel extends FlutterFlowModel<CreateQuestionWidget> {
  ///  Local state fields for this page.

  List<OptionsStruct> questionOptions = [];
  void addToQuestionOptions(OptionsStruct item) => questionOptions.add(item);
  void removeFromQuestionOptions(OptionsStruct item) =>
      questionOptions.remove(item);
  void removeAtIndexFromQuestionOptions(int index) =>
      questionOptions.removeAt(index);
  void insertAtIndexInQuestionOptions(int index, OptionsStruct item) =>
      questionOptions.insert(index, item);
  void updateQuestionOptionsAtIndex(
          int index, Function(OptionsStruct) updateFn) =>
      questionOptions[index] = updateFn(questionOptions[index]);

  String? correctAnswer;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for optionName widget.
  FocusNode? optionNameFocusNode;
  TextEditingController? optionNameTextController;
  String? Function(BuildContext, String?)? optionNameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  QuestionsRecord? question;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    optionNameFocusNode?.dispose();
    optionNameTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
