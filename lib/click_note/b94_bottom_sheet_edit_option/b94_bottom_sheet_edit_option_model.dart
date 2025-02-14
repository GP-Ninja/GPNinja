import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b94_bottom_sheet_edit_option_widget.dart'
    show B94BottomSheetEditOptionWidget;
import 'package:flutter/material.dart';

class B94BottomSheetEditOptionModel
    extends FlutterFlowModel<B94BottomSheetEditOptionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwitchExternalURL widget.
  bool? switchExternalURLValue;
  // State field(s) for SwitchPopUpURL widget.
  bool? switchPopUpURLValue;
  // State field(s) for TextFieldWebViewURL widget.
  FocusNode? textFieldWebViewURLFocusNode;
  TextEditingController? textFieldWebViewURLTextController;
  String? Function(BuildContext, String?)?
      textFieldWebViewURLTextControllerValidator;
  // State field(s) for TextFieldWebViewPrompt widget.
  FocusNode? textFieldWebViewPromptFocusNode;
  TextEditingController? textFieldWebViewPromptTextController;
  String? Function(BuildContext, String?)?
      textFieldWebViewPromptTextControllerValidator;
  // State field(s) for SwitchMedication widget.
  bool? switchMedicationValue;
  // State field(s) for TextFieldBNF widget.
  FocusNode? textFieldBNFFocusNode;
  TextEditingController? textFieldBNFTextController;
  String? Function(BuildContext, String?)? textFieldBNFTextControllerValidator;
  // State field(s) for TextFieldBNFc widget.
  FocusNode? textFieldBNFcFocusNode;
  TextEditingController? textFieldBNFcTextController;
  String? Function(BuildContext, String?)? textFieldBNFcTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // State field(s) for SwitchNote widget.
  bool? switchNoteValue;
  // Stores action output result for [Custom Action - editOptionHasNote] action in SwitchNote widget.
  List<ClicknoteSectionStruct>? newSectionsBool;
  // Stores action output result for [Custom Action - editOptionHasNote] action in SwitchNote widget.
  List<ClicknoteSectionStruct>? newSectionsBoolFalse;
  // State field(s) for TextFieldNote widget.
  FocusNode? textFieldNoteFocusNode;
  TextEditingController? textFieldNoteTextController;
  String? Function(BuildContext, String?)? textFieldNoteTextControllerValidator;
  // Stores action output result for [Custom Action - editOptionNote] action in TextFieldNote widget.
  List<ClicknoteSectionStruct>? newSectionsTextfield;
  // Stores action output result for [Custom Action - editOptionNote] action in Button widget.
  List<ClicknoteSectionStruct>? newSections;
  // State field(s) for SwitchUrl widget.
  bool? switchUrlValue;
  // Stores action output result for [Custom Action - editOptionHasUrl] action in SwitchUrl widget.
  List<ClicknoteSectionStruct>? newSectionsUrlAdded;
  // Stores action output result for [Custom Action - editOptionHasUrl] action in SwitchUrl widget.
  List<ClicknoteSectionStruct>? newSectionsUrlRemoved;
  // State field(s) for TextFieldUrl widget.
  FocusNode? textFieldUrlFocusNode;
  TextEditingController? textFieldUrlTextController;
  String? Function(BuildContext, String?)? textFieldUrlTextControllerValidator;
  // Stores action output result for [Custom Action - editOptionUrl] action in TextFieldUrl widget.
  List<ClicknoteSectionStruct>? sectionsOptionUrlEditedTextfield;
  // Stores action output result for [Custom Action - editOptionUrl] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsOptionUrlEdited;
  // State field(s) for TextFieldUrlPrompt widget.
  FocusNode? textFieldUrlPromptFocusNode;
  TextEditingController? textFieldUrlPromptTextController;
  String? Function(BuildContext, String?)?
      textFieldUrlPromptTextControllerValidator;
  // Stores action output result for [Custom Action - editOptionUrlPrompt] action in TextFieldUrlPrompt widget.
  List<ClicknoteSectionStruct>? sectionsOptionUrlPromptEditedTextfield;
  // Stores action output result for [Custom Action - editOptionUrlPrompt] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsOptionUrlPromptEdited;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldWebViewURLFocusNode?.dispose();
    textFieldWebViewURLTextController?.dispose();

    textFieldWebViewPromptFocusNode?.dispose();
    textFieldWebViewPromptTextController?.dispose();

    textFieldBNFFocusNode?.dispose();
    textFieldBNFTextController?.dispose();

    textFieldBNFcFocusNode?.dispose();
    textFieldBNFcTextController?.dispose();

    textFieldNoteFocusNode?.dispose();
    textFieldNoteTextController?.dispose();

    textFieldUrlFocusNode?.dispose();
    textFieldUrlTextController?.dispose();

    textFieldUrlPromptFocusNode?.dispose();
    textFieldUrlPromptTextController?.dispose();
  }
}
