import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserResponsesRecord extends FirestoreRecord {
  UserResponsesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "question_id" field.
  DocumentReference? _questionId;
  DocumentReference? get questionId => _questionId;
  bool hasQuestionId() => _questionId != null;

  // "option_selected" field.
  String? _optionSelected;
  String get optionSelected => _optionSelected ?? '';
  bool hasOptionSelected() => _optionSelected != null;

  // "option_correct" field.
  bool? _optionCorrect;
  bool get optionCorrect => _optionCorrect ?? false;
  bool hasOptionCorrect() => _optionCorrect != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _questionId = snapshotData['question_id'] as DocumentReference?;
    _optionSelected = snapshotData['option_selected'] as String?;
    _optionCorrect = snapshotData['option_correct'] as bool?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_responses');

  static Stream<UserResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserResponsesRecord.fromSnapshot(s));

  static Future<UserResponsesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserResponsesRecord.fromSnapshot(s));

  static UserResponsesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserResponsesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserResponsesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserResponsesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserResponsesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserResponsesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserResponsesRecordData({
  DocumentReference? userId,
  DocumentReference? questionId,
  String? optionSelected,
  bool? optionCorrect,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'question_id': questionId,
      'option_selected': optionSelected,
      'option_correct': optionCorrect,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserResponsesRecordDocumentEquality
    implements Equality<UserResponsesRecord> {
  const UserResponsesRecordDocumentEquality();

  @override
  bool equals(UserResponsesRecord? e1, UserResponsesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.questionId == e2?.questionId &&
        e1?.optionSelected == e2?.optionSelected &&
        e1?.optionCorrect == e2?.optionCorrect &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(UserResponsesRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.questionId,
        e?.optionSelected,
        e?.optionCorrect,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is UserResponsesRecord;
}
