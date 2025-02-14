import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/click_note/b7a_edit_option_text/b7a_edit_option_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b7_option_widget.dart' show B7OptionWidget;
import 'package:flutter/material.dart';

class B7OptionModel extends FlutterFlowModel<B7OptionWidget> {
  ///  Local state fields for this component.

  bool isSelected = false;

  bool editOptionView = false;

  bool optionDeleteCheck = false;

  int? loopIndex = 0;

  bool? whileIndexChanging = false;

  String? optionText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegionEditOption widget.
  bool mouseRegionEditOptionHovered = false;
  // State field(s) for MouseRegionOption widget.
  bool mouseRegionOptionHovered = false;
  // Stores action output result for [Bottom Sheet - b93_bottom_sheet_webview] action in Container widget.
  String? optionOutput1Copy;
  // Stores action output result for [Bottom Sheet - b93_bottom_sheet_webview] action in ContainerNonDraggable widget.
  String? optionOutput1Copye;
  // Stores action output result for [Custom Action - moveOptionBackward] action in Button widget.
  List<ClicknoteSectionStruct>? newSectionsBackward;
  // Stores action output result for [Custom Action - moveOptionForward] action in Button widget.
  List<ClicknoteSectionStruct>? newSections;
  // Stores action output result for [Custom Action - deleteOption] action in ButtonDelete widget.
  List<ClicknoteSectionStruct>? sectionsAfterDeleted;
  // Model for b7a_edit_option_text component.
  late B7aEditOptionTextModel b7aEditOptionTextModel;

  @override
  void initState(BuildContext context) {
    b7aEditOptionTextModel =
        createModel(context, () => B7aEditOptionTextModel());
  }

  @override
  void dispose() {
    b7aEditOptionTextModel.dispose();
  }
}
