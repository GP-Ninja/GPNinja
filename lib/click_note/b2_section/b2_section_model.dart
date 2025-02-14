import '/click_note/b3_section_header/b3_section_header_widget.dart';
import '/click_note/b6_new_row/b6_new_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b2_section_widget.dart' show B2SectionWidget;
import 'package:flutter/material.dart';

class B2SectionModel extends FlutterFlowModel<B2SectionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for b3_section_header component.
  late B3SectionHeaderModel b3SectionHeaderModel;
  // Model for b6_new_row component.
  late B6NewRowModel b6NewRowModel;

  @override
  void initState(BuildContext context) {
    b3SectionHeaderModel = createModel(context, () => B3SectionHeaderModel());
    b6NewRowModel = createModel(context, () => B6NewRowModel());
  }

  @override
  void dispose() {
    b3SectionHeaderModel.dispose();
    b6NewRowModel.dispose();
  }
}
