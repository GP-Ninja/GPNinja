// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RowObjectStruct extends FFFirebaseStruct {
  RowObjectStruct({
    String? prompt,
    List<String>? options,
    bool? multiselect,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prompt = prompt,
        _options = options,
        _multiselect = multiselect,
        super(firestoreUtilData);

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  set prompt(String? val) => _prompt = val;

  bool hasPrompt() => _prompt != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  // "multiselect" field.
  bool? _multiselect;
  bool get multiselect => _multiselect ?? false;
  set multiselect(bool? val) => _multiselect = val;

  bool hasMultiselect() => _multiselect != null;

  static RowObjectStruct fromMap(Map<String, dynamic> data) => RowObjectStruct(
        prompt: data['prompt'] as String?,
        options: getDataList(data['options']),
        multiselect: data['multiselect'] as bool?,
      );

  static RowObjectStruct? maybeFromMap(dynamic data) => data is Map
      ? RowObjectStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prompt': _prompt,
        'options': _options,
        'multiselect': _multiselect,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
        'multiselect': serializeParam(
          _multiselect,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RowObjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      RowObjectStruct(
        prompt: deserializeParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        multiselect: deserializeParam(
          data['multiselect'],
          ParamType.bool,
          false,
        ),
      );

  static RowObjectStruct fromAlgoliaData(Map<String, dynamic> data) =>
      RowObjectStruct(
        prompt: convertAlgoliaParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        options: convertAlgoliaParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        multiselect: convertAlgoliaParam(
          data['multiselect'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'RowObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RowObjectStruct &&
        prompt == other.prompt &&
        listEquality.equals(options, other.options) &&
        multiselect == other.multiselect;
  }

  @override
  int get hashCode => const ListEquality().hash([prompt, options, multiselect]);
}

RowObjectStruct createRowObjectStruct({
  String? prompt,
  bool? multiselect,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RowObjectStruct(
      prompt: prompt,
      multiselect: multiselect,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RowObjectStruct? updateRowObjectStruct(
  RowObjectStruct? rowObject, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rowObject
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRowObjectStructData(
  Map<String, dynamic> firestoreData,
  RowObjectStruct? rowObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rowObject == null) {
    return;
  }
  if (rowObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && rowObject.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rowObjectData = getRowObjectFirestoreData(rowObject, forFieldValue);
  final nestedData = rowObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rowObject.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRowObjectFirestoreData(
  RowObjectStruct? rowObject, [
  bool forFieldValue = false,
]) {
  if (rowObject == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rowObject.toMap());

  // Add any Firestore field values
  rowObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRowObjectListFirestoreData(
  List<RowObjectStruct>? rowObjects,
) =>
    rowObjects?.map((e) => getRowObjectFirestoreData(e, true)).toList() ?? [];
