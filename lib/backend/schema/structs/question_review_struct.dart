// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuestionReviewStruct extends FFFirebaseStruct {
  QuestionReviewStruct({
    DocumentReference? questionId,
    int? index,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questionId = questionId,
        _index = index,
        super(firestoreUtilData);

  // "question_id" field.
  DocumentReference? _questionId;
  DocumentReference? get questionId => _questionId;
  set questionId(DocumentReference? val) => _questionId = val;

  bool hasQuestionId() => _questionId != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static QuestionReviewStruct fromMap(Map<String, dynamic> data) =>
      QuestionReviewStruct(
        questionId: data['question_id'] as DocumentReference?,
        index: castToType<int>(data['index']),
      );

  static QuestionReviewStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionReviewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question_id': _questionId,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question_id': serializeParam(
          _questionId,
          ParamType.DocumentReference,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionReviewStruct(
        questionId: deserializeParam(
          data['question_id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['questions'],
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  static QuestionReviewStruct fromAlgoliaData(Map<String, dynamic> data) =>
      QuestionReviewStruct(
        questionId: convertAlgoliaParam(
          data['question_id'],
          ParamType.DocumentReference,
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
  String toString() => 'QuestionReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionReviewStruct &&
        questionId == other.questionId &&
        index == other.index;
  }

  @override
  int get hashCode => const ListEquality().hash([questionId, index]);
}

QuestionReviewStruct createQuestionReviewStruct({
  DocumentReference? questionId,
  int? index,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionReviewStruct(
      questionId: questionId,
      index: index,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionReviewStruct? updateQuestionReviewStruct(
  QuestionReviewStruct? questionReview, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionReview
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionReviewStructData(
  Map<String, dynamic> firestoreData,
  QuestionReviewStruct? questionReview,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionReview == null) {
    return;
  }
  if (questionReview.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questionReview.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionReviewData =
      getQuestionReviewFirestoreData(questionReview, forFieldValue);
  final nestedData =
      questionReviewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questionReview.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionReviewFirestoreData(
  QuestionReviewStruct? questionReview, [
  bool forFieldValue = false,
]) {
  if (questionReview == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionReview.toMap());

  // Add any Firestore field values
  questionReview.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionReviewListFirestoreData(
  List<QuestionReviewStruct>? questionReviews,
) =>
    questionReviews
        ?.map((e) => getQuestionReviewFirestoreData(e, true))
        .toList() ??
    [];
