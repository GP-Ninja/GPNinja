// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SelectedTextStruct extends FFFirebaseStruct {
  SelectedTextStruct({
    String? selected,
    DocumentReference? rowRef,
    DocumentReference? sectionRef,
    int? order,
    int? sectionIndex,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selected = selected,
        _rowRef = rowRef,
        _sectionRef = sectionRef,
        _order = order,
        _sectionIndex = sectionIndex,
        super(firestoreUtilData);

  // "selected" field.
  String? _selected;
  String get selected => _selected ?? '';
  set selected(String? val) => _selected = val;

  bool hasSelected() => _selected != null;

  // "rowRef" field.
  DocumentReference? _rowRef;
  DocumentReference? get rowRef => _rowRef;
  set rowRef(DocumentReference? val) => _rowRef = val;

  bool hasRowRef() => _rowRef != null;

  // "sectionRef" field.
  DocumentReference? _sectionRef;
  DocumentReference? get sectionRef => _sectionRef;
  set sectionRef(DocumentReference? val) => _sectionRef = val;

  bool hasSectionRef() => _sectionRef != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "sectionIndex" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

  static SelectedTextStruct fromMap(Map<String, dynamic> data) =>
      SelectedTextStruct(
        selected: data['selected'] as String?,
        rowRef: data['rowRef'] as DocumentReference?,
        sectionRef: data['sectionRef'] as DocumentReference?,
        order: castToType<int>(data['order']),
        sectionIndex: castToType<int>(data['sectionIndex']),
      );

  static SelectedTextStruct? maybeFromMap(dynamic data) => data is Map
      ? SelectedTextStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selected': _selected,
        'rowRef': _rowRef,
        'sectionRef': _sectionRef,
        'order': _order,
        'sectionIndex': _sectionIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selected': serializeParam(
          _selected,
          ParamType.String,
        ),
        'rowRef': serializeParam(
          _rowRef,
          ParamType.DocumentReference,
        ),
        'sectionRef': serializeParam(
          _sectionRef,
          ParamType.DocumentReference,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'sectionIndex': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static SelectedTextStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelectedTextStruct(
        selected: deserializeParam(
          data['selected'],
          ParamType.String,
          false,
        ),
        rowRef: deserializeParam(
          data['rowRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['rows'],
        ),
        sectionRef: deserializeParam(
          data['sectionRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['defaultTemplates', 'sections'],
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        sectionIndex: deserializeParam(
          data['sectionIndex'],
          ParamType.int,
          false,
        ),
      );

  static SelectedTextStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SelectedTextStruct(
        selected: convertAlgoliaParam(
          data['selected'],
          ParamType.String,
          false,
        ),
        rowRef: convertAlgoliaParam(
          data['rowRef'],
          ParamType.DocumentReference,
          false,
        ),
        sectionRef: convertAlgoliaParam(
          data['sectionRef'],
          ParamType.DocumentReference,
          false,
        ),
        order: convertAlgoliaParam(
          data['order'],
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
  String toString() => 'SelectedTextStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedTextStruct &&
        selected == other.selected &&
        rowRef == other.rowRef &&
        sectionRef == other.sectionRef &&
        order == other.order &&
        sectionIndex == other.sectionIndex;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selected, rowRef, sectionRef, order, sectionIndex]);
}

SelectedTextStruct createSelectedTextStruct({
  String? selected,
  DocumentReference? rowRef,
  DocumentReference? sectionRef,
  int? order,
  int? sectionIndex,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelectedTextStruct(
      selected: selected,
      rowRef: rowRef,
      sectionRef: sectionRef,
      order: order,
      sectionIndex: sectionIndex,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelectedTextStruct? updateSelectedTextStruct(
  SelectedTextStruct? selectedText, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selectedText
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelectedTextStructData(
  Map<String, dynamic> firestoreData,
  SelectedTextStruct? selectedText,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selectedText == null) {
    return;
  }
  if (selectedText.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selectedText.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selectedTextData =
      getSelectedTextFirestoreData(selectedText, forFieldValue);
  final nestedData =
      selectedTextData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selectedText.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelectedTextFirestoreData(
  SelectedTextStruct? selectedText, [
  bool forFieldValue = false,
]) {
  if (selectedText == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selectedText.toMap());

  // Add any Firestore field values
  selectedText.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelectedTextListFirestoreData(
  List<SelectedTextStruct>? selectedTexts,
) =>
    selectedTexts?.map((e) => getSelectedTextFirestoreData(e, true)).toList() ??
    [];
