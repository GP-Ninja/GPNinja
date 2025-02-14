// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuestionsAttemptedStruct extends FFFirebaseStruct {
  QuestionsAttemptedStruct({
    DocumentReference? questionId,
    int? userCorrect,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questionId = questionId,
        _userCorrect = userCorrect,
        super(firestoreUtilData);

  // "question_id" field.
  DocumentReference? _questionId;
  DocumentReference? get questionId => _questionId;
  set questionId(DocumentReference? val) => _questionId = val;

  bool hasQuestionId() => _questionId != null;

  // "user_correct" field.
  int? _userCorrect;
  int get userCorrect => _userCorrect ?? 0;
  set userCorrect(int? val) => _userCorrect = val;

  void incrementUserCorrect(int amount) => userCorrect = userCorrect + amount;

  bool hasUserCorrect() => _userCorrect != null;

  static QuestionsAttemptedStruct fromMap(Map<String, dynamic> data) =>
      QuestionsAttemptedStruct(
        questionId: data['question_id'] as DocumentReference?,
        userCorrect: castToType<int>(data['user_correct']),
      );

  static QuestionsAttemptedStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionsAttemptedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question_id': _questionId,
        'user_correct': _userCorrect,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question_id': serializeParam(
          _questionId,
          ParamType.DocumentReference,
        ),
        'user_correct': serializeParam(
          _userCorrect,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionsAttemptedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      QuestionsAttemptedStruct(
        questionId: deserializeParam(
          data['question_id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['questions'],
        ),
        userCorrect: deserializeParam(
          data['user_correct'],
          ParamType.int,
          false,
        ),
      );

  static QuestionsAttemptedStruct fromAlgoliaData(Map<String, dynamic> data) =>
      QuestionsAttemptedStruct(
        questionId: convertAlgoliaParam(
          data['question_id'],
          ParamType.DocumentReference,
          false,
        ),
        userCorrect: convertAlgoliaParam(
          data['user_correct'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'QuestionsAttemptedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionsAttemptedStruct &&
        questionId == other.questionId &&
        userCorrect == other.userCorrect;
  }

  @override
  int get hashCode => const ListEquality().hash([questionId, userCorrect]);
}

QuestionsAttemptedStruct createQuestionsAttemptedStruct({
  DocumentReference? questionId,
  int? userCorrect,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionsAttemptedStruct(
      questionId: questionId,
      userCorrect: userCorrect,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionsAttemptedStruct? updateQuestionsAttemptedStruct(
  QuestionsAttemptedStruct? questionsAttempted, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionsAttempted
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionsAttemptedStructData(
  Map<String, dynamic> firestoreData,
  QuestionsAttemptedStruct? questionsAttempted,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionsAttempted == null) {
    return;
  }
  if (questionsAttempted.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questionsAttempted.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionsAttemptedData =
      getQuestionsAttemptedFirestoreData(questionsAttempted, forFieldValue);
  final nestedData =
      questionsAttemptedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      questionsAttempted.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionsAttemptedFirestoreData(
  QuestionsAttemptedStruct? questionsAttempted, [
  bool forFieldValue = false,
]) {
  if (questionsAttempted == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionsAttempted.toMap());

  // Add any Firestore field values
  questionsAttempted.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionsAttemptedListFirestoreData(
  List<QuestionsAttemptedStruct>? questionsAttempteds,
) =>
    questionsAttempteds
        ?.map((e) => getQuestionsAttemptedFirestoreData(e, true))
        .toList() ??
    [];
