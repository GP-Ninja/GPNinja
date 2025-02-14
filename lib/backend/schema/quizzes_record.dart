import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizzesRecord extends FirestoreRecord {
  QuizzesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "results" field.
  List<DocumentReference>? _results;
  List<DocumentReference> get results => _results ?? const [];
  bool hasResults() => _results != null;

  // "usersList" field.
  List<DocumentReference>? _usersList;
  List<DocumentReference> get usersList => _usersList ?? const [];
  bool hasUsersList() => _usersList != null;

  // "quizName" field.
  String? _quizName;
  String get quizName => _quizName ?? '';
  bool hasQuizName() => _quizName != null;

  // "quizDescription" field.
  String? _quizDescription;
  String get quizDescription => _quizDescription ?? '';
  bool hasQuizDescription() => _quizDescription != null;

  // "numberQuestions" field.
  int? _numberQuestions;
  int get numberQuestions => _numberQuestions ?? 0;
  bool hasNumberQuestions() => _numberQuestions != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "lastModifiedAt" field.
  DateTime? _lastModifiedAt;
  DateTime? get lastModifiedAt => _lastModifiedAt;
  bool hasLastModifiedAt() => _lastModifiedAt != null;

  // "teamMembers" field.
  List<DocumentReference>? _teamMembers;
  List<DocumentReference> get teamMembers => _teamMembers ?? const [];
  bool hasTeamMembers() => _teamMembers != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "listQuestions" field.
  List<DocumentReference>? _listQuestions;
  List<DocumentReference> get listQuestions => _listQuestions ?? const [];
  bool hasListQuestions() => _listQuestions != null;

  // "totalPoints" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _results = getDataList(snapshotData['results']);
    _usersList = getDataList(snapshotData['usersList']);
    _quizName = snapshotData['quizName'] as String?;
    _quizDescription = snapshotData['quizDescription'] as String?;
    _numberQuestions = castToType<int>(snapshotData['numberQuestions']);
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _lastModifiedAt = snapshotData['lastModifiedAt'] as DateTime?;
    _teamMembers = getDataList(snapshotData['teamMembers']);
    _status = snapshotData['status'] as String?;
    _listQuestions = getDataList(snapshotData['listQuestions']);
    _totalPoints = castToType<int>(snapshotData['totalPoints']);
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizzes');

  static Stream<QuizzesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizzesRecord.fromSnapshot(s));

  static Future<QuizzesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizzesRecord.fromSnapshot(s));

  static QuizzesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizzesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizzesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizzesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizzesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizzesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizzesRecordData({
  String? quizName,
  String? quizDescription,
  int? numberQuestions,
  DocumentReference? createdBy,
  DateTime? createdAt,
  DateTime? lastModifiedAt,
  String? status,
  int? totalPoints,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quizName': quizName,
      'quizDescription': quizDescription,
      'numberQuestions': numberQuestions,
      'createdBy': createdBy,
      'createdAt': createdAt,
      'lastModifiedAt': lastModifiedAt,
      'status': status,
      'totalPoints': totalPoints,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizzesRecordDocumentEquality implements Equality<QuizzesRecord> {
  const QuizzesRecordDocumentEquality();

  @override
  bool equals(QuizzesRecord? e1, QuizzesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.results, e2?.results) &&
        listEquality.equals(e1?.usersList, e2?.usersList) &&
        e1?.quizName == e2?.quizName &&
        e1?.quizDescription == e2?.quizDescription &&
        e1?.numberQuestions == e2?.numberQuestions &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastModifiedAt == e2?.lastModifiedAt &&
        listEquality.equals(e1?.teamMembers, e2?.teamMembers) &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.listQuestions, e2?.listQuestions) &&
        e1?.totalPoints == e2?.totalPoints &&
        e1?.category == e2?.category;
  }

  @override
  int hash(QuizzesRecord? e) => const ListEquality().hash([
        e?.results,
        e?.usersList,
        e?.quizName,
        e?.quizDescription,
        e?.numberQuestions,
        e?.createdBy,
        e?.createdAt,
        e?.lastModifiedAt,
        e?.teamMembers,
        e?.status,
        e?.listQuestions,
        e?.totalPoints,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizzesRecord;
}
