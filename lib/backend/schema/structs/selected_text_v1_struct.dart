// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SelectedTextV1Struct extends FFFirebaseStruct {
  SelectedTextV1Struct({
    String? selectedText,
    DocumentReference? sectionRef,
    DocumentReference? rowRef,
    int? rowIndex,
    int? sectionIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selectedText = selectedText,
        _sectionRef = sectionRef,
        _rowRef = rowRef,
        _rowIndex = rowIndex,
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

  // "rowIndex" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  set rowIndex(int? val) => _rowIndex = val;

  void incrementRowIndex(int amount) => rowIndex = rowIndex + amount;

  bool hasRowIndex() => _rowIndex != null;

  // "sectionIndex" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

  static SelectedTextV1Struct fromMap(Map<String, dynamic> data) =>
      SelectedTextV1Struct(
        selectedText: data['selectedText'] as String?,
        sectionRef: data['sectionRef'] as DocumentReference?,
        rowRef: data['rowRef'] as DocumentReference?,
        rowIndex: castToType<int>(data['rowIndex']),
        sectionIndex: castToType<int>(data['sectionIndex']),
      );

  static SelectedTextV1Struct? maybeFromMap(dynamic data) => data is Map
      ? SelectedTextV1Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedText': _selectedText,
        'sectionRef': _sectionRef,
        'rowRef': _rowRef,
        'rowIndex': _rowIndex,
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
        'rowIndex': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'sectionIndex': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static SelectedTextV1Struct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedTextV1Struct(
        selectedText: deserializeParam(
          data['selectedText'],
          ParamType.String,
          false,
        ),
        sectionRef: deserializeParam(
          data['sectionRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['defaultTemplates', 'sections'],
        ),
        rowRef: deserializeParam(
          data['rowRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['rows'],
        ),
        rowIndex: deserializeParam(
          data['rowIndex'],
          ParamType.int,
          false,
        ),
        sectionIndex: deserializeParam(
          data['sectionIndex'],
          ParamType.int,
          false,
        ),
      );

  static SelectedTextV1Struct fromAlgoliaData(Map<String, dynamic> data) =>
      SelectedTextV1Struct(
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
        rowIndex: convertAlgoliaParam(
          data['rowIndex'],
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
  String toString() => 'SelectedTextV1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedTextV1Struct &&
        selectedText == other.selectedText &&
        sectionRef == other.sectionRef &&
        rowRef == other.rowRef &&
        rowIndex == other.rowIndex &&
        sectionIndex == other.sectionIndex;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selectedText, sectionRef, rowRef, rowIndex, sectionIndex]);
}

SelectedTextV1Struct createSelectedTextV1Struct({
  String? selectedText,
  DocumentReference? sectionRef,
  DocumentReference? rowRef,
  int? rowIndex,
  int? sectionIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedTextV1Struct(
      selectedText: selectedText,
      sectionRef: sectionRef,
      rowRef: rowRef,
      rowIndex: rowIndex,
      sectionIndex: sectionIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedTextV1Struct? updateSelectedTextV1Struct(
  SelectedTextV1Struct? selectedTextV1, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedTextV1
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedTextV1StructData(
  Map<String, dynamic> firestoreData,
  SelectedTextV1Struct? selectedTextV1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedTextV1 == null) {
    return;
  }
  if (selectedTextV1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedTextV1.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedTextV1Data =
      getSelectedTextV1FirestoreData(selectedTextV1, forFieldValue);
  final nestedData =
      selectedTextV1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedTextV1.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedTextV1FirestoreData(
  SelectedTextV1Struct? selectedTextV1, [
  bool forFieldValue = false,
]) {
  if (selectedTextV1 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedTextV1.toMap());

  // Add any Firestore field values
  selectedTextV1.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedTextV1ListFirestoreData(
  List<SelectedTextV1Struct>? selectedTextV1s,
) =>
    selectedTextV1s
        ?.map((e) => getSelectedTextV1FirestoreData(e, true))
        .toList() ??
    [];
