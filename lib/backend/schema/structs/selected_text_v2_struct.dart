// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SelectedTextV2Struct extends FFFirebaseStruct {
  SelectedTextV2Struct({
    String? selectedText,
    DocumentReference? sectionRef,
    DocumentReference? rowRef,
    DocumentReference? rowUnitRef,
    int? rowIndex,
    int? unitIndex,
    int? sectionIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selectedText = selectedText,
        _sectionRef = sectionRef,
        _rowRef = rowRef,
        _rowUnitRef = rowUnitRef,
        _rowIndex = rowIndex,
        _unitIndex = unitIndex,
        _sectionIndex = sectionIndex,
        super(firestoreUtilData);

  // "selectedText" field.
  String? _selectedText;
  String get selectedText => _selectedText ?? '';
  set selectedText(String? val) => _selectedText = val;

  bool hasSelectedText() => _selectedText != null;

  // "sectionRef" field.
  DocumentReference? _sectionRef;
  DocumentReference? get sectionRef => _sectionRef;
  set sectionRef(DocumentReference? val) => _sectionRef = val;

  bool hasSectionRef() => _sectionRef != null;

  // "rowRef" field.
  DocumentReference? _rowRef;
  DocumentReference? get rowRef => _rowRef;
  set rowRef(DocumentReference? val) => _rowRef = val;

  bool hasRowRef() => _rowRef != null;

  // "rowUnitRef" field.
  DocumentReference? _rowUnitRef;
  DocumentReference? get rowUnitRef => _rowUnitRef;
  set rowUnitRef(DocumentReference? val) => _rowUnitRef = val;

  bool hasRowUnitRef() => _rowUnitRef != null;

  // "rowIndex" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  set rowIndex(int? val) => _rowIndex = val;

  void incrementRowIndex(int amount) => rowIndex = rowIndex + amount;

  bool hasRowIndex() => _rowIndex != null;

  // "unitIndex" field.
  int? _unitIndex;
  int get unitIndex => _unitIndex ?? 0;
  set unitIndex(int? val) => _unitIndex = val;

  void incrementUnitIndex(int amount) => unitIndex = unitIndex + amount;

  bool hasUnitIndex() => _unitIndex != null;

  // "sectionIndex" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

  static SelectedTextV2Struct fromMap(Map<String, dynamic> data) =>
      SelectedTextV2Struct(
        selectedText: data['selectedText'] as String?,
        sectionRef: data['sectionRef'] as DocumentReference?,
        rowRef: data['rowRef'] as DocumentReference?,
        rowUnitRef: data['rowUnitRef'] as DocumentReference?,
        rowIndex: castToType<int>(data['rowIndex']),
        unitIndex: castToType<int>(data['unitIndex']),
        sectionIndex: castToType<int>(data['sectionIndex']),
      );

  static SelectedTextV2Struct? maybeFromMap(dynamic data) => data is Map
      ? SelectedTextV2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedText': _selectedText,
        'sectionRef': _sectionRef,
        'rowRef': _rowRef,
        'rowUnitRef': _rowUnitRef,
        'rowIndex': _rowIndex,
        'unitIndex': _unitIndex,
        'sectionIndex': _sectionIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedText': serializeParam(
          _selectedText,
          ParamType.String,
        ),
        'sectionRef': serializeParam(
          _sectionRef,
          ParamType.DocumentReference,
        ),
        'rowRef': serializeParam(
          _rowRef,
          ParamType.DocumentReference,
        ),
        'rowUnitRef': serializeParam(
          _rowUnitRef,
          ParamType.DocumentReference,
        ),
        'rowIndex': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'unitIndex': serializeParam(
          _unitIndex,
          ParamType.int,
        ),
        'sectionIndex': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static SelectedTextV2Struct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedTextV2Struct(
        selectedText: deserializeParam(
          data['selectedText'],
          ParamType.String,
          false,
        ),
        sectionRef: deserializeParam(
          data['sectionRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['templateV2', 'sectionV2'],
        ),
        rowRef: deserializeParam(
          data['rowRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['rowV2'],
        ),
        rowUnitRef: deserializeParam(
          data['rowUnitRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['row_unit'],
        ),
        rowIndex: deserializeParam(
          data['rowIndex'],
          ParamType.int,
          false,
        ),
        unitIndex: deserializeParam(
          data['unitIndex'],
          ParamType.int,
          false,
        ),
        sectionIndex: deserializeParam(
          data['sectionIndex'],
          ParamType.int,
          false,
        ),
      );

  static SelectedTextV2Struct fromAlgoliaData(Map<String, dynamic> data) =>
      SelectedTextV2Struct(
        selectedText: convertAlgoliaParam(
          data['selectedText'],
          ParamType.String,
          false,
        ),
        sectionRef: convertAlgoliaParam(
          data['sectionRef'],
          ParamType.DocumentReference,
          false,
        ),
        rowRef: convertAlgoliaParam(
          data['rowRef'],
          ParamType.DocumentReference,
          false,
        ),
        rowUnitRef: convertAlgoliaParam(
          data['rowUnitRef'],
          ParamType.DocumentReference,
          false,
        ),
        rowIndex: convertAlgoliaParam(
          data['rowIndex'],
          ParamType.int,
          false,
        ),
        unitIndex: convertAlgoliaParam(
          data['unitIndex'],
          ParamType.int,
          false,
        ),
        sectionIndex: convertAlgoliaParam(
          data['sectionIndex'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SelectedTextV2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedTextV2Struct &&
        selectedText == other.selectedText &&
        sectionRef == other.sectionRef &&
        rowRef == other.rowRef &&
        rowUnitRef == other.rowUnitRef &&
        rowIndex == other.rowIndex &&
        unitIndex == other.unitIndex &&
        sectionIndex == other.sectionIndex;
  }

  @override
  int get hashCode => const ListEquality().hash([
        selectedText,
        sectionRef,
        rowRef,
        rowUnitRef,
        rowIndex,
        unitIndex,
        sectionIndex
      ]);
}

SelectedTextV2Struct createSelectedTextV2Struct({
  String? selectedText,
  DocumentReference? sectionRef,
  DocumentReference? rowRef,
  DocumentReference? rowUnitRef,
  int? rowIndex,
  int? unitIndex,
  int? sectionIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedTextV2Struct(
      selectedText: selectedText,
      sectionRef: sectionRef,
      rowRef: rowRef,
      rowUnitRef: rowUnitRef,
      rowIndex: rowIndex,
      unitIndex: unitIndex,
      sectionIndex: sectionIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedTextV2Struct? updateSelectedTextV2Struct(
  SelectedTextV2Struct? selectedTextV2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedTextV2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedTextV2StructData(
  Map<String, dynamic> firestoreData,
  SelectedTextV2Struct? selectedTextV2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedTextV2 == null) {
    return;
  }
  if (selectedTextV2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedTextV2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedTextV2Data =
      getSelectedTextV2FirestoreData(selectedTextV2, forFieldValue);
  final nestedData =
      selectedTextV2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedTextV2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedTextV2FirestoreData(
  SelectedTextV2Struct? selectedTextV2, [
  bool forFieldValue = false,
]) {
  if (selectedTextV2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedTextV2.toMap());

  // Add any Firestore field values
  selectedTextV2.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedTextV2ListFirestoreData(
  List<SelectedTextV2Struct>? selectedTextV2s,
) =>
    selectedTextV2s
        ?.map((e) => getSelectedTextV2FirestoreData(e, true))
        .toList() ??
    [];
