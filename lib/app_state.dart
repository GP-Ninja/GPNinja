import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _sub = await secureStorage.getBool('ff_sub') ?? _sub;
    });
    await _safeInitAsync(() async {
      _stripeSubId =
          await secureStorage.getString('ff_stripeSubId') ?? _stripeSubId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _Capability1Output = '';
  String get Capability1Output => _Capability1Output;
  set Capability1Output(String value) {
    _Capability1Output = value;
  }

  String _Capability2Output = '';
  String get Capability2Output => _Capability2Output;
  set Capability2Output(String value) {
    _Capability2Output = value;
  }

  String _Capability3Output = '';
  String get Capability3Output => _Capability3Output;
  set Capability3Output(String value) {
    _Capability3Output = value;
  }

  String _Capability1 = '';
  String get Capability1 => _Capability1;
  set Capability1(String value) {
    _Capability1 = value;
  }

  String _Capability2 = '';
  String get Capability2 => _Capability2;
  set Capability2(String value) {
    _Capability2 = value;
  }

  String _Capability3 = '';
  String get Capability3 => _Capability3;
  set Capability3(String value) {
    _Capability3 = value;
  }

  String _ClinicalCase = '';
  String get ClinicalCase => _ClinicalCase;
  set ClinicalCase(String value) {
    _ClinicalCase = value;
  }

  String _ReflectionOutput = '';
  String get ReflectionOutput => _ReflectionOutput;
  set ReflectionOutput(String value) {
    _ReflectionOutput = value;
  }

  String _LearningOutput = '';
  String get LearningOutput => _LearningOutput;
  set LearningOutput(String value) {
    _LearningOutput = value;
  }

  int _paymentvalue = 0;
  int get paymentvalue => _paymentvalue;
  set paymentvalue(int value) {
    _paymentvalue = value;
  }

  String _resourcesaved = '';
  String get resourcesaved => _resourcesaved;
  set resourcesaved(String value) {
    _resourcesaved = value;
  }

  String _dynamicLinkDomain = 'https://gpninja.page.link';
  String get dynamicLinkDomain => _dynamicLinkDomain;
  set dynamicLinkDomain(String value) {
    _dynamicLinkDomain = value;
  }

  String _packageName = 'com.mycompany.dashboard';
  String get packageName => _packageName;
  set packageName(String value) {
    _packageName = value;
  }

  String _paymentLink = '';
  String get paymentLink => _paymentLink;
  set paymentLink(String value) {
    _paymentLink = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  bool _sub = false;
  bool get sub => _sub;
  set sub(bool value) {
    _sub = value;
    secureStorage.setBool('ff_sub', value);
  }

  void deleteSub() {
    secureStorage.delete(key: 'ff_sub');
  }

  String _stripeSubId = '';
  String get stripeSubId => _stripeSubId;
  set stripeSubId(String value) {
    _stripeSubId = value;
    secureStorage.setString('ff_stripeSubId', value);
  }

  void deleteStripeSubId() {
    secureStorage.delete(key: 'ff_stripeSubId');
  }

  String _prompt1 = '';
  String get prompt1 => _prompt1;
  set prompt1(String value) {
    _prompt1 = value;
  }

  String _prompt2 = '';
  String get prompt2 => _prompt2;
  set prompt2(String value) {
    _prompt2 = value;
  }

  String _prompt3 = '';
  String get prompt3 => _prompt3;
  set prompt3(String value) {
    _prompt3 = value;
  }

  String _prompt4 = '';
  String get prompt4 => _prompt4;
  set prompt4(String value) {
    _prompt4 = value;
  }

  String _prompt5 = '';
  String get prompt5 => _prompt5;
  set prompt5(String value) {
    _prompt5 = value;
  }

  bool _chatisvisible = false;
  bool get chatisvisible => _chatisvisible;
  set chatisvisible(bool value) {
    _chatisvisible = value;
  }

  bool _initialmessagesent = false;
  bool get initialmessagesent => _initialmessagesent;
  set initialmessagesent(bool value) {
    _initialmessagesent = value;
  }

  bool _switchstart = false;
  bool get switchstart => _switchstart;
  set switchstart(bool value) {
    _switchstart = value;
  }

  int _casewordcount = 0;
  int get casewordcount => _casewordcount;
  set casewordcount(int value) {
    _casewordcount = value;
  }

  bool _templateView = false;
  bool get templateView => _templateView;
  set templateView(bool value) {
    _templateView = value;
  }

  DocumentReference? _templateref;
  DocumentReference? get templateref => _templateref;
  set templateref(DocumentReference? value) {
    _templateref = value;
  }

  String _history = '';
  String get history => _history;
  set history(String value) {
    _history = value;
  }

  String _exam = '';
  String get exam => _exam;
  set exam(String value) {
    _exam = value;
  }

  String _impression = '';
  String get impression => _impression;
  set impression(String value) {
    _impression = value;
  }

  String _plan = '';
  String get plan => _plan;
  set plan(String value) {
    _plan = value;
  }

  bool _searchTerm = false;
  bool get searchTerm => _searchTerm;
  set searchTerm(bool value) {
    _searchTerm = value;
  }

  String _searchTermEntered = '';
  String get searchTermEntered => _searchTermEntered;
  set searchTermEntered(String value) {
    _searchTermEntered = value;
  }

  DocumentReference? _inote =
      FirebaseFirestore.instance.doc('/inote/RqLtstydn6iJkI5C9t5G');
  DocumentReference? get inote => _inote;
  set inote(DocumentReference? value) {
    _inote = value;
  }

  DocumentReference? _templateRef =
      FirebaseFirestore.instance.doc('/defaultTemplates/Z4rGjwe4bE1VT9BJCjbB');
  DocumentReference? get templateRef => _templateRef;
  set templateRef(DocumentReference? value) {
    _templateRef = value;
  }

  List<SelectedTextStruct> _listOfSelected = [];
  List<SelectedTextStruct> get listOfSelected => _listOfSelected;
  set listOfSelected(List<SelectedTextStruct> value) {
    _listOfSelected = value;
  }

  void addToListOfSelected(SelectedTextStruct value) {
    listOfSelected.add(value);
  }

  void removeFromListOfSelected(SelectedTextStruct value) {
    listOfSelected.remove(value);
  }

  void removeAtIndexFromListOfSelected(int index) {
    listOfSelected.removeAt(index);
  }

  void updateListOfSelectedAtIndex(
    int index,
    SelectedTextStruct Function(SelectedTextStruct) updateFn,
  ) {
    listOfSelected[index] = updateFn(_listOfSelected[index]);
  }

  void insertAtIndexInListOfSelected(int index, SelectedTextStruct value) {
    listOfSelected.insert(index, value);
  }

  bool _switchMode = true;
  bool get switchMode => _switchMode;
  set switchMode(bool value) {
    _switchMode = value;
  }

  DocumentReference? _ICB =
      FirebaseFirestore.instance.doc('/ICBs/RZubgr1n11IKR2WqiHUh');
  DocumentReference? get ICB => _ICB;
  set ICB(DocumentReference? value) {
    _ICB = value;
  }

  bool _searchComplete = false;
  bool get searchComplete => _searchComplete;
  set searchComplete(bool value) {
    _searchComplete = value;
  }

  bool _AISearch = false;
  bool get AISearch => _AISearch;
  set AISearch(bool value) {
    _AISearch = value;
  }

  DocumentReference? _templateV2 =
      FirebaseFirestore.instance.doc('/templateV2/A8s3pKKGPrTR0OIZsEZg');
  DocumentReference? get templateV2 => _templateV2;
  set templateV2(DocumentReference? value) {
    _templateV2 = value;
  }

  List<String> _multipleSelected = [];
  List<String> get multipleSelected => _multipleSelected;
  set multipleSelected(List<String> value) {
    _multipleSelected = value;
  }

  void addToMultipleSelected(String value) {
    multipleSelected.add(value);
  }

  void removeFromMultipleSelected(String value) {
    multipleSelected.remove(value);
  }

  void removeAtIndexFromMultipleSelected(int index) {
    multipleSelected.removeAt(index);
  }

  void updateMultipleSelectedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    multipleSelected[index] = updateFn(_multipleSelected[index]);
  }

  void insertAtIndexInMultipleSelected(int index, String value) {
    multipleSelected.insert(index, value);
  }

  bool _editMode = false;
  bool get editMode => _editMode;
  set editMode(bool value) {
    _editMode = value;
  }

  List<SelectedTextV2Struct> _listOfSelectedV2 = [];
  List<SelectedTextV2Struct> get listOfSelectedV2 => _listOfSelectedV2;
  set listOfSelectedV2(List<SelectedTextV2Struct> value) {
    _listOfSelectedV2 = value;
  }

  void addToListOfSelectedV2(SelectedTextV2Struct value) {
    listOfSelectedV2.add(value);
  }

  void removeFromListOfSelectedV2(SelectedTextV2Struct value) {
    listOfSelectedV2.remove(value);
  }

  void removeAtIndexFromListOfSelectedV2(int index) {
    listOfSelectedV2.removeAt(index);
  }

  void updateListOfSelectedV2AtIndex(
    int index,
    SelectedTextV2Struct Function(SelectedTextV2Struct) updateFn,
  ) {
    listOfSelectedV2[index] = updateFn(_listOfSelectedV2[index]);
  }

  void insertAtIndexInListOfSelectedV2(int index, SelectedTextV2Struct value) {
    listOfSelectedV2.insert(index, value);
  }

  int _loopIntagerAppState = 0;
  int get loopIntagerAppState => _loopIntagerAppState;
  set loopIntagerAppState(int value) {
    _loopIntagerAppState = value;
  }

  List<SelectedTextV1Struct> _listOfSelectedV1 = [];
  List<SelectedTextV1Struct> get listOfSelectedV1 => _listOfSelectedV1;
  set listOfSelectedV1(List<SelectedTextV1Struct> value) {
    _listOfSelectedV1 = value;
  }

  void addToListOfSelectedV1(SelectedTextV1Struct value) {
    listOfSelectedV1.add(value);
  }

  void removeFromListOfSelectedV1(SelectedTextV1Struct value) {
    listOfSelectedV1.remove(value);
  }

  void removeAtIndexFromListOfSelectedV1(int index) {
    listOfSelectedV1.removeAt(index);
  }

  void updateListOfSelectedV1AtIndex(
    int index,
    SelectedTextV1Struct Function(SelectedTextV1Struct) updateFn,
  ) {
    listOfSelectedV1[index] = updateFn(_listOfSelectedV1[index]);
  }

  void insertAtIndexInListOfSelectedV1(int index, SelectedTextV1Struct value) {
    listOfSelectedV1.insert(index, value);
  }

  DocumentReference? _testNode =
      FirebaseFirestore.instance.doc('/flowchartNode/euK2LrjAXOAr8ddx0ela');
  DocumentReference? get testNode => _testNode;
  set testNode(DocumentReference? value) {
    _testNode = value;
  }

  List<String> _flowchartTextToCopyAppState = [];
  List<String> get flowchartTextToCopyAppState => _flowchartTextToCopyAppState;
  set flowchartTextToCopyAppState(List<String> value) {
    _flowchartTextToCopyAppState = value;
  }

  void addToFlowchartTextToCopyAppState(String value) {
    flowchartTextToCopyAppState.add(value);
  }

  void removeFromFlowchartTextToCopyAppState(String value) {
    flowchartTextToCopyAppState.remove(value);
  }

  void removeAtIndexFromFlowchartTextToCopyAppState(int index) {
    flowchartTextToCopyAppState.removeAt(index);
  }

  void updateFlowchartTextToCopyAppStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    flowchartTextToCopyAppState[index] =
        updateFn(_flowchartTextToCopyAppState[index]);
  }

  void insertAtIndexInFlowchartTextToCopyAppState(int index, String value) {
    flowchartTextToCopyAppState.insert(index, value);
  }

  List<String> _autocomplete = [];
  List<String> get autocomplete => _autocomplete;
  set autocomplete(List<String> value) {
    _autocomplete = value;
  }

  void addToAutocomplete(String value) {
    autocomplete.add(value);
  }

  void removeFromAutocomplete(String value) {
    autocomplete.remove(value);
  }

  void removeAtIndexFromAutocomplete(int index) {
    autocomplete.removeAt(index);
  }

  void updateAutocompleteAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    autocomplete[index] = updateFn(_autocomplete[index]);
  }

  void insertAtIndexInAutocomplete(int index, String value) {
    autocomplete.insert(index, value);
  }

  List<String> _V3NoteText = [];
  List<String> get V3NoteText => _V3NoteText;
  set V3NoteText(List<String> value) {
    _V3NoteText = value;
  }

  void addToV3NoteText(String value) {
    V3NoteText.add(value);
  }

  void removeFromV3NoteText(String value) {
    V3NoteText.remove(value);
  }

  void removeAtIndexFromV3NoteText(int index) {
    V3NoteText.removeAt(index);
  }

  void updateV3NoteTextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    V3NoteText[index] = updateFn(_V3NoteText[index]);
  }

  void insertAtIndexInV3NoteText(int index, String value) {
    V3NoteText.insert(index, value);
  }

  List<ClicknoteSelectedStruct> _clicknoteSelected = [];
  List<ClicknoteSelectedStruct> get clicknoteSelected => _clicknoteSelected;
  set clicknoteSelected(List<ClicknoteSelectedStruct> value) {
    _clicknoteSelected = value;
  }

  void addToClicknoteSelected(ClicknoteSelectedStruct value) {
    clicknoteSelected.add(value);
  }

  void removeFromClicknoteSelected(ClicknoteSelectedStruct value) {
    clicknoteSelected.remove(value);
  }

  void removeAtIndexFromClicknoteSelected(int index) {
    clicknoteSelected.removeAt(index);
  }

  void updateClicknoteSelectedAtIndex(
    int index,
    ClicknoteSelectedStruct Function(ClicknoteSelectedStruct) updateFn,
  ) {
    clicknoteSelected[index] = updateFn(_clicknoteSelected[index]);
  }

  void insertAtIndexInClicknoteSelected(
      int index, ClicknoteSelectedStruct value) {
    clicknoteSelected.insert(index, value);
  }

  CurrentFocusIndexStruct _currentFocusIndex =
      CurrentFocusIndexStruct.fromSerializableMap(
          jsonDecode('{\"row_index\":\"0\",\"option_index\":\"0\"}'));
  CurrentFocusIndexStruct get currentFocusIndex => _currentFocusIndex;
  set currentFocusIndex(CurrentFocusIndexStruct value) {
    _currentFocusIndex = value;
  }

  void updateCurrentFocusIndexStruct(
      Function(CurrentFocusIndexStruct) updateFn) {
    updateFn(_currentFocusIndex);
  }

  bool _showIndexes = false;
  bool get showIndexes => _showIndexes;
  set showIndexes(bool value) {
    _showIndexes = value;
  }

  DocumentReference? _clickNoteRef = FirebaseFirestore.instance
      .doc('/clicknote_templates/QlcEstPn6y3577bfCfsL');
  DocumentReference? get clickNoteRef => _clickNoteRef;
  set clickNoteRef(DocumentReference? value) {
    _clickNoteRef = value;
  }

  bool _optionsLocked = false;
  bool get optionsLocked => _optionsLocked;
  set optionsLocked(bool value) {
    _optionsLocked = value;
  }

  bool _demoMode = false;
  bool get demoMode => _demoMode;
  set demoMode(bool value) {
    _demoMode = value;
  }

  String _pdpPrompt1 =
      'I am a GP Trainee and you are my e-portfolio assistant.\n\nI need to write a Personal Development Plan (PDP), which needs to follow the below specific guidance.\n\nHere is some context about what I want you to write my PDP about:';
  String get pdpPrompt1 => _pdpPrompt1;
  set pdpPrompt1(String value) {
    _pdpPrompt1 = value;
  }

  String _pdpPromptContext = '';
  String get pdpPromptContext => _pdpPromptContext;
  set pdpPromptContext(String value) {
    _pdpPromptContext = value;
  }

  String _pdpPrompt2 =
      'Here is guidance on how to write a PDP:\n\nLearning objective:\nThe more specific the learning objective, the easier it is to construct an action plan, agree a focused date by which to achieve this and to evaluate how it has been achieved.\nConfidence on its own is very hard to measure and, therefore, we would recommend avoiding this term in your learning objectives\nSuggested words for learning objectives include - provide, learn, develop, deliver, manage, summarise, demonstrate, document and evaluate.\nAppropriate examples: \n- Learn about acute eye conditions and demonstrate in log entries use of this knowledge and skills in assessing and managing them.\n- Demonstrate the ability to recognise the acutely unwell child and how to safely manage them.\n- Summarise my learning about management options for menorrhagia, and demonstrate applying these in clinical cases.\n- Learn about and identify resources for supporting patients and their relatives suffering from dementia.\nSeveral short specific PDPs are better than an extensive one.\nInappropriate examples:\n- Pass the AKT / CSA: Passing the AKT and the CSA are national requirements for all trainees and so there is no benefit in adding these to the PDP.\n- Add more log entries: Adding more log entries is not specific enough to show learning.\n\nTarget date\nThis can be:\n- In the near future, short term, next few weeks, for example, for learning objectives for entries that involve e-learning or looking up information.\n- Medium term, in the next six months, for attending courses and gaining experience of others managing conditions.\n- Longer term, by end of ST3 year, for managing specific conditions in line with national guidelines\n\nAction plans\nNeed to be specific and relevant to the objective and the time-frame set.\nCan have a variety of elements to them, for example:\n- E-learning modules\n- Sitting in, attending clinics\n- Attending courses\n- Looking up on the intranet / in a book\n- Visiting social services\n- Writing a practice protocol\n- Writing patient information leaflets\n\nI want you to respond in the following format:\n\nPDP [number]\n\nTitle: [title]\n\nLearning or development need: [text here]\n\nWhat actions might you take to achieve this: [bullet points here]\n\nTarget date: [date]\n\nHow I will demonstrate success: [bullet points here]\n\nSeparate each section with a line break. Do not use special characters.\n\nDo not include any other text in your response that is not part of the above headings.\n\nPlease write three PDPs given the context provided above.\n\nThe context may be given in the hospital setting, but the PDPs should ideally be relevant to General Practice.';
  String get pdpPrompt2 => _pdpPrompt2;
  set pdpPrompt2(String value) {
    _pdpPrompt2 = value;
  }

  String _pdpFullPrompt = '';
  String get pdpFullPrompt => _pdpFullPrompt;
  set pdpFullPrompt(String value) {
    _pdpFullPrompt = value;
  }

  String _currentReflectPage = 'Clinical Case Reviews';
  String get currentReflectPage => _currentReflectPage;
  set currentReflectPage(String value) {
    _currentReflectPage = value;
  }

  List<ClicknoteHybridCoordinateStruct> _clicknoteHybridCoordinateList = [
    ClicknoteHybridCoordinateStruct.fromSerializableMap(jsonDecode(
        '{\"section_index\":\"0\",\"row_index\":\"0\",\"option_index\":\"0\",\"text\":\"\"}')),
    ClicknoteHybridCoordinateStruct.fromSerializableMap(jsonDecode(
        '{\"section_index\":\"0\",\"row_index\":\"0\",\"option_index\":\"1\",\"text\":\"\"}')),
    ClicknoteHybridCoordinateStruct.fromSerializableMap(jsonDecode(
        '{\"section_index\":\"0\",\"row_index\":\"0\",\"option_index\":\"2\",\"text\":\"\"}')),
    ClicknoteHybridCoordinateStruct.fromSerializableMap(jsonDecode(
        '{\"section_index\":\"0\",\"row_index\":\"0\",\"option_index\":\"3\",\"text\":\"\"}')),
    ClicknoteHybridCoordinateStruct.fromSerializableMap(jsonDecode(
        '{\"section_index\":\"0\",\"row_index\":\"0\",\"option_index\":\"4\",\"text\":\"\"}'))
  ];
  List<ClicknoteHybridCoordinateStruct> get clicknoteHybridCoordinateList =>
      _clicknoteHybridCoordinateList;
  set clicknoteHybridCoordinateList(
      List<ClicknoteHybridCoordinateStruct> value) {
    _clicknoteHybridCoordinateList = value;
  }

  void addToClicknoteHybridCoordinateList(
      ClicknoteHybridCoordinateStruct value) {
    clicknoteHybridCoordinateList.add(value);
  }

  void removeFromClicknoteHybridCoordinateList(
      ClicknoteHybridCoordinateStruct value) {
    clicknoteHybridCoordinateList.remove(value);
  }

  void removeAtIndexFromClicknoteHybridCoordinateList(int index) {
    clicknoteHybridCoordinateList.removeAt(index);
  }

  void updateClicknoteHybridCoordinateListAtIndex(
    int index,
    ClicknoteHybridCoordinateStruct Function(ClicknoteHybridCoordinateStruct)
        updateFn,
  ) {
    clicknoteHybridCoordinateList[index] =
        updateFn(_clicknoteHybridCoordinateList[index]);
  }

  void insertAtIndexInClicknoteHybridCoordinateList(
      int index, ClicknoteHybridCoordinateStruct value) {
    clicknoteHybridCoordinateList.insert(index, value);
  }

  bool _UCC = false;
  bool get UCC => _UCC;
  set UCC(bool value) {
    _UCC = value;
  }

  bool _gotov6 = false;
  bool get gotov6 => _gotov6;
  set gotov6(bool value) {
    _gotov6 = value;
  }

  String _currentFocusField = '';
  String get currentFocusField => _currentFocusField;
  set currentFocusField(String value) {
    _currentFocusField = value;
  }

  bool _usingiPad = false;
  bool get usingiPad => _usingiPad;
  set usingiPad(bool value) {
    _usingiPad = value;
  }

  bool _clicknoteVersion = true;
  bool get clicknoteVersion => _clicknoteVersion;
  set clicknoteVersion(bool value) {
    _clicknoteVersion = value;
  }

  bool _largeTiles = true;
  bool get largeTiles => _largeTiles;
  set largeTiles(bool value) {
    _largeTiles = value;
  }

  List<DocumentReference> _clicknoteRefListTest = [
    FirebaseFirestore.instance.doc('/clicknote_templates/QlcEstPn6y3577bfCfsL'),
    FirebaseFirestore.instance.doc('/clicknote_templates/J9JqQdnT9IpdazXoMgG6')
  ];
  List<DocumentReference> get clicknoteRefListTest => _clicknoteRefListTest;
  set clicknoteRefListTest(List<DocumentReference> value) {
    _clicknoteRefListTest = value;
  }

  void addToClicknoteRefListTest(DocumentReference value) {
    clicknoteRefListTest.add(value);
  }

  void removeFromClicknoteRefListTest(DocumentReference value) {
    clicknoteRefListTest.remove(value);
  }

  void removeAtIndexFromClicknoteRefListTest(int index) {
    clicknoteRefListTest.removeAt(index);
  }

  void updateClicknoteRefListTestAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    clicknoteRefListTest[index] = updateFn(_clicknoteRefListTest[index]);
  }

  void insertAtIndexInClicknoteRefListTest(int index, DocumentReference value) {
    clicknoteRefListTest.insert(index, value);
  }

  String _enrollmentVerificationId = '';
  String get enrollmentVerificationId => _enrollmentVerificationId;
  set enrollmentVerificationId(String value) {
    _enrollmentVerificationId = value;
  }

  String _leadershipAndManagementOutput = '';
  String get leadershipAndManagementOutput => _leadershipAndManagementOutput;
  set leadershipAndManagementOutput(String value) {
    _leadershipAndManagementOutput = value;
  }

  String _ACP1 = '';
  String get ACP1 => _ACP1;
  set ACP1(String value) {
    _ACP1 = value;
  }

  String _ACP2 = '';
  String get ACP2 => _ACP2;
  set ACP2(String value) {
    _ACP2 = value;
  }

  String _ACP3 = '';
  String get ACP3 => _ACP3;
  set ACP3(String value) {
    _ACP3 = value;
  }

  String _ACP4 = '';
  String get ACP4 => _ACP4;
  set ACP4(String value) {
    _ACP4 = value;
  }

  int _optionHeight = 37;
  int get optionHeight => _optionHeight;
  set optionHeight(int value) {
    _optionHeight = value;
  }

  int _optionTextSize = 16;
  int get optionTextSize => _optionTextSize;
  set optionTextSize(int value) {
    _optionTextSize = value;
  }

  String _verificationId = '';
  String get verificationId => _verificationId;
  set verificationId(String value) {
    _verificationId = value;
  }

  dynamic _resolver;
  dynamic get resolver => _resolver;
  set resolver(dynamic value) {
    _resolver = value;
  }

  bool _compactView = false;
  bool get compactView => _compactView;
  set compactView(bool value) {
    _compactView = value;
  }

  bool _dragEnabled = false;
  bool get dragEnabled => _dragEnabled;
  set dragEnabled(bool value) {
    _dragEnabled = value;
  }

  String _newTemplateId = '';
  String get newTemplateId => _newTemplateId;
  set newTemplateId(String value) {
    _newTemplateId = value;
  }

  DocumentReference? _testFlattenedRef = FirebaseFirestore.instance
      .doc('/flattened_templates/GCNLJMUzEMLBbj0PKxgM');
  DocumentReference? get testFlattenedRef => _testFlattenedRef;
  set testFlattenedRef(DocumentReference? value) {
    _testFlattenedRef = value;
  }

  bool _flattenedTemplateView = true;
  bool get flattenedTemplateView => _flattenedTemplateView;
  set flattenedTemplateView(bool value) {
    _flattenedTemplateView = value;
  }

  List<String> _commonPasswords = [];
  List<String> get commonPasswords => _commonPasswords;
  set commonPasswords(List<String> value) {
    _commonPasswords = value;
  }

  void addToCommonPasswords(String value) {
    commonPasswords.add(value);
  }

  void removeFromCommonPasswords(String value) {
    commonPasswords.remove(value);
  }

  void removeAtIndexFromCommonPasswords(int index) {
    commonPasswords.removeAt(index);
  }

  void updateCommonPasswordsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    commonPasswords[index] = updateFn(_commonPasswords[index]);
  }

  void insertAtIndexInCommonPasswords(int index, String value) {
    commonPasswords.insert(index, value);
  }

  bool _sessionLogged = false;
  bool get sessionLogged => _sessionLogged;
  set sessionLogged(bool value) {
    _sessionLogged = value;
  }

  bool _focusTextfield = true;
  bool get focusTextfield => _focusTextfield;
  set focusTextfield(bool value) {
    _focusTextfield = value;
  }

  bool _isTabletUser = false;
  bool get isTabletUser => _isTabletUser;
  set isTabletUser(bool value) {
    _isTabletUser = value;
  }

  final _templatesManager =
      StreamRequestManager<List<FlattenedTemplatesRecord>>();
  Stream<List<FlattenedTemplatesRecord>> templates({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FlattenedTemplatesRecord>> Function() requestFn,
  }) =>
      _templatesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTemplatesCache() => _templatesManager.clear();
  void clearTemplatesCacheKey(String? uniqueKey) =>
      _templatesManager.clearRequest(uniqueKey);

  final _iCBsManager = StreamRequestManager<List<ICBsRecord>>();
  Stream<List<ICBsRecord>> iCBs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ICBsRecord>> Function() requestFn,
  }) =>
      _iCBsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearICBsCache() => _iCBsManager.clear();
  void clearICBsCacheKey(String? uniqueKey) =>
      _iCBsManager.clearRequest(uniqueKey);

  final _allICBsManager = StreamRequestManager<ICBsRecord>();
  Stream<ICBsRecord> allICBs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<ICBsRecord> Function() requestFn,
  }) =>
      _allICBsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllICBsCache() => _allICBsManager.clear();
  void clearAllICBsCacheKey(String? uniqueKey) =>
      _allICBsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
