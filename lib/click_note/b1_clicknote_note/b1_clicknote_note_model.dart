import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'b1_clicknote_note_widget.dart' show B1ClicknoteNoteWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class B1ClicknoteNoteModel extends FlutterFlowModel<B1ClicknoteNoteWidget> {
  ///  Local state fields for this page.

  bool textField0Copy = false;

  bool textField1Copy = false;

  bool textField2Copy = false;

  bool textField3Copy = false;

  bool allCopy = false;

  int? loopIndex = 0;

  bool textField4Copy = false;

  bool textField5Copy = false;

  bool hideTitle = false;

  bool textFieldTextMessageCopy = false;

  int? deleteSectionIndex = 0;

  int? deleteRowIndex = 0;

  int? deleteOptionIndex = 0;

  bool textField6Copy = false;

  bool textField7Copy = false;

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for TextFieldNewSection widget.
  FocusNode? textFieldNewSectionFocusNode;
  TextEditingController? textFieldNewSectionTextController;
  String? Function(BuildContext, String?)?
      textFieldNewSectionTextControllerValidator;
  // Stores action output result for [Custom Action - addSection] action in TextFieldNewSection widget.
  List<ClicknoteSectionStruct>? sectionsNewSectionTextfield;
  // Stores action output result for [Custom Action - addSection] action in Button widget.
  List<ClicknoteSectionStruct>? sectionsNewSection;
  // State field(s) for MouseRegionRow0 widget.
  bool mouseRegionRow0Hovered = false;
  // State field(s) for Timer0 widget.
  final timer0InitialTimeMs = 3000;
  int timer0Milliseconds = 3000;
  String timer0Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer0Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings0 widget.
  bool mouseRegionSettings0Hovered = false;
  // State field(s) for ChoiceChips0 widget.
  FormFieldController<List<String>>? choiceChips0ValueController;
  String? get choiceChips0Value =>
      choiceChips0ValueController?.value?.firstOrNull;
  set choiceChips0Value(String? val) =>
      choiceChips0ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField0 widget.
  FocusNode? textField0FocusNode;
  TextEditingController? textField0TextController;
  String? Function(BuildContext, String?)? textField0TextControllerValidator;
  // State field(s) for MouseRegionrRow1 widget.
  bool mouseRegionrRow1Hovered = false;
  // State field(s) for Timer1 widget.
  final timer1InitialTimeMs = 3000;
  int timer1Milliseconds = 3000;
  String timer1Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer1Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings1 widget.
  bool mouseRegionSettings1Hovered = false;
  // State field(s) for ChoiceChips1 widget.
  FormFieldController<List<String>>? choiceChips1ValueController;
  String? get choiceChips1Value =>
      choiceChips1ValueController?.value?.firstOrNull;
  set choiceChips1Value(String? val) =>
      choiceChips1ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for MouseRegionRow2 widget.
  bool mouseRegionRow2Hovered = false;
  // State field(s) for Timer2 widget.
  final timer2InitialTimeMs = 3000;
  int timer2Milliseconds = 3000;
  String timer2Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer2Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings2 widget.
  bool mouseRegionSettings2Hovered = false;
  // State field(s) for ChoiceChips2 widget.
  FormFieldController<List<String>>? choiceChips2ValueController;
  String? get choiceChips2Value =>
      choiceChips2ValueController?.value?.firstOrNull;
  set choiceChips2Value(String? val) =>
      choiceChips2ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // State field(s) for MouseRegionRow3 widget.
  bool mouseRegionRow3Hovered1 = false;
  // State field(s) for Timer3 widget.
  final timer3InitialTimeMs = 3000;
  int timer3Milliseconds = 3000;
  String timer3Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer3Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings3 widget.
  bool mouseRegionSettings3Hovered1 = false;
  // State field(s) for ChoiceChips3 widget.
  FormFieldController<List<String>>? choiceChips3ValueController;
  String? get choiceChips3Value =>
      choiceChips3ValueController?.value?.firstOrNull;
  set choiceChips3Value(String? val) =>
      choiceChips3ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode;
  TextEditingController? textField3TextController;
  String? Function(BuildContext, String?)? textField3TextControllerValidator;
  // State field(s) for MouseRegionRow3 widget.
  bool mouseRegionRow3Hovered2 = false;
  // State field(s) for Timer4 widget.
  final timer4InitialTimeMs = 3000;
  int timer4Milliseconds = 3000;
  String timer4Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer4Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings3 widget.
  bool mouseRegionSettings3Hovered2 = false;
  // State field(s) for ChoiceChips4 widget.
  FormFieldController<List<String>>? choiceChips4ValueController;
  String? get choiceChips4Value =>
      choiceChips4ValueController?.value?.firstOrNull;
  set choiceChips4Value(String? val) =>
      choiceChips4ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField4 widget.
  FocusNode? textField4FocusNode;
  TextEditingController? textField4TextController;
  String? Function(BuildContext, String?)? textField4TextControllerValidator;
  // State field(s) for MouseRegionRow3 widget.
  bool mouseRegionRow3Hovered3 = false;
  // State field(s) for Timer5 widget.
  final timer5InitialTimeMs = 3000;
  int timer5Milliseconds = 3000;
  String timer5Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer5Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings3 widget.
  bool mouseRegionSettings3Hovered3 = false;
  // State field(s) for ChoiceChips5 widget.
  FormFieldController<List<String>>? choiceChips5ValueController;
  String? get choiceChips5Value =>
      choiceChips5ValueController?.value?.firstOrNull;
  set choiceChips5Value(String? val) =>
      choiceChips5ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField5 widget.
  FocusNode? textField5FocusNode;
  TextEditingController? textField5TextController;
  String? Function(BuildContext, String?)? textField5TextControllerValidator;
  // State field(s) for MouseRegionRow3 widget.
  bool mouseRegionRow3Hovered4 = false;
  // State field(s) for Timer6 widget.
  final timer6InitialTimeMs = 3000;
  int timer6Milliseconds = 3000;
  String timer6Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer6Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings3 widget.
  bool mouseRegionSettings3Hovered4 = false;
  // State field(s) for ChoiceChips6 widget.
  FormFieldController<List<String>>? choiceChips6ValueController;
  String? get choiceChips6Value =>
      choiceChips6ValueController?.value?.firstOrNull;
  set choiceChips6Value(String? val) =>
      choiceChips6ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField6 widget.
  FocusNode? textField6FocusNode;
  TextEditingController? textField6TextController;
  String? Function(BuildContext, String?)? textField6TextControllerValidator;
  // State field(s) for MouseRegionRow3 widget.
  bool mouseRegionRow3Hovered5 = false;
  // State field(s) for Timer7 widget.
  final timer7InitialTimeMs = 3000;
  int timer7Milliseconds = 3000;
  String timer7Value = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer7Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionSettings3 widget.
  bool mouseRegionSettings3Hovered5 = false;
  // State field(s) for ChoiceChips7 widget.
  FormFieldController<List<String>>? choiceChips7ValueController;
  String? get choiceChips7Value =>
      choiceChips7ValueController?.value?.firstOrNull;
  set choiceChips7Value(String? val) =>
      choiceChips7ValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField7 widget.
  FocusNode? textField7FocusNode;
  TextEditingController? textField7TextController;
  String? Function(BuildContext, String?)? textField7TextControllerValidator;
  // State field(s) for TextFieldTitle widget.
  FocusNode? textFieldTitleFocusNode;
  TextEditingController? textFieldTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldTitleTextControllerValidator;
  // State field(s) for SwitchEdit widget.
  bool? switchEditValue1;
  // State field(s) for SwitchEdit widget.
  bool? switchEditValue2;
  // State field(s) for SwitchEdit widget.
  bool? switchEditValue3;
  // State field(s) for SwitchEdit widget.
  bool? switchEditValue4;
  // Stores action output result for [Custom Action - checkIfAnyOptionHasUrl] action in SwitchEdit widget.
  bool? anyOptionHasUrl;
  // State field(s) for TimerAll widget.
  final timerAllInitialTimeMs = 3000;
  int timerAllMilliseconds = 3000;
  String timerAllValue = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerAllController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for MouseRegionComments widget.
  bool mouseRegionCommentsHovered = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for SwitchEdit widget.
  bool? switchEditValue5;
  // State field(s) for SwitchFocusOnPaste widget.
  bool? switchFocusOnPasteValue;
  // State field(s) for SwitchCaps widget.
  bool? switchCapsValue;
  // State field(s) for SwitchHideTitle widget.
  bool? switchHideTitleValue1;
  // State field(s) for SwitchHideTitle widget.
  bool? switchHideTitleValue2;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    textFieldNewSectionFocusNode?.dispose();
    textFieldNewSectionTextController?.dispose();

    timer0Controller.dispose();
    textField0FocusNode?.dispose();
    textField0TextController?.dispose();

    timer1Controller.dispose();
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    timer2Controller.dispose();
    textField2FocusNode?.dispose();
    textField2TextController?.dispose();

    timer3Controller.dispose();
    textField3FocusNode?.dispose();
    textField3TextController?.dispose();

    timer4Controller.dispose();
    textField4FocusNode?.dispose();
    textField4TextController?.dispose();

    timer5Controller.dispose();
    textField5FocusNode?.dispose();
    textField5TextController?.dispose();

    timer6Controller.dispose();
    textField6FocusNode?.dispose();
    textField6TextController?.dispose();

    timer7Controller.dispose();
    textField7FocusNode?.dispose();
    textField7TextController?.dispose();

    textFieldTitleFocusNode?.dispose();
    textFieldTitleTextController?.dispose();

    timerAllController.dispose();
    expandableExpandableController.dispose();
  }
}
