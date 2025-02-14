import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromptRecord extends FirestoreRecord {
  PromptRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  bool hasPrompt() => _prompt != null;

  // "promptNumber" field.
  int? _promptNumber;
  int get promptNumber => _promptNumber ?? 0;
  bool hasPromptNumber() => _promptNumber != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userName = snapshotData['userName'] as String?;
    _prompt = snapshotData['prompt'] as String?;
    _promptNumber = castToType<int>(snapshotData['promptNumber']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prompt');

  static Stream<PromptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromptRecord.fromSnapshot(s));

  static Future<PromptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromptRecord.fromSnapshot(s));

  static PromptRecord fromSnapshot(DocumentSnapshot snapshot) => PromptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromptRecordData({
  DocumentReference? userRef,
  String? userName,
  String? prompt,
  int? promptNumber,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'userName': userName,
      'prompt': prompt,
      'promptNumber': promptNumber,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromptRecordDocumentEquality implements Equality<PromptRecord> {
  const PromptRecordDocumentEquality();

  @override
  bool equals(PromptRecord? e1, PromptRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.prompt == e2?.prompt &&
        e1?.promptNumber == e2?.promptNumber &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(PromptRecord? e) => const ListEquality().hash(
      [e?.userRef, e?.userName, e?.prompt, e?.promptNumber, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is PromptRecord;
}
