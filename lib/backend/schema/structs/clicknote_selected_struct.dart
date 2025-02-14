// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteSelectedStruct extends FFFirebaseStruct {
  ClicknoteSelectedStruct({
    String? text,
    DocumentReference? rowRef,
    DocumentReference? sectionRef,
    int? rowIndex,
    int? sectionIndex,
    int? optionIndex,
    bool? hasEdits,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _text = text,
        _rowRef = rowRef,
        _sectionRef = sectionRef,
        _rowIndex = rowIndex,
        _sectionIndex = sectionIndex,
        _optionIndex = optionIndex,
        _hasEdits = hasEdits,
        super(firestoreUtilData);

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "row_ref" field.
  DocumentReference? _rowRef;
  DocumentReference? get rowRef => _rowRef;
  set rowRef(DocumentReference? val) => _rowRef = val;

  bool hasRowRef() => _rowRef != null;

  // "section_ref" field.
  DocumentReference? _sectionRef;
  DocumentReference? get sectionRef => _sectionRef;
  set sectionRef(DocumentReference? val) => _sectionRef = val;

  bool hasSectionRef() => _sectionRef != null;

  // "row_index" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  set rowIndex(int? val) => _rowIndex = val;

  void incrementRowIndex(int amount) => rowIndex = rowIndex + amount;

  bool hasRowIndex() => _rowIndex != null;

  // "section_index" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

  // "option_index" field.
  int? _optionIndex;
  int get optionIndex => _optionIndex ?? 0;
  set optionIndex(int? val) => _optionIndex = val;

  void incrementOptionIndex(int amount) => optionIndex = optionIndex + amount;

  bool hasOptionIndex() => _optionIndex != null;

  // "has_edits" field.
  bool? _hasEdits;
  bool get hasEdits => _hasEdits ?? false;
  set hasEdits(bool? val) => _hasEdits = val;

  bool hasHasEdits() => _hasEdits != null;

  static ClicknoteSelectedStruct fromMap(Map<String, dynamic> data) =>
      ClicknoteSelectedStruct(
        text: data['text'] as String?,
        rowRef: data['row_ref'] as DocumentReference?,
        sectionRef: data['section_ref'] as DocumentReference?,
        rowIndex: castToType<int>(data['row_index']),
        sectionIndex: castToType<int>(data['section_index']),
        optionIndex: castToType<int>(data['option_index']),
        hasEdits: data['has_edits'] as bool?,
      );

  static ClicknoteSelectedStruct? maybeFromMap(dynamic data) => data is Map
      ? ClicknoteSelectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'row_ref': _rowRef,
        'section_ref': _sectionRef,
        'row_index': _rowIndex,
        'section_index': _sectionIndex,
        'option_index': _optionIndex,
        'has_edits': _hasEdits,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'row_ref': serializeParam(
          _rowRef,
          ParamType.DocumentReference,
        ),
        'section_ref': serializeParam(
          _sectionRef,
          ParamType.DocumentReference,
        ),
        'row_index': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'section_index': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
        'option_index': serializeParam(
          _optionIndex,
          ParamType.int,
        ),
        'has_edits': serializeParam(
          _hasEdits,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ClicknoteSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ClicknoteSelectedStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        rowRef: deserializeParam(
          data['row_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clicknote_rows'],
        ),
        sectionRef: deserializeParam(
          data['section_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clicknote_templates', 'clicknote_sections'],
        ),
        rowIndex: deserializeParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        sectionIndex: deserializeParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
        optionIndex: deserializeParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        hasEdits: deserializeParam(
          data['has_edits'],
          ParamType.bool,
          false,
        ),
      );

  static ClicknoteSelectedStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ClicknoteSelectedStruct(
        text: convertAlgoliaParam(
          data['text'],
          ParamType.String,
          false,
        ),
        rowRef: convertAlgoliaParam(
          data['row_ref'],
          ParamType.DocumentReference,
          false,
        ),
        sectionRef: convertAlgoliaParam(
          data['section_ref'],
          ParamType.DocumentReference,
          false,
        ),
        rowIndex: convertAlgoliaParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        sectionIndex: convertAlgoliaParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
        optionIndex: convertAlgoliaParam(
          data['option_index'],
          ParamType.int,
          false,
        ),
        hasEdits: convertAlgoliaParam(
          data['has_edits'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ClicknoteSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClicknoteSelectedStruct &&
        text == other.text &&
        rowRef == other.rowRef &&
        sectionRef == other.sectionRef &&
        rowIndex == other.rowIndex &&
        sectionIndex == other.sectionIndex &&
        optionIndex == other.optionIndex &&
        hasEdits == other.hasEdits;
  }

  @override
  int get hashCode => const ListEquality().hash([
        text,
        rowRef,
        sectionRef,
        rowIndex,
        sectionIndex,
        optionIndex,
        hasEdits
      ]);
}

ClicknoteSelectedStruct createClicknoteSelectedStruct({
  String? text,
  DocumentReference? rowRef,
  DocumentReference? sectionRef,
  int? rowIndex,
  int? sectionIndex,
  int? optionIndex,
  bool? hasEdits,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClicknoteSelectedStruct(
      text: text,
      rowRef: rowRef,
      sectionRef: sectionRef,
      rowIndex: rowIndex,
      sectionIndex: sectionIndex,
      optionIndex: optionIndex,
      hasEdits: hasEdits,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClicknoteSelectedStruct? updateClicknoteSelectedStruct(
  ClicknoteSelectedStruct? clicknoteSelected, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clicknoteSelected
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClicknoteSelectedStructData(
  Map<String, dynamic> firestoreData,
  ClicknoteSelectedStruct? clicknoteSelected,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clicknoteSelected == null) {
    return;
  }
  if (clicknoteSelected.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clicknoteSelected.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clicknoteSelectedData =
      getClicknoteSelectedFirestoreData(clicknoteSelected, forFieldValue);
  final nestedData =
      clicknoteSelectedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clicknoteSelected.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClicknoteSelectedFirestoreData(
  ClicknoteSelectedStruct? clicknoteSelected, [
  bool forFieldValue = false,
]) {
  if (clicknoteSelected == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clicknoteSelected.toMap());

  // Add any Firestore field values
  clicknoteSelected.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClicknoteSelectedListFirestoreData(
  List<ClicknoteSelectedStruct>? clicknoteSelecteds,
) =>
    clicknoteSelecteds
        ?.map((e) => getClicknoteSelectedFirestoreData(e, true))
        .toList() ??
    [];
