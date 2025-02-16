import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/consult/placeholder_community_resources/placeholder_community_resources_widget.dart';
import '/consult/placeholder_key_resources/placeholder_key_resources_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'consult_widget.dart' show ConsultWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ConsultModel extends FlutterFlowModel<ConsultWidget> {
  ///  Local state fields for this page.

  String? inputContent;

  dynamic chatHistory;

  DocumentReference? templatereference;

  DocumentReference? searchReference;

  List<DocumentReference> placeholderResultRef = [];
  void addToPlaceholderResultRef(DocumentReference item) =>
      placeholderResultRef.add(item);
  void removeFromPlaceholderResultRef(DocumentReference item) =>
      placeholderResultRef.remove(item);
  void removeAtIndexFromPlaceholderResultRef(int index) =>
      placeholderResultRef.removeAt(index);
  void insertAtIndexInPlaceholderResultRef(int index, DocumentReference item) =>
      placeholderResultRef.insert(index, item);
  void updatePlaceholderResultRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      placeholderResultRef[index] = updateFn(placeholderResultRef[index]);

  bool resourceType = true;

  bool feedbackVisible = false;

  String? templateSelected;

  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  // State field(s) for Timer2 widget.
  final timer2InitialTimeMs = 0;
  int timer2Milliseconds = 0;
  String timer2Value = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer2Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Algolia Search Results from action on Timer2
  List<PresentingComplaintsRecord>? algoliaSearchResults1 = [];
  // State field(s) for Timer1 widget.
  final timer1InitialTimeMs = 0;
  int timer1Milliseconds = 0;
  String timer1Value = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer1Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - Create Document] action in Timer1 widget.
  SearchRecord? newSearch;
  // Algolia Search Results from action on Timer1
  List<ResourcesRecord>? algoliaSearchResults2 = [];
  // Stores action output result for [Backend Call - API (googleCustomSearch)] action in Timer1 widget.
  ApiCallResponse? googleCombined;
  // State field(s) for MouseRegionLocal widget.
  bool mouseRegionLocalHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegionCKS widget.
  bool mouseRegionCKSHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedCKS;
  // State field(s) for MouseRegionSIGN widget.
  bool mouseRegionSIGNHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedSIGN;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegionPCDS widget.
  bool mouseRegionPCDSHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedPCDS;
  // State field(s) for MouseRegiondDermnet widget.
  bool mouseRegiondDermnetHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedDermnet;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegionBNF widget.
  bool mouseRegionBNFHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedBNF;
  // State field(s) for MouseRegionBNFc widget.
  bool mouseRegionBNFcHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedBNFc;
  // State field(s) for MouseRegionMC widget.
  bool mouseRegionMCHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedMedicinesComplete;
  // State field(s) for MouseRegionMIMS widget.
  bool mouseRegionMIMSHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedMIMS;
  // State field(s) for MouseRegionCalcs widget.
  bool mouseRegionCalcsHovered = false;
  // State field(s) for MouseRegionMDCALC widget.
  bool mouseRegionMDCALCHovered = false;
  // State field(s) for MouseRegionMDCALCOptions widget.
  bool mouseRegionMDCALCOptionsHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegionPatient widget.
  bool mouseRegionPatientHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedPatientInfo;
  // State field(s) for MouseRegionNHS widget.
  bool mouseRegionNHSHovered = false;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SearchResultsRecord? resultClickedNHS;
  // State field(s) for MouseRegionCombined widget.
  bool mouseRegionCombinedHovered = false;
  // State field(s) for SwitchCKS widget.
  bool? switchCKSValue;
  // Model for placeholder_key_resources component.
  late PlaceholderKeyResourcesModel placeholderKeyResourcesModel;
  // State field(s) for MouseRegionUserUploadedResources widget.
  bool mouseRegionUserUploadedResourcesHovered = false;
  // Model for placeholder_community_resources component.
  late PlaceholderCommunityResourcesModel placeholderCommunityResourcesModel;
  // State field(s) for MouseRegionTemplatesHeader widget.
  bool mouseRegionTemplatesHeaderHovered = false;
  // State field(s) for MouseRegionTemplates widget.
  bool mouseRegionTemplatesHovered = false;
  // State field(s) for TextFieldSafetyNetSmall widget.
  FocusNode? textFieldSafetyNetSmallFocusNode;
  TextEditingController? textFieldSafetyNetSmallTextController;
  String? Function(BuildContext, String?)?
      textFieldSafetyNetSmallTextControllerValidator;
  // State field(s) for TextFieldTextSmall widget.
  FocusNode? textFieldTextSmallFocusNode;
  TextEditingController? textFieldTextSmallTextController;
  String? Function(BuildContext, String?)?
      textFieldTextSmallTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegionMy widget.
  bool mouseRegionMyHovered = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for TextFieldPC widget.
  FocusNode? textFieldPCFocusNode;
  TextEditingController? textFieldPCTextController;
  String? Function(BuildContext, String?)? textFieldPCTextControllerValidator;
  // State field(s) for TextFieldHx widget.
  FocusNode? textFieldHxFocusNode;
  TextEditingController? textFieldHxTextController;
  String? Function(BuildContext, String?)? textFieldHxTextControllerValidator;
  // State field(s) for TextFieldEx widget.
  FocusNode? textFieldExFocusNode;
  TextEditingController? textFieldExTextController;
  String? Function(BuildContext, String?)? textFieldExTextControllerValidator;
  // State field(s) for TextFieldIm widget.
  FocusNode? textFieldImFocusNode;
  TextEditingController? textFieldImTextController;
  String? Function(BuildContext, String?)? textFieldImTextControllerValidator;
  // State field(s) for TextFieldPlan widget.
  FocusNode? textFieldPlanFocusNode;
  TextEditingController? textFieldPlanTextController;
  String? Function(BuildContext, String?)? textFieldPlanTextControllerValidator;
  // State field(s) for TextFieldNotes widget.
  FocusNode? textFieldNotesFocusNode;
  TextEditingController? textFieldNotesTextController;
  String? Function(BuildContext, String?)?
      textFieldNotesTextControllerValidator;
  // State field(s) for TextFieldText widget.
  FocusNode? textFieldTextFocusNode;
  TextEditingController? textFieldTextTextController;
  String? Function(BuildContext, String?)? textFieldTextTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;

  @override
  void initState(BuildContext context) {
    placeholderKeyResourcesModel =
        createModel(context, () => PlaceholderKeyResourcesModel());
    placeholderCommunityResourcesModel =
        createModel(context, () => PlaceholderCommunityResourcesModel());
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();

    timer2Controller.dispose();
    timer1Controller.dispose();
    placeholderKeyResourcesModel.dispose();
    placeholderCommunityResourcesModel.dispose();
    textFieldSafetyNetSmallFocusNode?.dispose();
    textFieldSafetyNetSmallTextController?.dispose();

    textFieldTextSmallFocusNode?.dispose();
    textFieldTextSmallTextController?.dispose();

    textFieldPCFocusNode?.dispose();
    textFieldPCTextController?.dispose();

    textFieldHxFocusNode?.dispose();
    textFieldHxTextController?.dispose();

    textFieldExFocusNode?.dispose();
    textFieldExTextController?.dispose();

    textFieldImFocusNode?.dispose();
    textFieldImTextController?.dispose();

    textFieldPlanFocusNode?.dispose();
    textFieldPlanTextController?.dispose();

    textFieldNotesFocusNode?.dispose();
    textFieldNotesTextController?.dispose();

    textFieldTextFocusNode?.dispose();
    textFieldTextTextController?.dispose();

    horizontalNavbarModel.dispose();
  }
}
