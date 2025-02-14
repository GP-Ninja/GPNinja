import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_output_review_widget.dart'
    show BottomSheetOutputReviewWidget;
import 'package:flutter/material.dart';

class BottomSheetOutputReviewModel
    extends FlutterFlowModel<BottomSheetOutputReviewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
