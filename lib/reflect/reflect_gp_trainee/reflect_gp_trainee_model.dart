import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'reflect_gp_trainee_widget.dart' show ReflectGpTraineeWidget;
import 'package:flutter/material.dart';

class ReflectGpTraineeModel extends FlutterFlowModel<ReflectGpTraineeWidget> {
  ///  Local state fields for this page.

  bool loadingIcon = false;

  String closingPromptCCR1to3 =
      'Give a list of the skills above, numbered like \'1. \'. With each skill include an example of how I could have shown this skill in the specific case mentioned above, separated from the skill with a blank line. Begin this example with \'You may have’, and word the example hypothetically, rather than saying that I did do something, for example using ‘you could have’, rather than ‘you did’. Format the entirety of the response in second person to address the user, do not use first person. Separate each statement pair with a blank line. Avoid generalised responses, and personalise the response as much as possible to the individual case. Do not include any additional comments apart from the list of skills and associated examples.';

  String introPromptCCR =
      'I am a doctor training to be a General Practitioner and have just taken some notes on a clinical case I have encountered:';

  String? capability1Extra;

  String? capability2Extra;

  String? capability3Extra;

  bool betaFeatures = false;

  String? pdpContext;

  String pdpPrompt1 =
      'I am a GP Trainee and you are my e-portfolio assistant.\n\nI need to write a Personal Development Plan (PDP), which needs to follow the below specific guidance.\n\nHere is some context about what I want you to write my PDP about:';

  String pdpPrompt2 =
      'Here is guidance on how to write a PDP:\n\nPDPs should aim to be:\nSpecific - this means clear and possible to demonstrate; for example, ‘learning all about women’s health’ is not specific, but ‘improving knowledge of contraception options’ is. It should be about you and your needs as a GP.\nMeasurable - this means you can demonstrate that you have evidence that your objective has been achieved; for example, by a reflection in your learning log or a CbD/CAT on that area.\nAchievable - for example, doing an e-learning module on joint injections, attending a minor surgery course or clinic and documenting your learning from these in the log is realistically achievable.\nRealistic / Relevant - this means with respect to time and ability, and appropriate for your role as GP trainee and GP in the future and should relate to personal goals.\nTime-bound - setting a ‘Target Date’ that is realistic, reviewed and changed as needed is key to setting a time-frame for achievement.\n\nLearning objective:\nThe more specific the learning objective, the easier it is to construct an action plan, agree a focused date by which to achieve this and to evaluate how it has been achieved.\nConfidence on its own is very hard to measure and, therefore, we would recommend avoiding this term in your learning objectives\nSuggested words for learning objectives include - provide, learn, develop, deliver, manage, summarise, demonstrate, document and evaluate.\nAppropriate examples: \n- Learn about acute eye conditions and demonstrate in log entries use of this knowledge and skills in assessing and managing them.\n- Demonstrate the ability to recognise the acutely unwell child and how to safely manage them.\n- Summarise my learning about management options for menorrhagia, and demonstrate applying these in clinical cases.\n- Learn about and identify resources for supporting patients and their relatives suffering from dementia.\nSeveral short specific PDPs are better than an extensive one.\nInappropriate examples:\n- Pass the AKT / CSA: Passing the AKT and the CSA are national requirements for all trainees and so there is no benefit in adding these to the PDP.\n- Add more log entries: Adding more log entries is not specific enough to show learning.\n\nTarget date\nThis can be:\n- In the near future, short term, next few weeks, for example, for learning objectives for entries that involve e-learning or looking up information.\n- Medium term, in the next six months, for attending courses and gaining experience of others managing conditions.\n- Longer term, by end of ST3 year, for managing specific conditions in line with national guidelines\n\nAction plans\nNeed to be specific and relevant to the objective and the time-frame set.\nCan have a variety of elements to them, for example:\n- E-learning modules\n- Sitting in, attending clinics\n- Attending courses\n- Looking up on the intranet / in a book\n- Visiting social services\n- Writing a practice protocol\n- Writing patient information leaflets\n\nI want you to respond in the following format:\n\nBrief title:\n\nLearning or development need:\n\nWhat actions might you take to achieve this:\n\nTarget date:\n\nHow I will demonstrate success:\n\nPlease write three PDPs given the context provided above.';

