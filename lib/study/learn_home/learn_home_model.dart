import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'learn_home_widget.dart' show LearnHomeWidget;
import 'package:flutter/material.dart';

class LearnHomeModel extends FlutterFlowModel<LearnHomeWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> userResponses = [];
  void addToUserResponses(DocumentReference item) => userResponses.add(item);
  void removeFromUserResponses(DocumentReference item) =>
      userResponses.remove(item);
  void removeAtIndexFromUserResponses(int index) =>
      userResponses.removeAt(index);
  void insertAtIndexInUserResponses(int index, DocumentReference item) =>
      userResponses.insert(index, item);
  void updateUserResponsesAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      userResponses[index] = updateFn(userResponses[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<QuestionsRecord>? questionList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
