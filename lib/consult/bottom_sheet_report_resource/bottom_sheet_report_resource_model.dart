import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_report_resource_widget.dart'
    show BottomSheetReportResourceWidget;
import 'package:flutter/material.dart';

class BottomSheetReportResourceModel
    extends FlutterFlowModel<BottomSheetReportResourceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for reportText widget.
  FocusNode? reportTextFocusNode;
  TextEditingController? reportTextTextController;
  String? Function(BuildContext, String?)? reportTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reportTextFocusNode?.dispose();
    reportTextTextController?.dispose();
  }
}
