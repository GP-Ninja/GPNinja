import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question_text" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  bool hasQuestionText() => _questionText != null;

  // "correct_option" field.
  String? _correctOption;
  String get correctOption => _correctOption ?? '';
  bool hasCorrectOption() => _correctOption != null;

  // "topics" field.
  List<String>? _topics;
  List<String> get topics => _topics ?? const [];
  bool hasTopics() => _topics != null;

  // "explanation" field.
  String? _explanation;
  String get explanation => _explanation ?? '';
  bool hasExplanation() => _explanation != null;

  // "options" field.
  List<OptionsStruct>? _options;
  List<OptionsStruct> get options => _options ?? const [];
  bool hasOptions() => _options != null;

  // "users_seen" field.
  List<DocumentReference>? _usersSeen;
  List<DocumentReference> get usersSeen => _usersSeen ?? const [];
  bool hasUsersSeen() => _usersSeen != null;

  void _initializeFields() {
    _questionText = snapshotData['question_text'] as String?;
    _correctOption = snapshotData['correct_option'] as String?;
    _topics = getDataList(snapshotData['topics']);
    _explanation = snapshotData['explanation'] as String?;
    _options = getStructList(
      snapshotData['options'],
      OptionsStruct.fromMap,
    );
    _usersSeen = getDataList(snapshotData['users_seen']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  String? questionText,
  String? correctOption,
  String? explanation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question_text': questionText,
      'correct_option': correctOption,
      'explanation': explanation,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.questionText == e2?.questionText &&
        e1?.correctOption == e2?.correctOption &&
        listEquality.equals(e1?.topics, e2?.topics) &&
        e1?.explanation == e2?.explanation &&
        listEquality.equals(e1?.options, e2?.options) &&
        listEquality.equals(e1?.usersSeen, e2?.usersSeen);
  }

  @override
  int hash(QuestionsRecord? e) => const ListEquality().hash([
        e?.questionText,
        e?.correctOption,
        e?.topics,
        e?.explanation,
        e?.options,
        e?.usersSeen
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
