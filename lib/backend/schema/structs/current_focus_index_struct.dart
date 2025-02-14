// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CurrentFocusIndexStruct extends FFFirebaseStruct {
  CurrentFocusIndexStruct({
    int? rowIndex,
    int? optionIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rowIndex = rowIndex,
        _optionIndex = optionIndex,
        super(firestoreUtilData);

  // "row_index" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  set rowIndex(int? val) => _rowIndex = val;

  void incrementRowIndex(int amount) => rowIndex = rowIndex + amount;

  bool hasRowIndex() => _rowIndex != null;

  // "option_index" field.
  int? _optionIndex;
  int get optionIndex => _optionIndex ?? 0;
  set optionIndex(int? val) => _optionIndex = val;

  void incrementOptionIndex(int amount) => optionIndex = optionIndex + amount;

  bool hasOptionIndex() => _optionIndex != null;

  static CurrentFocusIndexStruct fromMap(Map<String, dynamic> data) =>
      CurrentFocusIndexStruct(
        rowIndex: castToType<int>(data['row_index']),
        optionIndex: castToType<int>(data['option_index']),
      );

  static CurrentFocusIndexStruct? maybeFromMap(dynamic data) => data is Map
      ? CurrentFocusIndexStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'row_index': _rowIndex,
        'option_index': _optionIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'row_index': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'option_index': serializeParam(
          _optionIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static CurrentFocusIndexStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CurrentFocusIndexStruct(
        rowIndex: deserializeParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        optionIndex: deserializeParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
      );

  static CurrentFocusIndexStruct fromAlgoliaData(Map<String, dynamic> data) =>
      CurrentFocusIndexStruct(
        rowIndex: convertAlgoliaParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        optionIndex: convertAlgoliaParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CurrentFocusIndexStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrentFocusIndexStruct &&
        rowIndex == other.rowIndex &&
        optionIndex == other.optionIndex;
  }

  @override
  int get hashCode => const ListEquality().hash([rowIndex, optionIndex]);
}

CurrentFocusIndexStruct createCurrentFocusIndexStruct({
  int? rowIndex,
  int? optionIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrentFocusIndexStruct(
      rowIndex: rowIndex,
      optionIndex: optionIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrentFocusIndexStruct? updateCurrentFocusIndexStruct(
  CurrentFocusIndexStruct? currentFocusIndex, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currentFocusIndex
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrentFocusIndexStructData(
  Map<String, dynamic> firestoreData,
  CurrentFocusIndexStruct? currentFocusIndex,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currentFocusIndex == null) {
    return;
  }
  if (currentFocusIndex.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currentFocusIndex.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currentFocusIndexData =
      getCurrentFocusIndexFirestoreData(currentFocusIndex, forFieldValue);
  final nestedData =
      currentFocusIndexData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currentFocusIndex.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrentFocusIndexFirestoreData(
  CurrentFocusIndexStruct? currentFocusIndex, [
  bool forFieldValue = false,
]) {
  if (currentFocusIndex == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currentFocusIndex.toMap());

  // Add any Firestore field values
  currentFocusIndex.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrentFocusIndexListFirestoreData(
  List<CurrentFocusIndexStruct>? currentFocusIndexs,
) =>
    currentFocusIndexs
        ?.map((e) => getCurrentFocusIndexFirestoreData(e, true))
        .toList() ??
    [];
