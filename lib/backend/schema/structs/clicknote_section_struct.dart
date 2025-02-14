// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteSectionStruct extends FFFirebaseStruct {
  ClicknoteSectionStruct({
    int? sectionIndex,
    String? sectionText,
    List<ClicknoteRowStruct>? sectionRows,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sectionIndex = sectionIndex,
        _sectionText = sectionText,
        _sectionRows = sectionRows,
        super(firestoreUtilData);

  // "section_index" field.
  int? _sectionIndex;
  int get sectionIndex => _sectionIndex ?? 0;
  set sectionIndex(int? val) => _sectionIndex = val;

  void incrementSectionIndex(int amount) =>
      sectionIndex = sectionIndex + amount;

  bool hasSectionIndex() => _sectionIndex != null;

  // "section_text" field.
  String? _sectionText;
  String get sectionText => _sectionText ?? '';
  set sectionText(String? val) => _sectionText = val;

  bool hasSectionText() => _sectionText != null;

  // "section_rows" field.
  List<ClicknoteRowStruct>? _sectionRows;
  List<ClicknoteRowStruct> get sectionRows => _sectionRows ?? const [];
  set sectionRows(List<ClicknoteRowStruct>? val) => _sectionRows = val;

  void updateSectionRows(Function(List<ClicknoteRowStruct>) updateFn) {
    updateFn(_sectionRows ??= []);
  }

  bool hasSectionRows() => _sectionRows != null;

  static ClicknoteSectionStruct fromMap(Map<String, dynamic> data) =>
      ClicknoteSectionStruct(
        sectionIndex: castToType<int>(data['section_index']),
        sectionText: data['section_text'] as String?,
        sectionRows: getStructList(
          data['section_rows'],
          ClicknoteRowStruct.fromMap,
        ),
      );

  static ClicknoteSectionStruct? maybeFromMap(dynamic data) => data is Map
      ? ClicknoteSectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'section_index': _sectionIndex,
        'section_text': _sectionText,
        'section_rows': _sectionRows?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'section_index': serializeParam(
          _sectionIndex,
          ParamType.int,
        ),
        'section_text': serializeParam(
          _sectionText,
          ParamType.String,
        ),
        'section_rows': serializeParam(
          _sectionRows,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ClicknoteSectionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ClicknoteSectionStruct(
        sectionIndex: deserializeParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
        sectionText: deserializeParam(
          data['section_text'],
          ParamType.String,
          false,
        ),
        sectionRows: deserializeStructParam<ClicknoteRowStruct>(
          data['section_rows'],
          ParamType.DataStruct,
          true,
          structBuilder: ClicknoteRowStruct.fromSerializableMap,
        ),
      );

  static ClicknoteSectionStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ClicknoteSectionStruct(
        sectionIndex: convertAlgoliaParam(
          data['section_index'],
          ParamType.int,
          false,
        ),
        sectionText: convertAlgoliaParam(
          data['section_text'],
          ParamType.String,
          false,
        ),
        sectionRows: convertAlgoliaParam<ClicknoteRowStruct>(
          data['section_rows'],
          ParamType.DataStruct,
          true,
          structBuilder: ClicknoteRowStruct.fromAlgoliaData,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ClicknoteSectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ClicknoteSectionStruct &&
        sectionIndex == other.sectionIndex &&
        sectionText == other.sectionText &&
        listEquality.equals(sectionRows, other.sectionRows);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sectionIndex, sectionText, sectionRows]);
}

ClicknoteSectionStruct createClicknoteSectionStruct({
  int? sectionIndex,
  String? sectionText,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClicknoteSectionStruct(
      sectionIndex: sectionIndex,
      sectionText: sectionText,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClicknoteSectionStruct? updateClicknoteSectionStruct(
  ClicknoteSectionStruct? clicknoteSection, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clicknoteSection
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClicknoteSectionStructData(
  Map<String, dynamic> firestoreData,
  ClicknoteSectionStruct? clicknoteSection,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clicknoteSection == null) {
    return;
  }
  if (clicknoteSection.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clicknoteSection.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clicknoteSectionData =
      getClicknoteSectionFirestoreData(clicknoteSection, forFieldValue);
  final nestedData =
      clicknoteSectionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clicknoteSection.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClicknoteSectionFirestoreData(
  ClicknoteSectionStruct? clicknoteSection, [
  bool forFieldValue = false,
]) {
  if (clicknoteSection == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clicknoteSection.toMap());

  // Add any Firestore field values
  clicknoteSection.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClicknoteSectionListFirestoreData(
  List<ClicknoteSectionStruct>? clicknoteSections,
) =>
    clicknoteSections
        ?.map((e) => getClicknoteSectionFirestoreData(e, true))
        .toList() ??
    [];
