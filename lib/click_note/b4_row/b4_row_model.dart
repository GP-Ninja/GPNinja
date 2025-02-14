import '/click_note/b5_row_header/b5_row_header_widget.dart';
import '/click_note/b8_new_option/b8_new_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b4_row_widget.dart' show B4RowWidget;
import 'package:flutter/material.dart';

class B4RowModel extends FlutterFlowModel<B4RowWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for b5_row_header component.
  late B5RowHeaderModel b5RowHeaderModel;
  // Model for b8_new_option component.
  late B8NewOptionModel b8NewOptionModel;

  @override
  void initState(BuildContext context) {
    b5RowHeaderModel = createModel(context, () => B5RowHeaderModel());
    b8NewOptionModel = createModel(context, () => B8NewOptionModel());
  }

  @override
  void dispose() {
    b5RowHeaderModel.dispose();
    b8NewOptionModel.dispose();
  }
}
