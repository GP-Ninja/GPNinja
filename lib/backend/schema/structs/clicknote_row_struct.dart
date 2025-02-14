// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteRowStruct extends FFFirebaseStruct {
  ClicknoteRowStruct({
    int? rowIndex,
    String? rowText,
    List<ClicknoteOptionStruct>? rowOptions,
    bool? rowHasUrl,
    String? rowUrl,
    String? rowUrlDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rowIndex = rowIndex,
        _rowText = rowText,
        _rowOptions = rowOptions,
        _rowHasUrl = rowHasUrl,
        _rowUrl = rowUrl,
        _rowUrlDescription = rowUrlDescription,
        super(firestoreUtilData);

  // "row_index" field.
  int? _rowIndex;
  int get rowIndex => _rowIndex ?? 0;
  set rowIndex(int? val) => _rowIndex = val;

  void incrementRowIndex(int amount) => rowIndex = rowIndex + amount;

  bool hasRowIndex() => _rowIndex != null;

  // "row_text" field.
  String? _rowText;
  String get rowText => _rowText ?? '';
  set rowText(String? val) => _rowText = val;

  bool hasRowText() => _rowText != null;

  // "row_options" field.
  List<ClicknoteOptionStruct>? _rowOptions;
  List<ClicknoteOptionStruct> get rowOptions => _rowOptions ?? const [];
  set rowOptions(List<ClicknoteOptionStruct>? val) => _rowOptions = val;

  void updateRowOptions(Function(List<ClicknoteOptionStruct>) updateFn) {
    updateFn(_rowOptions ??= []);
  }

  bool hasRowOptions() => _rowOptions != null;

  // "row_has_url" field.
  bool? _rowHasUrl;
  bool get rowHasUrl => _rowHasUrl ?? false;
  set rowHasUrl(bool? val) => _rowHasUrl = val;

  bool hasRowHasUrl() => _rowHasUrl != null;

  // "row_url" field.
  String? _rowUrl;
  String get rowUrl => _rowUrl ?? '';
  set rowUrl(String? val) => _rowUrl = val;

  bool hasRowUrl() => _rowUrl != null;

  // "row_url_description" field.
  String? _rowUrlDescription;
  String get rowUrlDescription => _rowUrlDescription ?? '';
  set rowUrlDescription(String? val) => _rowUrlDescription = val;

  bool hasRowUrlDescription() => _rowUrlDescription != null;

  static ClicknoteRowStruct fromMap(Map<String, dynamic> data) =>
      ClicknoteRowStruct(
        rowIndex: castToType<int>(data['row_index']),
        rowText: data['row_text'] as String?,
        rowOptions: getStructList(
          data['row_options'],
          ClicknoteOptionStruct.fromMap,
        ),
        rowHasUrl: data['row_has_url'] as bool?,
        rowUrl: data['row_url'] as String?,
        rowUrlDescription: data['row_url_description'] as String?,
      );

  static ClicknoteRowStruct? maybeFromMap(dynamic data) => data is Map
      ? ClicknoteRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'row_index': _rowIndex,
        'row_text': _rowText,
        'row_options': _rowOptions?.map((e) => e.toMap()).toList(),
        'row_has_url': _rowHasUrl,
        'row_url': _rowUrl,
        'row_url_description': _rowUrlDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'row_index': serializeParam(
          _rowIndex,
          ParamType.int,
        ),
        'row_text': serializeParam(
          _rowText,
          ParamType.String,
        ),
        'row_options': serializeParam(
          _rowOptions,
          ParamType.DataStruct,
          isList: true,
        ),
        'row_has_url': serializeParam(
          _rowHasUrl,
          ParamType.bool,
        ),
        'row_url': serializeParam(
          _rowUrl,
          ParamType.String,
        ),
        'row_url_description': serializeParam(
          _rowUrlDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClicknoteRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClicknoteRowStruct(
        rowIndex: deserializeParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        rowText: deserializeParam(
          data['row_text'],
          ParamType.String,
          false,
        ),
        rowOptions: deserializeStructParam<ClicknoteOptionStruct>(
          data['row_options'],
          ParamType.DataStruct,
          true,
          structBuilder: ClicknoteOptionStruct.fromSerializableMap,
        ),
        rowHasUrl: deserializeParam(
          data['row_has_url'],
          ParamType.bool,
          false,
        ),
        rowUrl: deserializeParam(
          data['row_url'],
          ParamType.String,
          false,
        ),
        rowUrlDescription: deserializeParam(
          data['row_url_description'],
          ParamType.String,
          false,
        ),
      );

  static ClicknoteRowStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ClicknoteRowStruct(
        rowIndex: convertAlgoliaParam(
          data['row_index'],
          ParamType.int,
          false,
        ),
        rowText: convertAlgoliaParam(
          data['row_text'],
          ParamType.String,
          false,
        ),
        rowOptions: convertAlgoliaParam<ClicknoteOptionStruct>(
          data['row_options'],
          ParamType.DataStruct,
          true,
          structBuilder: ClicknoteOptionStruct.fromAlgoliaData,
        ),
        rowHasUrl: convertAlgoliaParam(
          data['row_has_url'],
          ParamType.bool,
          false,
        ),
        rowUrl: convertAlgoliaParam(
          data['row_url'],
          ParamType.String,
          false,
        ),
        rowUrlDescription: convertAlgoliaParam(
          data['row_url_description'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ClicknoteRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ClicknoteRowStruct &&
        rowIndex == other.rowIndex &&
        rowText == other.rowText &&
        listEquality.equals(rowOptions, other.rowOptions) &&
        rowHasUrl == other.rowHasUrl &&
        rowUrl == other.rowUrl &&
        rowUrlDescription == other.rowUrlDescription;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [rowIndex, rowText, rowOptions, rowHasUrl, rowUrl, rowUrlDescription]);
}

ClicknoteRowStruct createClicknoteRowStruct({
  int? rowIndex,
  String? rowText,
  bool? rowHasUrl,
  String? rowUrl,
  String? rowUrlDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClicknoteRowStruct(
      rowIndex: rowIndex,
      rowText: rowText,
      rowHasUrl: rowHasUrl,
      rowUrl: rowUrl,
      rowUrlDescription: rowUrlDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClicknoteRowStruct? updateClicknoteRowStruct(
  ClicknoteRowStruct? clicknoteRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clicknoteRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClicknoteRowStructData(
  Map<String, dynamic> firestoreData,
  ClicknoteRowStruct? clicknoteRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clicknoteRow == null) {
    return;
  }
  if (clicknoteRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clicknoteRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clicknoteRowData =
      getClicknoteRowFirestoreData(clicknoteRow, forFieldValue);
  final nestedData =
      clicknoteRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clicknoteRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClicknoteRowFirestoreData(
  ClicknoteRowStruct? clicknoteRow, [
  bool forFieldValue = false,
]) {
  if (clicknoteRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clicknoteRow.toMap());

  // Add any Firestore field values
  clicknoteRow.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClicknoteRowListFirestoreData(
  List<ClicknoteRowStruct>? clicknoteRows,
) =>
    clicknoteRows?.map((e) => getClicknoteRowFirestoreData(e, true)).toList() ??
    [];
