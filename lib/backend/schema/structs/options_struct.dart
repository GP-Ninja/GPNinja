// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OptionsStruct extends FFFirebaseStruct {
  OptionsStruct({
    String? optionName,
    int? index,
    DocumentReference? questionRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optionName = optionName,
        _index = index,
        _questionRef = questionRef,
        super(firestoreUtilData);

  // "optionName" field.
  String? _optionName;
  String get optionName => _optionName ?? '';
  set optionName(String? val) => _optionName = val;

  bool hasOptionName() => _optionName != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "questionRef" field.
  DocumentReference? _questionRef;
  DocumentReference? get questionRef => _questionRef;
  set questionRef(DocumentReference? val) => _questionRef = val;

  bool hasQuestionRef() => _questionRef != null;

  static OptionsStruct fromMap(Map<String, dynamic> data) => OptionsStruct(
        optionName: data['optionName'] as String?,
        index: castToType<int>(data['index']),
        questionRef: data['questionRef'] as DocumentReference?,
      );

  static OptionsStruct? maybeFromMap(dynamic data) =>
      data is Map ? OptionsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'optionName': _optionName,
        'index': _index,
        'questionRef': _questionRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'optionName': serializeParam(
          _optionName,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'questionRef': serializeParam(
          _questionRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static OptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OptionsStruct(
        optionName: deserializeParam(
          data['optionName'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        questionRef: deserializeParam(
          data['questionRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['questions'],
        ),
      );

  static OptionsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      OptionsStruct(
        optionName: convertAlgoliaParam(
          data['optionName'],
          ParamType.String,
          false,
        ),
        index: convertAlgoliaParam(
          data['index'],
          ParamType.int,
          false,
        ),
        questionRef: convertAlgoliaParam(
          data['questionRef'],
          ParamType.DocumentReference,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptionsStruct &&
        optionName == other.optionName &&
        index == other.index &&
        questionRef == other.questionRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([optionName, index, questionRef]);
}

OptionsStruct createOptionsStruct({
  String? optionName,
  int? index,
  DocumentReference? questionRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptionsStruct(
      optionName: optionName,
      index: index,
      questionRef: questionRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptionsStruct? updateOptionsStruct(
  OptionsStruct? options, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    options
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptionsStructData(
  Map<String, dynamic> firestoreData,
  OptionsStruct? options,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (options == null) {
    return;
  }
  if (options.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && options.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optionsData = getOptionsFirestoreData(options, forFieldValue);
  final nestedData = optionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = options.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptionsFirestoreData(
  OptionsStruct? options, [
  bool forFieldValue = false,
]) {
  if (options == null) {
    return {};
  }
  final firestoreData = mapToFirestore(options.toMap());

  // Add any Firestore field values
  options.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptionsListFirestoreData(
  List<OptionsStruct>? optionss,
) =>
    optionss?.map((e) => getOptionsFirestoreData(e, true)).toList() ?? [];
