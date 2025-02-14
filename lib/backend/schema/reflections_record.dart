import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReflectionsRecord extends FirestoreRecord {
  ReflectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "clinical_case" field.
  String? _clinicalCase;
  String get clinicalCase => _clinicalCase ?? '';
  bool hasClinicalCase() => _clinicalCase != null;

  // "capability_1" field.
  String? _capability1;
  String get capability1 => _capability1 ?? '';
  bool hasCapability1() => _capability1 != null;

  // "capability_2" field.
  String? _capability2;
  String get capability2 => _capability2 ?? '';
  bool hasCapability2() => _capability2 != null;

  // "capability_3" field.
  String? _capability3;
  String get capability3 => _capability3 ?? '';
  bool hasCapability3() => _capability3 != null;

  // "all_capabilities" field.
  List<String>? _allCapabilities;
  List<String> get allCapabilities => _allCapabilities ?? const [];
  bool hasAllCapabilities() => _allCapabilities != null;

  // "capability_1_output" field.
  String? _capability1Output;
  String get capability1Output => _capability1Output ?? '';
  bool hasCapability1Output() => _capability1Output != null;

  // "capability_2_output" field.
  String? _capability2Output;
  String get capability2Output => _capability2Output ?? '';
  bool hasCapability2Output() => _capability2Output != null;

  // "capability_3_output" field.
  String? _capability3Output;
  String get capability3Output => _capability3Output ?? '';
  bool hasCapability3Output() => _capability3Output != null;

  // "reflection_output" field.
  String? _reflectionOutput;
  String get reflectionOutput => _reflectionOutput ?? '';
  bool hasReflectionOutput() => _reflectionOutput != null;

  // "learning_output" field.
  String? _learningOutput;
  String get learningOutput => _learningOutput ?? '';
  bool hasLearningOutput() => _learningOutput != null;

  // "added_to_portfolio" field.
  bool? _addedToPortfolio;
  bool get addedToPortfolio => _addedToPortfolio ?? false;
  bool hasAddedToPortfolio() => _addedToPortfolio != null;

  // "date_added_to_portfolio" field.
  DateTime? _dateAddedToPortfolio;
  DateTime? get dateAddedToPortfolio => _dateAddedToPortfolio;
  bool hasDateAddedToPortfolio() => _dateAddedToPortfolio != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "user_review" field.
  String? _userReview;
  String get userReview => _userReview ?? '';
  bool hasUserReview() => _userReview != null;

  // "user_rating" field.
  double? _userRating;
  double get userRating => _userRating ?? 0.0;
  bool hasUserRating() => _userRating != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "data_note" field.
  String? _dataNote;
  String get dataNote => _dataNote ?? '';
  bool hasDataNote() => _dataNote != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _clinicalCase = snapshotData['clinical_case'] as String?;
    _capability1 = snapshotData['capability_1'] as String?;
    _capability2 = snapshotData['capability_2'] as String?;
    _capability3 = snapshotData['capability_3'] as String?;
    _allCapabilities = getDataList(snapshotData['all_capabilities']);
    _capability1Output = snapshotData['capability_1_output'] as String?;
    _capability2Output = snapshotData['capability_2_output'] as String?;
    _capability3Output = snapshotData['capability_3_output'] as String?;
    _reflectionOutput = snapshotData['reflection_output'] as String?;
    _learningOutput = snapshotData['learning_output'] as String?;
    _addedToPortfolio = snapshotData['added_to_portfolio'] as bool?;
    _dateAddedToPortfolio =
        snapshotData['date_added_to_portfolio'] as DateTime?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _userReview = snapshotData['user_review'] as String?;
    _userRating = castToType<double>(snapshotData['user_rating']);
    _name = snapshotData['name'] as String?;
    _dataNote = snapshotData['data_note'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reflections');

  static Stream<ReflectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReflectionsRecord.fromSnapshot(s));

  static Future<ReflectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReflectionsRecord.fromSnapshot(s));

  static ReflectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReflectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReflectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReflectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReflectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReflectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReflectionsRecordData({
  DocumentReference? user,
  String? clinicalCase,
  String? capability1,
  String? capability2,
  String? capability3,
  String? capability1Output,
  String? capability2Output,
  String? capability3Output,
  String? reflectionOutput,
  String? learningOutput,
  bool? addedToPortfolio,
  DateTime? dateAddedToPortfolio,
  DateTime? dateCreated,
  String? userReview,
  double? userRating,
  String? name,
  String? dataNote,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'clinical_case': clinicalCase,
      'capability_1': capability1,
      'capability_2': capability2,
      'capability_3': capability3,
      'capability_1_output': capability1Output,
      'capability_2_output': capability2Output,
      'capability_3_output': capability3Output,
      'reflection_output': reflectionOutput,
      'learning_output': learningOutput,
      'added_to_portfolio': addedToPortfolio,
      'date_added_to_portfolio': dateAddedToPortfolio,
      'date_created': dateCreated,
      'user_review': userReview,
      'user_rating': userRating,
      'name': name,
      'data_note': dataNote,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReflectionsRecordDocumentEquality implements Equality<ReflectionsRecord> {
  const ReflectionsRecordDocumentEquality();

  @override
  bool equals(ReflectionsRecord? e1, ReflectionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.clinicalCase == e2?.clinicalCase &&
        e1?.capability1 == e2?.capability1 &&
        e1?.capability2 == e2?.capability2 &&
        e1?.capability3 == e2?.capability3 &&
        listEquality.equals(e1?.allCapabilities, e2?.allCapabilities) &&
        e1?.capability1Output == e2?.capability1Output &&
        e1?.capability2Output == e2?.capability2Output &&
        e1?.capability3Output == e2?.capability3Output &&
        e1?.reflectionOutput == e2?.reflectionOutput &&
        e1?.learningOutput == e2?.learningOutput &&
        e1?.addedToPortfolio == e2?.addedToPortfolio &&
        e1?.dateAddedToPortfolio == e2?.dateAddedToPortfolio &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.userReview == e2?.userReview &&
        e1?.userRating == e2?.userRating &&
        e1?.name == e2?.name &&
        e1?.dataNote == e2?.dataNote;
  }

  @override
  int hash(ReflectionsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.clinicalCase,
        e?.capability1,
        e?.capability2,
        e?.capability3,
        e?.allCapabilities,
        e?.capability1Output,
        e?.capability2Output,
        e?.capability3Output,
        e?.reflectionOutput,
        e?.learningOutput,
        e?.addedToPortfolio,
        e?.dateAddedToPortfolio,
        e?.dateCreated,
        e?.userReview,
        e?.userRating,
        e?.name,
        e?.dataNote
      ]);

  @override
  bool isValidKey(Object? o) => o is ReflectionsRecord;
}