  String? pdpFullPrompt;

  String introPromptSD =
      'I am a doctor training to be a General Practitioner and have just taken some notes on a learning event I have encountered:';

  String closingPromptSD1to3 =
      'Give a list of the skills above, numbered like \'1. \', for each skill in the list. \n\nWith each skill include another statement on a new line, separated by a line break (this is important), incorporating an example of a how I could have shown this skill in the specific learning event mentioned above. It is especially important this question is tailored to the specific learning event. Begin the example with \'You may have\'. Separate each skill and example pair with a line break (this is important). \n\nDo not use first person in the response. Do not use special characters.\n\nThe skills may not be directly relevant to a learning event, as many of the skills are related to interacting with a patient in a real-life clinical case, so in these circumstances highlight this, but give suggestions.';

  String closingPromptReflectionSD =
      'I have to write a reflection about this learning event about what skills/habits will I maintain, improve or stop. Please suggest a list of 5 areas that I could focus on, beginning each point with ‘you could consider’. Please specifically reference parts of the learning event  above in these statements. Number each area like ‘1. ‘. Separate each statement with a line break. Do not surround the question with quotation marks. Do not use special characters.';

  String closingPromptLearningSD =
      'I have to write a reflection about this case about what learning needs I have identified from the above learning event . Please suggest a list of 5 learning needs I can focus on, beginning each point with ‘you could consider’. Please specifically reference parts of the learning event  above in these statements. Number each area like ‘1. ‘. Separate each statement with a line break. Do not surround the question with quotation marks. Do not use special characters.';

  String closingPromptrReflectionCCR =
      'I have to write a reflection about this case about what skills/habits will I maintain, improve or stop. Please suggest a list of 5 areas that I could focus on, beginning each point with ‘you could consider’. Please specifically reference parts of the clinical case above in these statements. Number each area like ‘1. ‘. Separate each statement with a line break. Do not surround the question with quotation marks. Do not use special characters.';

