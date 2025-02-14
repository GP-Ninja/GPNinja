import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_add_or_edit_cpd_widget.dart'
    show BottomSheetAddOrEditCpdWidget;
import 'package:flutter/material.dart';

class BottomSheetAddOrEditCpdModel
    extends FlutterFlowModel<BottomSheetAddOrEditCpdWidget> {
  ///  Local state fields for this component.

  String? uploadedFile;

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldTitle widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for TextFieldDuration widget.
  FocusNode? textFieldDurationFocusNode;
  TextEditingController? textFieldDurationTextController;
  String? Function(BuildContext, String?)?
      textFieldDurationTextControllerValidator;
  // State field(s) for TextFieldDate widget.
  FocusNode? textFieldDateFocusNode;
  TextEditingController? textFieldDateTextController;
  String? Function(BuildContext, String?)? textFieldDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for TextFieldEndDate widget.
  FocusNode? textFieldEndDateFocusNode;
  TextEditingController? textFieldEndDateTextController;
  String? Function(BuildContext, String?)?
      textFieldEndDateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for TextURL widget.
  FocusNode? textURLFocusNode;
  TextEditingController? textURLTextController;
  String? Function(BuildContext, String?)? textURLTextControllerValidator;
  // State field(s) for TextNotes widget.
  FocusNode? textNotesFocusNode;
  TextEditingController? textNotesTextController;
  String? Function(BuildContext, String?)? textNotesTextControllerValidator;
  // State field(s) for TextLearning widget.
  FocusNode? textLearningFocusNode;
  TextEditingController? textLearningTextController;
  String? Function(BuildContext, String?)? textLearningTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    textFieldDurationFocusNode?.dispose();
    textFieldDurationTextController?.dispose();

    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();

    textFieldEndDateFocusNode?.dispose();
    textFieldEndDateTextController?.dispose();

    textURLFocusNode?.dispose();
    textURLTextController?.dispose();

    textNotesFocusNode?.dispose();
    textNotesTextController?.dispose();

    textLearningFocusNode?.dispose();
    textLearningTextController?.dispose();
  }
}
