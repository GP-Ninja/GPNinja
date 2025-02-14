import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/click_note/b5a_edit_row_text/b5a_edit_row_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b5_row_header_widget.dart' show B5RowHeaderWidget;
import 'package:flutter/material.dart';

class B5RowHeaderModel extends FlutterFlowModel<B5RowHeaderWidget> {
  ///  Local state fields for this component.

  int? loopIntager = 0;

  bool editRowTitleView = false;

  bool confirmDelete = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegionRowTitle widget.
  bool mouseRegionRowTitleHovered = false;
  // Stores action output result for [Custom Action - moveRowBackward] action in IconButton widget.
  List<ClicknoteSectionStruct>? sectionsRowMovedBackwards;
  // Stores action output result for [Custom Action - moveRowForward] action in IconButton widget.
  List<ClicknoteSectionStruct>? sectionsRowMovedForward;
  // Stores action output result for [Custom Action - deleteRow] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsDeleteRow;
  // Model for b5a_edit_row_text component.
  late B5aEditRowTextModel b5aEditRowTextModel;

  @override
  void initState(BuildContext context) {
    b5aEditRowTextModel = createModel(context, () => B5aEditRowTextModel());
  }

  @override
  void dispose() {
    b5aEditRowTextModel.dispose();
  }
}
