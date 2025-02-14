import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'admin_search_dashboard_widget.dart' show AdminSearchDashboardWidget;
import 'package:flutter/material.dart';

class AdminSearchDashboardModel
    extends FlutterFlowModel<AdminSearchDashboardWidget> {
  ///  Local state fields for this page.

  DateTime? date;

  List<DateTime> dates = [];
  void addToDates(DateTime item) => dates.add(item);
  void removeFromDates(DateTime item) => dates.remove(item);
  void removeAtIndexFromDates(int index) => dates.removeAt(index);
  void insertAtIndexInDates(int index, DateTime item) =>
      dates.insert(index, item);
  void updateDatesAtIndex(int index, Function(DateTime) updateFn) =>
      dates[index] = updateFn(dates[index]);

  List<int> counts = [];
  void addToCounts(int item) => counts.add(item);
  void removeFromCounts(int item) => counts.remove(item);
  void removeAtIndexFromCounts(int index) => counts.removeAt(index);
  void insertAtIndexInCounts(int index, int item) => counts.insert(index, item);
  void updateCountsAtIndex(int index, Function(int) updateFn) =>
      counts[index] = updateFn(counts[index]);

  List<DateTime> datesUsers = [];
  void addToDatesUsers(DateTime item) => datesUsers.add(item);
  void removeFromDatesUsers(DateTime item) => datesUsers.remove(item);
  void removeAtIndexFromDatesUsers(int index) => datesUsers.removeAt(index);
  void insertAtIndexInDatesUsers(int index, DateTime item) =>
      datesUsers.insert(index, item);
  void updateDatesUsersAtIndex(int index, Function(DateTime) updateFn) =>
      datesUsers[index] = updateFn(datesUsers[index]);

  List<int> countsUsers = [];
  void addToCountsUsers(int item) => countsUsers.add(item);
  void removeFromCountsUsers(int item) => countsUsers.remove(item);
  void removeAtIndexFromCountsUsers(int index) => countsUsers.removeAt(index);
  void insertAtIndexInCountsUsers(int index, int item) =>
      countsUsers.insert(index, item);
  void updateCountsUsersAtIndex(int index, Function(int) updateFn) =>
      countsUsers[index] = updateFn(countsUsers[index]);

  int? userCount;

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode1;
  TextEditingController? textField3TextController1;
  String? Function(BuildContext, String?)? textField3TextController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? count;
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode2;
  TextEditingController? textField3TextController2;
  String? Function(BuildContext, String?)? textField3TextController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? runningTotal;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? countUser;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    textField3FocusNode1?.dispose();
    textField3TextController1?.dispose();

    textField3FocusNode2?.dispose();
    textField3TextController2?.dispose();
  }
}
