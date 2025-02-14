import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_local_resource_widget.dart'
    show BottomSheetLocalResourceWidget;
import 'package:flutter/material.dart';

class BottomSheetLocalResourceModel
    extends FlutterFlowModel<BottomSheetLocalResourceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
