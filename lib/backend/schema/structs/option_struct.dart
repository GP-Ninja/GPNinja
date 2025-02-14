// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OptionStruct extends FFFirebaseStruct {
  OptionStruct({
    String? optionContent,
    int? index,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optionContent = optionContent,
        _index = index,
        super(firestoreUtilData);

  // "optionContent" field.
  String? _optionContent;
  String get optionContent => _optionContent ?? '';
  set optionContent(String? val) => _optionContent = val;

  bool hasOptionContent() => _optionContent != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static OptionStruct fromMap(Map<String, dynamic> data) => OptionStruct(
        optionContent: data['optionContent'] as String?,
        index: castToType<int>(data['index']),
      );

  static OptionStruct? maybeFromMap(dynamic data) =>
      data is Map ? OptionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'optionContent': _optionContent,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'optionContent': serializeParam(
          _optionContent,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static OptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      OptionStruct(
        optionContent: deserializeParam(
          data['optionContent'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  static OptionStruct fromAlgoliaData(Map<String, dynamic> data) =>
      OptionStruct(
        optionContent: convertAlgoliaParam(
          data['optionContent'],
          ParamType.String,
          false,
        ),
        index: convertAlgoliaParam(
          data['index'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptionStruct &&
        optionContent == other.optionContent &&
        index == other.index;
  }

  @override
  int get hashCode => const ListEquality().hash([optionContent, index]);
}

OptionStruct createOptionStruct({
  String? optionContent,
  int? index,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptionStruct(
      optionContent: optionContent,
      index: index,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptionStruct? updateOptionStruct(
  OptionStruct? option, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    option
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptionStructData(
  Map<String, dynamic> firestoreData,
  OptionStruct? option,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (option == null) {
    return;
  }
  if (option.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && option.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optionData = getOptionFirestoreData(option, forFieldValue);
  final nestedData = optionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = option.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptionFirestoreData(
  OptionStruct? option, [
  bool forFieldValue = false,
]) {
  if (option == null) {
    return {};
  }
  final firestoreData = mapToFirestore(option.toMap());

  // Add any Firestore field values
  option.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptionListFirestoreData(
  List<OptionStruct>? options,
) =>
    options?.map((e) => getOptionFirestoreData(e, true)).toList() ?? [];
