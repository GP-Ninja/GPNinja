import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'my_cases_widget.dart' show MyCasesWidget;
import 'package:flutter/material.dart';

class MyCasesModel extends FlutterFlowModel<MyCasesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for Checkbox widget.
  Map<ReflectionsRecord, bool> checkboxValueMap = {};
  List<ReflectionsRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
  }
}
