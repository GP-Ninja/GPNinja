import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'reflect_gp_trainee_dashbaord_widget.dart'
    show ReflectGpTraineeDashbaordWidget;
import 'package:flutter/material.dart';

class ReflectGpTraineeDashbaordModel
    extends FlutterFlowModel<ReflectGpTraineeDashbaordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for ReflectionCount widget.
  int? reflectionCountValue1;
  // State field(s) for AddCase widget.
  FocusNode? addCaseFocusNode1;
  TextEditingController? addCaseTextController1;
  String? Function(BuildContext, String?)? addCaseTextController1Validator;
  // State field(s) for CountController1 widget.
  int? countController1Value;
  // State field(s) for CountController2 widget.
  int? countController2Value;
  // State field(s) for CountController3 widget.
  int? countController3Value;
  // State field(s) for CountController4 widget.
  int? countController4Value;
  // State field(s) for CountController5 widget.
  int? countController5Value;
  // State field(s) for CountController6 widget.
  int? countController6Value;
  // State field(s) for CountController7 widget.
  int? countController7Value;
  // State field(s) for CountController8 widget.
  int? countController8Value;
  // State field(s) for CountController9 widget.
  int? countController9Value;
  // State field(s) for CountController10 widget.
  int? countController10Value;
  // State field(s) for CountController11 widget.
  int? countController11Value;
  // State field(s) for CountController12 widget.
  int? countController12Value;
  // State field(s) for CountController13 widget.
  int? countController13Value;
  // State field(s) for ReflectionCount widget.
  int? reflectionCountValue2;
  // State field(s) for AddCase widget.
  FocusNode? addCaseFocusNode2;
  TextEditingController? addCaseTextController2;
  String? Function(BuildContext, String?)? addCaseTextController2Validator;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    addCaseFocusNode1?.dispose();
    addCaseTextController1?.dispose();

    addCaseFocusNode2?.dispose();
    addCaseTextController2?.dispose();
  }
}
