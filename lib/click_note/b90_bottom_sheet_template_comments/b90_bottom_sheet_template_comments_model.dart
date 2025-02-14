import '/flutter_flow/flutter_flow_util.dart';
import 'b90_bottom_sheet_template_comments_widget.dart'
    show B90BottomSheetTemplateCommentsWidget;
import 'package:flutter/material.dart';

class B90BottomSheetTemplateCommentsModel
    extends FlutterFlowModel<B90BottomSheetTemplateCommentsWidget> {
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
