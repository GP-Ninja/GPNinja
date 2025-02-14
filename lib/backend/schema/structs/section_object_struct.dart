// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SectionObjectStruct extends FFFirebaseStruct {
  SectionObjectStruct({
    String? sectionName,
    List<RowObjectStruct>? rows,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sectionName = sectionName,
        _rows = rows,
        super(firestoreUtilData);

  // "sectionName" field.
  String? _sectionName;
  String get sectionName => _sectionName ?? '';
  set sectionName(String? val) => _sectionName = val;

  bool hasSectionName() => _sectionName != null;

  // "rows" field.
  List<RowObjectStruct>? _rows;
  List<RowObjectStruct> get rows => _rows ?? const [];
  set rows(List<RowObjectStruct>? val) => _rows = val;

  void updateRows(Function(List<RowObjectStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  static SectionObjectStruct fromMap(Map<String, dynamic> data) =>
      SectionObjectStruct(
        sectionName: data['sectionName'] as String?,
        rows: getStructList(
          data['rows'],
          RowObjectStruct.fromMap,
        ),
      );

  static SectionObjectStruct? maybeFromMap(dynamic data) => data is Map
      ? SectionObjectStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sectionName': _sectionName,
        'rows': _rows?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sectionName': serializeParam(
          _sectionName,
          ParamType.String,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SectionObjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      SectionObjectStruct(
        sectionName: deserializeParam(
          data['sectionName'],
          ParamType.String,
          false,
        ),
        rows: deserializeStructParam<RowObjectStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: RowObjectStruct.fromSerializableMap,
        ),
      );

  static SectionObjectStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SectionObjectStruct(
        sectionName: convertAlgoliaParam(
          data['sectionName'],
          ParamType.String,
          false,
        ),
        rows: convertAlgoliaParam<RowObjectStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: RowObjectStruct.fromAlgoliaData,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SectionObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SectionObjectStruct &&
        sectionName == other.sectionName &&
        listEquality.equals(rows, other.rows);
  }

  @override
  int get hashCode => const ListEquality().hash([sectionName, rows]);
}

SectionObjectStruct createSectionObjectStruct({
  String? sectionName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SectionObjectStruct(
      sectionName: sectionName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SectionObjectStruct? updateSectionObjectStruct(
  SectionObjectStruct? sectionObject, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sectionObject
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSectionObjectStructData(
  Map<String, dynamic> firestoreData,
  SectionObjectStruct? sectionObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sectionObject == null) {
    return;
  }
  if (sectionObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sectionObject.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sectionObjectData =
      getSectionObjectFirestoreData(sectionObject, forFieldValue);
  final nestedData =
      sectionObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sectionObject.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSectionObjectFirestoreData(
  SectionObjectStruct? sectionObject, [
  bool forFieldValue = false,
]) {
  if (sectionObject == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sectionObject.toMap());

  // Add any Firestore field values
  sectionObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSectionObjectListFirestoreData(
  List<SectionObjectStruct>? sectionObjects,
) =>
    sectionObjects
        ?.map((e) => getSectionObjectFirestoreData(e, true))
        .toList() ??
    [];
