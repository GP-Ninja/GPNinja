import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'question_view_widget.dart' show QuestionViewWidget;
import 'package:flutter/material.dart';

class QuestionViewModel extends FlutterFlowModel<QuestionViewWidget> {
  ///  Local state fields for this page.

  String? selectedAnswer = '';

  bool? answerCorrect = false;

  bool? answerWrong = false;

  List<QuestionsAttemptedStruct> questionsThisSession = [];
  void addToQuestionsThisSession(QuestionsAttemptedStruct item) =>
      questionsThisSession.add(item);
  void removeFromQuestionsThisSession(QuestionsAttemptedStruct item) =>
      questionsThisSession.remove(item);
  void removeAtIndexFromQuestionsThisSession(int index) =>
      questionsThisSession.removeAt(index);
  void insertAtIndexInQuestionsThisSession(
          int index, QuestionsAttemptedStruct item) =>
      questionsThisSession.insert(index, item);
  void updateQuestionsThisSessionAtIndex(
          int index, Function(QuestionsAttemptedStruct) updateFn) =>
      questionsThisSession[index] = updateFn(questionsThisSession[index]);

  List<DocumentReference> allQuestionsToDo = [];
  void addToAllQuestionsToDo(DocumentReference item) =>
      allQuestionsToDo.add(item);
  void removeFromAllQuestionsToDo(DocumentReference item) =>
      allQuestionsToDo.remove(item);
  void removeAtIndexFromAllQuestionsToDo(int index) =>
      allQuestionsToDo.removeAt(index);
  void insertAtIndexInAllQuestionsToDo(int index, DocumentReference item) =>
      allQuestionsToDo.insert(index, item);
  void updateAllQuestionsToDoAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      allQuestionsToDo[index] = updateFn(allQuestionsToDo[index]);

  int index = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserResponsesRecord? answeredQuestion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
