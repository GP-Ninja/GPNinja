import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b6_new_row_widget.dart' show B6NewRowWidget;
import 'package:flutter/material.dart';

class B6NewRowModel extends FlutterFlowModel<B6NewRowWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldNewRow widget.
  FocusNode? textFieldNewRowFocusNode;
  TextEditingController? textFieldNewRowTextController;
  String? Function(BuildContext, String?)?
      textFieldNewRowTextControllerValidator;
  // Stores action output result for [Custom Action - addRow] action in TextFieldNewRow widget.
  List<ClicknoteSectionStruct>? sectionsAddRowTextfield;
  // Stores action output result for [Custom Action - addRow] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsAddRow;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNewRowFocusNode?.dispose();
    textFieldNewRowTextController?.dispose();
  }
}
