import '/flutter_flow/flutter_flow_util.dart';
import 'flowchart_widget.dart' show FlowchartWidget;
import 'package:flutter/material.dart';

class FlowchartModel extends FlutterFlowModel<FlowchartWidget> {
  ///  Local state fields for this page.

  int? pageIndex;

  List<DocumentReference> flowchartList = [];
  void addToFlowchartList(DocumentReference item) => flowchartList.add(item);
  void removeFromFlowchartList(DocumentReference item) =>
      flowchartList.remove(item);
  void removeAtIndexFromFlowchartList(int index) =>
      flowchartList.removeAt(index);
  void insertAtIndexInFlowchartList(int index, DocumentReference item) =>
      flowchartList.insert(index, item);
  void updateFlowchartListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      flowchartList[index] = updateFn(flowchartList[index]);

  List<String> textToCopy = [];
  void addToTextToCopy(String item) => textToCopy.add(item);
  void removeFromTextToCopy(String item) => textToCopy.remove(item);
  void removeAtIndexFromTextToCopy(int index) => textToCopy.removeAt(index);
  void insertAtIndexInTextToCopy(int index, String item) =>
      textToCopy.insert(index, item);
  void updateTextToCopyAtIndex(int index, Function(String) updateFn) =>
      textToCopy[index] = updateFn(textToCopy[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