  String closingPromptLearningCCR =
      'I have to write a reflection about this case about what learning needs I have identified from the above case. Please suggest a list of 5 learning needs I can focus on, beginning each point with ‘you could consider’. Please specifically reference parts of the clinical case above in these statements. Number each area like ‘1. ‘. Separate each statement with a line break. Do not surround the question with quotation marks. Do not use special characters.';

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for SwitchHelp widget.
  bool? switchHelpValue;
  // State field(s) for MouseRegionCase widget.
  bool mouseRegionCaseHovered = false;
  // State field(s) for ClinicalCase widget.
  FocusNode? clinicalCaseFocusNode;
  TextEditingController? clinicalCaseTextController;
  String? Function(BuildContext, String?)? clinicalCaseTextControllerValidator;
  // State field(s) for KeyLearning widget.
  FocusNode? keyLearningFocusNode;
  TextEditingController? keyLearningTextController;
  String? Function(BuildContext, String?)? keyLearningTextControllerValidator;
  // State field(s) for DropDownCap1 widget.
  String? dropDownCap1Value;
  FormFieldController<String>? dropDownCap1ValueController;
  // State field(s) for DropDownCap2 widget.
  String? dropDownCap2Value;
  FormFieldController<String>? dropDownCap2ValueController;
  // State field(s) for DropDownCap3 widget.
  String? dropDownCap3Value;
  FormFieldController<String>? dropDownCap3ValueController;
  // State field(s) for TextFieldCapExtra1 widget.
  FocusNode? textFieldCapExtra1FocusNode;
  TextEditingController? textFieldCapExtra1TextController;
  String? Function(BuildContext, String?)?
      textFieldCapExtra1TextControllerValidator;
  // State field(s) for TextFieldCapExtra2 widget.
  FocusNode? textFieldCapExtra2FocusNode;
  TextEditingController? textFieldCapExtra2TextController;
  String? Function(BuildContext, String?)?
      textFieldCapExtra2TextControllerValidator;
  // State field(s) for TextFieldCapExtra3 widget.
  FocusNode? textFieldCapExtra3FocusNode;
  TextEditingController? textFieldCapExtra3TextController;
  String? Function(BuildContext, String?)?
      textFieldCapExtra3TextControllerValidator;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4resultSingle1timer;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4resultSingle1timerRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result2single2timer;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result2single2timerRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result3single3timer;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result3single3timerRetry;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result4single4timer;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result5single5timer;
  // State field(s) for LevelSwitch widget.
  bool? levelSwitchValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? reflectionoutput;
  // State field(s) for MouseRegionCapability1 widget.
  bool mouseRegionCapability1Hovered = false;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4resultSingle1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? single1;
  // State field(s) for Capability1Output widget.
  FocusNode? capability1OutputFocusNode;
  TextEditingController? capability1OutputTextController;
  String? Function(BuildContext, String?)?
      capability1OutputTextControllerValidator;
  // State field(s) for MouseRegionCapability2 widget.
  bool mouseRegionCapability2Hovered = false;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result2single2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? reflectionoutputhidden4single2;
  // State field(s) for Capability2Output widget.
  FocusNode? capability2OutputFocusNode;
  TextEditingController? capability2OutputTextController;
  String? Function(BuildContext, String?)?
      capability2OutputTextControllerValidator;
  // State field(s) for MouseRegionCapability3 widget.
  bool mouseRegionCapability3Hovered = false;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result3single3;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? reflectionoutputhidden4single3;
  // State field(s) for Capability3Output widget.
  FocusNode? capability3OutputFocusNode;
  TextEditingController? capability3OutputTextController;
  String? Function(BuildContext, String?)?
      capability3OutputTextControllerValidator;
  // State field(s) for MouseRegionReflection widget.
  bool mouseRegionReflectionHovered = false;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result4single4;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? reflectionoutputhidden4single4;
  // State field(s) for ReflectionOutput widget.
  FocusNode? reflectionOutputFocusNode;
  TextEditingController? reflectionOutputTextController;
  String? Function(BuildContext, String?)?
      reflectionOutputTextControllerValidator;
  // State field(s) for MouseRegionLearning widget.
  bool mouseRegionLearningHovered = false;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Button widget.
  ApiCallResponse? aPI4result5single5;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReflectionsRecord? reflectionoutputhidden4single5;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 1;
  int timerMilliseconds = 1;
  String timerValue = StopWatchTimer.getDisplayTime(
    1,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for LearningOutput widget.
  FocusNode? learningOutputFocusNode;
  TextEditingController? learningOutputTextController;
  String? Function(BuildContext, String?)?
      learningOutputTextControllerValidator;
  // State field(s) for PDPTopic widget.
  FocusNode? pDPTopicFocusNode;
  TextEditingController? pDPTopicTextController;
  String? Function(BuildContext, String?)? pDPTopicTextControllerValidator;
  // Stores action output result for [Backend Call - API (callOpenAI)] action in Go widget.
  ApiCallResponse? pDPAPIResponse;
  // State field(s) for PDPOutput widget.
  FocusNode? pDPOutputFocusNode;
  TextEditingController? pDPOutputTextController;
  String? Function(BuildContext, String?)? pDPOutputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    clinicalCaseFocusNode?.dispose();
    clinicalCaseTextController?.dispose();

    keyLearningFocusNode?.dispose();
    keyLearningTextController?.dispose();

    textFieldCapExtra1FocusNode?.dispose();
    textFieldCapExtra1TextController?.dispose();

    textFieldCapExtra2FocusNode?.dispose();
    textFieldCapExtra2TextController?.dispose();

    textFieldCapExtra3FocusNode?.dispose();
    textFieldCapExtra3TextController?.dispose();

    capability1OutputFocusNode?.dispose();
    capability1OutputTextController?.dispose();

    capability2OutputFocusNode?.dispose();
    capability2OutputTextController?.dispose();

    capability3OutputFocusNode?.dispose();
    capability3OutputTextController?.dispose();

    reflectionOutputFocusNode?.dispose();
    reflectionOutputTextController?.dispose();

    timerController.dispose();
    learningOutputFocusNode?.dispose();
    learningOutputTextController?.dispose();

    pDPTopicFocusNode?.dispose();
    pDPTopicTextController?.dispose();

    pDPOutputFocusNode?.dispose();
    pDPOutputTextController?.dispose();
  }
}
