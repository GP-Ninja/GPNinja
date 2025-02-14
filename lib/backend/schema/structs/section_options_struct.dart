// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SectionOptionsStruct extends FFFirebaseStruct {
  SectionOptionsStruct({
    bool? index,
    String? optionText,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _index = index,
        _optionText = optionText,
        super(firestoreUtilData);

  // "index" field.
  bool? _index;
  bool get index => _index ?? false;
  set index(bool? val) => _index = val;

  bool hasIndex() => _index != null;

  // "option_text" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  set optionText(String? val) => _optionText = val;

  bool hasOptionText() => _optionText != null;

  static SectionOptionsStruct fromMap(Map<String, dynamic> data) =>
      SectionOptionsStruct(
        index: data['index'] as bool?,
        optionText: data['option_text'] as String?,
      );

  static SectionOptionsStruct? maybeFromMap(dynamic data) => data is Map
      ? SectionOptionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'option_text': _optionText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.bool,
        ),
        'option_text': serializeParam(
          _optionText,
          ParamType.String,
        ),
      }.withoutNulls;

  static SectionOptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SectionOptionsStruct(
        index: deserializeParam(
          data['index'],
          ParamType.bool,
          false,
        ),
        optionText: deserializeParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
      );

  static SectionOptionsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SectionOptionsStruct(
        index: convertAlgoliaParam(
          data['index'],
          ParamType.bool,
          false,
        ),
        optionText: convertAlgoliaParam(
          data['option_text'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SectionOptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SectionOptionsStruct &&
        index == other.index &&
        optionText == other.optionText;
  }

  @override
  int get hashCode => const ListEquality().hash([index, optionText]);
}

SectionOptionsStruct createSectionOptionsStruct({
  bool? index,
  String? optionText,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SectionOptionsStruct(
      index: index,
      optionText: optionText,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SectionOptionsStruct? updateSectionOptionsStruct(
  SectionOptionsStruct? sectionOptions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sectionOptions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSectionOptionsStructData(
  Map<String, dynamic> firestoreData,
  SectionOptionsStruct? sectionOptions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sectionOptions == null) {
    return;
  }
  if (sectionOptions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sectionOptions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sectionOptionsData =
      getSectionOptionsFirestoreData(sectionOptions, forFieldValue);
  final nestedData =
      sectionOptionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sectionOptions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSectionOptionsFirestoreData(
  SectionOptionsStruct? sectionOptions, [
  bool forFieldValue = false,
]) {
  if (sectionOptions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sectionOptions.toMap());

  // Add any Firestore field values
  sectionOptions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSectionOptionsListFirestoreData(
  List<SectionOptionsStruct>? sectionOptionss,
) =>
    sectionOptionss
        ?.map((e) => getSectionOptionsFirestoreData(e, true))
        .toList() ??
    [];
