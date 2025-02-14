// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteOptionStruct extends FFFirebaseStruct {
  ClicknoteOptionStruct({
    int? optionIndex,
    String? optionText,
    bool? optionHasUrl,
    String? optionUrl,
    List<String>? urlOptions,
    String? urlPrompt,
    bool? isMedication,
    String? bnfUrl,
    String? bnfcUrl,
    bool? optionIsRedFlag,
    bool? optionHasNote,
    String? optionNote,
    Color? optionNoteColour,
    bool? urlIsWebview,
    bool? trafficLightRed,
    bool? trafficLightAmber,
    bool? trafficLightGreen,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optionIndex = optionIndex,
        _optionText = optionText,
        _optionHasUrl = optionHasUrl,
        _optionUrl = optionUrl,
        _urlOptions = urlOptions,
        _urlPrompt = urlPrompt,
        _isMedication = isMedication,
        _bnfUrl = bnfUrl,
        _bnfcUrl = bnfcUrl,
        _optionIsRedFlag = optionIsRedFlag,
        _optionHasNote = optionHasNote,
        _optionNote = optionNote,
        _optionNoteColour = optionNoteColour,
        _urlIsWebview = urlIsWebview,
        _trafficLightRed = trafficLightRed,
        _trafficLightAmber = trafficLightAmber,
        _trafficLightGreen = trafficLightGreen,
        super(firestoreUtilData);

  // "option_index" field.
  int? _optionIndex;
  int get optionIndex => _optionIndex ?? 0;
  set optionIndex(int? val) => _optionIndex = val;

  void incrementOptionIndex(int amount) => optionIndex = optionIndex + amount;

  bool hasOptionIndex() => _optionIndex != null;

  // "option_text" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  set optionText(String? val) => _optionText = val;

  bool hasOptionText() => _optionText != null;

  // "option_has_url" field.
  bool? _optionHasUrl;
  bool get optionHasUrl => _optionHasUrl ?? false;
  set optionHasUrl(bool? val) => _optionHasUrl = val;

  bool hasOptionHasUrl() => _optionHasUrl != null;

  // "option_url" field.
  String? _optionUrl;
  String get optionUrl => _optionUrl ?? '';
  set optionUrl(String? val) => _optionUrl = val;

  bool hasOptionUrl() => _optionUrl != null;

  // "url_options" field.
  List<String>? _urlOptions;
  List<String> get urlOptions => _urlOptions ?? const [];
  set urlOptions(List<String>? val) => _urlOptions = val;

  void updateUrlOptions(Function(List<String>) updateFn) {
    updateFn(_urlOptions ??= []);
  }

  bool hasUrlOptions() => _urlOptions != null;

  // "url_prompt" field.
  String? _urlPrompt;
  String get urlPrompt => _urlPrompt ?? '';
  set urlPrompt(String? val) => _urlPrompt = val;

  bool hasUrlPrompt() => _urlPrompt != null;

  // "is_medication" field.
  bool? _isMedication;
  bool get isMedication => _isMedication ?? false;
  set isMedication(bool? val) => _isMedication = val;

  bool hasIsMedication() => _isMedication != null;

  // "bnf_url" field.
  String? _bnfUrl;
  String get bnfUrl => _bnfUrl ?? '';
  set bnfUrl(String? val) => _bnfUrl = val;

  bool hasBnfUrl() => _bnfUrl != null;

  // "bnfc_url" field.
  String? _bnfcUrl;
  String get bnfcUrl => _bnfcUrl ?? '';
  set bnfcUrl(String? val) => _bnfcUrl = val;

  bool hasBnfcUrl() => _bnfcUrl != null;

  // "option_is_red_flag" field.
  bool? _optionIsRedFlag;
  bool get optionIsRedFlag => _optionIsRedFlag ?? false;
  set optionIsRedFlag(bool? val) => _optionIsRedFlag = val;

  bool hasOptionIsRedFlag() => _optionIsRedFlag != null;

  // "option_has_note" field.
  bool? _optionHasNote;
  bool get optionHasNote => _optionHasNote ?? false;
  set optionHasNote(bool? val) => _optionHasNote = val;

  bool hasOptionHasNote() => _optionHasNote != null;

  // "option_note" field.
  String? _optionNote;
  String get optionNote => _optionNote ?? '';
  set optionNote(String? val) => _optionNote = val;

  bool hasOptionNote() => _optionNote != null;

  // "option_note_colour" field.
  Color? _optionNoteColour;
  Color? get optionNoteColour => _optionNoteColour;
  set optionNoteColour(Color? val) => _optionNoteColour = val;

  bool hasOptionNoteColour() => _optionNoteColour != null;

  // "url_is_webview" field.
  bool? _urlIsWebview;
  bool get urlIsWebview => _urlIsWebview ?? false;
  set urlIsWebview(bool? val) => _urlIsWebview = val;

  bool hasUrlIsWebview() => _urlIsWebview != null;

  // "traffic_light_red" field.
  bool? _trafficLightRed;
  bool get trafficLightRed => _trafficLightRed ?? false;
  set trafficLightRed(bool? val) => _trafficLightRed = val;

  bool hasTrafficLightRed() => _trafficLightRed != null;

  // "traffic_light_amber" field.
  bool? _trafficLightAmber;
  bool get trafficLightAmber => _trafficLightAmber ?? false;
  set trafficLightAmber(bool? val) => _trafficLightAmber = val;

  bool hasTrafficLightAmber() => _trafficLightAmber != null;

  // "traffic_light_green" field.
  bool? _trafficLightGreen;
  bool get trafficLightGreen => _trafficLightGreen ?? false;
  set trafficLightGreen(bool? val) => _trafficLightGreen = val;

  bool hasTrafficLightGreen() => _trafficLightGreen != null;

  static ClicknoteOptionStruct fromMap(Map<String, dynamic> data) =>
      ClicknoteOptionStruct(
        optionIndex: castToType<int>(data['option_index']),
        optionText: data['option_text'] as String?,
        optionHasUrl: data['option_has_url'] as bool?,
        optionUrl: data['option_url'] as String?,
        urlOptions: getDataList(data['url_options']),
        urlPrompt: data['url_prompt'] as String?,
        isMedication: data['is_medication'] as bool?,
        bnfUrl: data['bnf_url'] as String?,
        bnfcUrl: data['bnfc_url'] as String?,
        optionIsRedFlag: data['option_is_red_flag'] as bool?,
        optionHasNote: data['option_has_note'] as bool?,
        optionNote: data['option_note'] as String?,
        optionNoteColour: getSchemaColor(data['option_note_colour']),
        urlIsWebview: data['url_is_webview'] as bool?,
        trafficLightRed: data['traffic_light_red'] as bool?,
        trafficLightAmber: data['traffic_light_amber'] as bool?,
        trafficLightGreen: data['traffic_light_green'] as bool?,
      );

  static ClicknoteOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ClicknoteOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'option_index': _optionIndex,
        'option_text': _optionText,
        'option_has_url': _optionHasUrl,
        'option_url': _optionUrl,
        'url_options': _urlOptions,
        'url_prompt': _urlPrompt,
        'is_medication': _isMedication,
        'bnf_url': _bnfUrl,
        'bnfc_url': _bnfcUrl,
        'option_is_red_flag': _optionIsRedFlag,
        'option_has_note': _optionHasNote,
        'option_note': _optionNote,
        'option_note_colour': _optionNoteColour,
        'url_is_webview': _urlIsWebview,
        'traffic_light_red': _trafficLightRed,
        'traffic_light_amber': _trafficLightAmber,
        'traffic_light_green': _trafficLightGreen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option_index': serializeParam(
          _optionIndex,
          ParamType.int,
        ),
        'option_text': serializeParam(
          _optionText,
          ParamType.String,
        ),
        'option_has_url': serializeParam(
          _optionHasUrl,
          ParamType.bool,
        ),
        'option_url': serializeParam(
          _optionUrl,
          ParamType.String,
        ),
        'url_options': serializeParam(
          _urlOptions,
          ParamType.String,
          isList: true,
        ),
        'url_prompt': serializeParam(
          _urlPrompt,
          ParamType.String,
        ),
        'is_medication': serializeParam(
          _isMedication,
          ParamType.bool,
        ),
        'bnf_url': serializeParam(
          _bnfUrl,
          ParamType.String,
        ),
        'bnfc_url': serializeParam(
          _bnfcUrl,
          ParamType.String,
        ),
        'option_is_red_flag': serializeParam(
          _optionIsRedFlag,
          ParamType.bool,
        ),
        'option_has_note': serializeParam(
          _optionHasNote,
          ParamType.bool,
        ),
        'option_note': serializeParam(
          _optionNote,
          ParamType.String,
        ),
        'option_note_colour': serializeParam(
          _optionNoteColour,
          ParamType.Color,
        ),
        'url_is_webview': serializeParam(
          _urlIsWebview,
          ParamType.bool,
        ),
        'traffic_light_red': serializeParam(
          _trafficLightRed,
          ParamType.bool,
        ),
        'traffic_light_amber': serializeParam(
          _trafficLightAmber,
          ParamType.bool,
        ),
        'traffic_light_green': serializeParam(
          _trafficLightGreen,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ClicknoteOptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClicknoteOptionStruct(
        optionIndex: deserializeParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        optionText: deserializeParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
        optionHasUrl: deserializeParam(
          data['option_has_url'],
          ParamType.bool,
          false,
        ),
        optionUrl: deserializeParam(
          data['option_url'],
          ParamType.String,
          false,
        ),
        urlOptions: deserializeParam<String>(
          data['url_options'],
          ParamType.String,
          true,
        ),
        urlPrompt: deserializeParam(
          data['url_prompt'],
          ParamType.String,
          false,
        ),
        isMedication: deserializeParam(
          data['is_medication'],
          ParamType.bool,
          false,
        ),
        bnfUrl: deserializeParam(
          data['bnf_url'],
          ParamType.String,
          false,
        ),
        bnfcUrl: deserializeParam(
          data['bnfc_url'],
          ParamType.String,
          false,
        ),
        optionIsRedFlag: deserializeParam(
          data['option_is_red_flag'],
          ParamType.bool,
          false,
        ),
        optionHasNote: deserializeParam(
          data['option_has_note'],
          ParamType.bool,
          false,
        ),
        optionNote: deserializeParam(
          data['option_note'],
          ParamType.String,
          false,
        ),
        optionNoteColour: deserializeParam(
          data['option_note_colour'],
          ParamType.Color,
          false,
        ),
        urlIsWebview: deserializeParam(
          data['url_is_webview'],
          ParamType.bool,
          false,
        ),
        trafficLightRed: deserializeParam(
          data['traffic_light_red'],
          ParamType.bool,
          false,
        ),
        trafficLightAmber: deserializeParam(
          data['traffic_light_amber'],
          ParamType.bool,
          false,
        ),
        trafficLightGreen: deserializeParam(
          data['traffic_light_green'],
          ParamType.bool,
          false,
        ),
      );

  static ClicknoteOptionStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ClicknoteOptionStruct(
        optionIndex: convertAlgoliaParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        optionText: convertAlgoliaParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
        optionHasUrl: convertAlgoliaParam(
          data['option_has_url'],
          ParamType.bool,
          false,
        ),
        optionUrl: convertAlgoliaParam(
          data['option_url'],
          ParamType.String,
          false,
        ),
        urlOptions: convertAlgoliaParam<String>(
          data['url_options'],
          ParamType.String,
          true,
        ),
        urlPrompt: convertAlgoliaParam(
          data['url_prompt'],
          ParamType.String,
          false,
        ),
        isMedication: convertAlgoliaParam(
          data['is_medication'],
          ParamType.bool,
          false,
        ),
        bnfUrl: convertAlgoliaParam(
          data['bnf_url'],
          ParamType.String,
          false,
        ),
        bnfcUrl: convertAlgoliaParam(
          data['bnfc_url'],
          ParamType.String,
          false,
        ),
        optionIsRedFlag: convertAlgoliaParam(
          data['option_is_red_flag'],
          ParamType.bool,
          false,
        ),
        optionHasNote: convertAlgoliaParam(
          data['option_has_note'],
          ParamType.bool,
          false,
        ),
        optionNote: convertAlgoliaParam(
          data['option_note'],
          ParamType.String,
          false,
        ),
        optionNoteColour: convertAlgoliaParam(
          data['option_note_colour'],
          ParamType.Color,
          false,
        ),
        urlIsWebview: convertAlgoliaParam(
          data['url_is_webview'],
          ParamType.bool,
          false,
        ),
        trafficLightRed: convertAlgoliaParam(
          data['traffic_light_red'],
          ParamType.bool,
          false,
        ),
        trafficLightAmber: convertAlgoliaParam(
          data['traffic_light_amber'],
          ParamType.bool,
          false,
        ),
        trafficLightGreen: convertAlgoliaParam(
          data['traffic_light_green'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ClicknoteOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ClicknoteOptionStruct &&
        optionIndex == other.optionIndex &&
        optionText == other.optionText &&
        optionHasUrl == other.optionHasUrl &&
        optionUrl == other.optionUrl &&
        listEquality.equals(urlOptions, other.urlOptions) &&
        urlPrompt == other.urlPrompt &&
        isMedication == other.isMedication &&
        bnfUrl == other.bnfUrl &&
        bnfcUrl == other.bnfcUrl &&
        optionIsRedFlag == other.optionIsRedFlag &&
        optionHasNote == other.optionHasNote &&
        optionNote == other.optionNote &&
        optionNoteColour == other.optionNoteColour &&
        urlIsWebview == other.urlIsWebview &&
        trafficLightRed == other.trafficLightRed &&
        trafficLightAmber == other.trafficLightAmber &&
        trafficLightGreen == other.trafficLightGreen;
  }

  @override
  int get hashCode => const ListEquality().hash([
        optionIndex,
        optionText,
        optionHasUrl,
        optionUrl,
        urlOptions,
        urlPrompt,
        isMedication,
        bnfUrl,
        bnfcUrl,
        optionIsRedFlag,
        optionHasNote,
        optionNote,
        optionNoteColour,
        urlIsWebview,
        trafficLightRed,
        trafficLightAmber,
        trafficLightGreen
      ]);
}

ClicknoteOptionStruct createClicknoteOptionStruct({
  int? optionIndex,
  String? optionText,
  bool? optionHasUrl,
  String? optionUrl,
  String? urlPrompt,
  bool? isMedication,
  String? bnfUrl,
  String? bnfcUrl,
  bool? optionIsRedFlag,
  bool? optionHasNote,
  String? optionNote,
  Color? optionNoteColour,
  bool? urlIsWebview,
  bool? trafficLightRed,
  bool? trafficLightAmber,
  bool? trafficLightGreen,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClicknoteOptionStruct(
      optionIndex: optionIndex,
      optionText: optionText,
      optionHasUrl: optionHasUrl,
      optionUrl: optionUrl,
      urlPrompt: urlPrompt,
      isMedication: isMedication,
      bnfUrl: bnfUrl,
      bnfcUrl: bnfcUrl,
      optionIsRedFlag: optionIsRedFlag,
      optionHasNote: optionHasNote,
      optionNote: optionNote,
      optionNoteColour: optionNoteColour,
      urlIsWebview: urlIsWebview,
      trafficLightRed: trafficLightRed,
      trafficLightAmber: trafficLightAmber,
      trafficLightGreen: trafficLightGreen,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClicknoteOptionStruct? updateClicknoteOptionStruct(
  ClicknoteOptionStruct? clicknoteOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clicknoteOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClicknoteOptionStructData(
  Map<String, dynamic> firestoreData,
  ClicknoteOptionStruct? clicknoteOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clicknoteOption == null) {
    return;
  }
  if (clicknoteOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clicknoteOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clicknoteOptionData =
      getClicknoteOptionFirestoreData(clicknoteOption, forFieldValue);
  final nestedData =
      clicknoteOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clicknoteOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClicknoteOptionFirestoreData(
  ClicknoteOptionStruct? clicknoteOption, [
  bool forFieldValue = false,
]) {
  if (clicknoteOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clicknoteOption.toMap());

  // Add any Firestore field values
  clicknoteOption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClicknoteOptionListFirestoreData(
  List<ClicknoteOptionStruct>? clicknoteOptions,
) =>
    clicknoteOptions
        ?.map((e) => getClicknoteOptionFirestoreData(e, true))
        .toList() ??
    [];
