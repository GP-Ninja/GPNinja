// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FlowchartOptionsStruct extends FFFirebaseStruct {
  FlowchartOptionsStruct({
    String? optionText,
    DocumentReference? optionRef,
    int? optionIndex,
    String? optionTextToCopy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optionText = optionText,
        _optionRef = optionRef,
        _optionIndex = optionIndex,
        _optionTextToCopy = optionTextToCopy,
        super(firestoreUtilData);

  // "option_text" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  set optionText(String? val) => _optionText = val;

  bool hasOptionText() => _optionText != null;

  // "option_ref" field.
  DocumentReference? _optionRef;
  DocumentReference? get optionRef => _optionRef;
  set optionRef(DocumentReference? val) => _optionRef = val;

  bool hasOptionRef() => _optionRef != null;

  // "option_index" field.
  int? _optionIndex;
  int get optionIndex => _optionIndex ?? 0;
  set optionIndex(int? val) => _optionIndex = val;

  void incrementOptionIndex(int amount) => optionIndex = optionIndex + amount;

  bool hasOptionIndex() => _optionIndex != null;

  // "option_text_to_copy" field.
  String? _optionTextToCopy;
  String get optionTextToCopy => _optionTextToCopy ?? '';
  set optionTextToCopy(String? val) => _optionTextToCopy = val;

  bool hasOptionTextToCopy() => _optionTextToCopy != null;

  static FlowchartOptionsStruct fromMap(Map<String, dynamic> data) =>
      FlowchartOptionsStruct(
        optionText: data['option_text'] as String?,
        optionRef: data['option_ref'] as DocumentReference?,
        optionIndex: castToType<int>(data['option_index']),
        optionTextToCopy: data['option_text_to_copy'] as String?,
      );

  static FlowchartOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? FlowchartOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'option_text': _optionText,
        'option_ref': _optionRef,
        'option_index': _optionIndex,
        'option_text_to_copy': _optionTextToCopy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option_text': serializeParam(
          _optionText,
          ParamType.String,
        ),
        'option_ref': serializeParam(
          _optionRef,
          ParamType.DocumentReference,
        ),
        'option_index': serializeParam(
          _optionIndex,
          ParamType.int,
        ),
        'option_text_to_copy': serializeParam(
          _optionTextToCopy,
          ParamType.String,
        ),
      }.withoutNulls;

  static FlowchartOptionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FlowchartOptionsStruct(
        optionText: deserializeParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
        optionRef: deserializeParam(
          data['option_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['flowchartNode'],
        ),
        optionIndex: deserializeParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        optionTextToCopy: deserializeParam(
          data['option_text_to_copy'],
          ParamType.String,
          false,
        ),
      );

  static FlowchartOptionsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      FlowchartOptionsStruct(
        optionText: convertAlgoliaParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
        optionRef: convertAlgoliaParam(
          data['option_ref'],
          ParamType.DocumentReference,
          false,
        ),
        optionIndex: convertAlgoliaParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        optionTextToCopy: convertAlgoliaParam(
          data['option_text_to_copy'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'FlowchartOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FlowchartOptionsStruct &&
        optionText == other.optionText &&
        optionRef == other.optionRef &&
        optionIndex == other.optionIndex &&
        optionTextToCopy == other.optionTextToCopy;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([optionText, optionRef, optionIndex, optionTextToCopy]);
}

FlowchartOptionsStruct createFlowchartOptionsStruct({
  String? optionText,
  DocumentReference? optionRef,
  int? optionIndex,
  String? optionTextToCopy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlowchartOptionsStruct(
      optionText: optionText,
      optionRef: optionRef,
      optionIndex: optionIndex,
      optionTextToCopy: optionTextToCopy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FlowchartOptionsStruct? updateFlowchartOptionsStruct(
  FlowchartOptionsStruct? flowchartOptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    flowchartOptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFlowchartOptionsStructData(
  Map<String, dynamic> firestoreData,
  FlowchartOptionsStruct? flowchartOptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flowchartOptions == null) {
    return;
  }
  if (flowchartOptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && flowchartOptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flowchartOptionsData =
      getFlowchartOptionsFirestoreData(flowchartOptions, forFieldValue);
  final nestedData =
      flowchartOptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = flowchartOptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFlowchartOptionsFirestoreData(
  FlowchartOptionsStruct? flowchartOptions, [
  bool forFieldValue = false,
]) {
  if (flowchartOptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(flowchartOptions.toMap());

  // Add any Firestore field values
  flowchartOptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlowchartOptionsListFirestoreData(
  List<FlowchartOptionsStruct>? flowchartOptionss,
) =>
    flowchartOptionss
        ?.map((e) => getFlowchartOptionsFirestoreData(e, true))
        .toList() ??
    [];
