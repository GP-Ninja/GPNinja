// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InoteRowStruct extends FFFirebaseStruct {
  InoteRowStruct({
    String? prompt,
    List<String>? options,
    String? section,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prompt = prompt,
        _options = options,
        _section = section,
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

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  set section(String? val) => _section = val;

  bool hasSection() => _section != null;

  static InoteRowStruct fromMap(Map<String, dynamic> data) => InoteRowStruct(
        prompt: data['prompt'] as String?,
        options: getDataList(data['options']),
        section: data['section'] as String?,
      );

  static InoteRowStruct? maybeFromMap(dynamic data) =>
      data is Map ? InoteRowStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'prompt': _prompt,
        'options': _options,
        'section': _section,
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
        'section': serializeParam(
          _section,
          ParamType.String,
        ),
      }.withoutNulls;

  static InoteRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      InoteRowStruct(
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
        section: deserializeParam(
          data['section'],
          ParamType.String,
          false,
        ),
      );

  static InoteRowStruct fromAlgoliaData(Map<String, dynamic> data) =>
      InoteRowStruct(
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
        section: convertAlgoliaParam(
          data['section'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'InoteRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InoteRowStruct &&
        prompt == other.prompt &&
        listEquality.equals(options, other.options) &&
        section == other.section;
  }

  @override
  int get hashCode => const ListEquality().hash([prompt, options, section]);
}

InoteRowStruct createInoteRowStruct({
  String? prompt,
  String? section,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InoteRowStruct(
      prompt: prompt,
      section: section,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InoteRowStruct? updateInoteRowStruct(
  InoteRowStruct? inoteRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    inoteRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInoteRowStructData(
  Map<String, dynamic> firestoreData,
  InoteRowStruct? inoteRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (inoteRow == null) {
    return;
  }
  if (inoteRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && inoteRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final inoteRowData = getInoteRowFirestoreData(inoteRow, forFieldValue);
  final nestedData = inoteRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = inoteRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInoteRowFirestoreData(
  InoteRowStruct? inoteRow, [
  bool forFieldValue = false,
]) {
  if (inoteRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(inoteRow.toMap());

  // Add any Firestore field values
  inoteRow.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInoteRowListFirestoreData(
  List<InoteRowStruct>? inoteRows,
) =>
    inoteRows?.map((e) => getInoteRowFirestoreData(e, true)).toList() ?? [];
