import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'b1a_note_section_widget.dart' show B1aNoteSectionWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class B1aNoteSectionModel extends FlutterFlowModel<B1aNoteSectionWidget> {
  ///  Local state fields for this component.

  bool copyConfirm = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 3000;
  int timerMilliseconds = 3000;
  String timerValue = StopWatchTimer.getDisplayTime(
    3000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for TextFieldDynamic widget.
  FocusNode? textFieldDynamicFocusNode;
  TextEditingController? textFieldDynamicTextController;
  String? Function(BuildContext, String?)?
      textFieldDynamicTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
    textFieldDynamicFocusNode?.dispose();
    textFieldDynamicTextController?.dispose();
  }
}
