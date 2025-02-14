import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/click_note/b3a_edit_section_text/b3a_edit_section_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b3_section_header_widget.dart' show B3SectionHeaderWidget;
import 'package:flutter/material.dart';

class B3SectionHeaderModel extends FlutterFlowModel<B3SectionHeaderWidget> {
  ///  Local state fields for this component.

  bool editSectionTitle = false;

  int? loopIntager = 0;

  bool confirmDelete = false;

  bool isLoading = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegionEditSectionTitle widget.
  bool mouseRegionEditSectionTitleHovered = false;
  // Model for b3a_edit_section_text component.
  late B3aEditSectionTextModel b3aEditSectionTextModel;
  // Stores action output result for [Custom Action - moveSectionBackward] action in IconButton widget.
  List<ClicknoteSectionStruct>? sectionsSectionMovedBackwards;
  // Stores action output result for [Custom Action - moveSectionForward] action in IconButton widget.
  List<ClicknoteSectionStruct>? sectionsSectionMovedForwards;
  // Stores action output result for [Custom Action - deleteSection] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsSectionDeleted;

  @override
  void initState(BuildContext context) {
    b3aEditSectionTextModel =
        createModel(context, () => B3aEditSectionTextModel());
  }

  @override
  void dispose() {
    b3aEditSectionTextModel.dispose();
  }
}
