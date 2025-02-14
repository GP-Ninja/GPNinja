// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteHybridCoordinateStruct extends FFFirebaseStruct {
  ClicknoteHybridCoordinateStruct({
    int? sectionIndex,
    int? rowIndex,
    int? optionIndex,
    String? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sectionIndex = sectionIndex,
        _rowIndex = rowIndex,
        _optionIndex = optionIndex,
        _text = text,
        super(firestoreUtilData);

  // "section_index" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

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

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  static ClicknoteHybridCoordinateStruct fromMap(Map<String, dynamic> data) =>
      ClicknoteHybridCoordinateStruct(
        sectionIndex: castToType<int>(data['section_index']),
        rowIndex: castToType<int>(data['row_index']),
        optionIndex: castToType<int>(data['option_index']),
        text: data['text'] as String?,
      );

  static ClicknoteHybridCoordinateStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ClicknoteHybridCoordinateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'section_index': _sectionIndex,
        'row_index': _rowIndex,
        'option_index': _optionIndex,
        'text': _text,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'section_index': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
        'row_index': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'option_index': serializeParam(
          _optionIndex,
          ParamType.int,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClicknoteHybridCoordinateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ClicknoteHybridCoordinateStruct(
        sectionIndex: deserializeParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
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
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  static ClicknoteHybridCoordinateStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      ClicknoteHybridCoordinateStruct(
        sectionIndex: convertAlgoliaParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
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
        text: convertAlgoliaParam(
          data['text'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ClicknoteHybridCoordinateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClicknoteHybridCoordinateStruct &&
        sectionIndex == other.sectionIndex &&
        rowIndex == other.rowIndex &&
        optionIndex == other.optionIndex &&
        text == other.text;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sectionIndex, rowIndex, optionIndex, text]);
}

ClicknoteHybridCoordinateStruct createClicknoteHybridCoordinateStruct({
  int? sectionIndex,
  int? rowIndex,
  int? optionIndex,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClicknoteHybridCoordinateStruct(
      sectionIndex: sectionIndex,
      rowIndex: rowIndex,
      optionIndex: optionIndex,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClicknoteHybridCoordinateStruct? updateClicknoteHybridCoordinateStruct(
  ClicknoteHybridCoordinateStruct? clicknoteHybridCoordinate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clicknoteHybridCoordinate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClicknoteHybridCoordinateStructData(
  Map<String, dynamic> firestoreData,
  ClicknoteHybridCoordinateStruct? clicknoteHybridCoordinate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clicknoteHybridCoordinate == null) {
    return;
  }
  if (clicknoteHybridCoordinate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      clicknoteHybridCoordinate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clicknoteHybridCoordinateData =
      getClicknoteHybridCoordinateFirestoreData(
          clicknoteHybridCoordinate, forFieldValue);
  final nestedData =
      clicknoteHybridCoordinateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      clicknoteHybridCoordinate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClicknoteHybridCoordinateFirestoreData(
  ClicknoteHybridCoordinateStruct? clicknoteHybridCoordinate, [
  bool forFieldValue = false,
]) {
  if (clicknoteHybridCoordinate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clicknoteHybridCoordinate.toMap());

  // Add any Firestore field values
  clicknoteHybridCoordinate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClicknoteHybridCoordinateListFirestoreData(
  List<ClicknoteHybridCoordinateStruct>? clicknoteHybridCoordinates,
) =>
    clicknoteHybridCoordinates
        ?.map((e) => getClicknoteHybridCoordinateFirestoreData(e, true))
        .toList() ??
    [];
