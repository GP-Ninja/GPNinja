import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestionBoxRecord extends FirestoreRecord {
  SuggestionBoxRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "suggestion_text" field.
  String? _suggestionText;
  String get suggestionText => _suggestionText ?? '';
  bool hasSuggestionText() => _suggestionText != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _suggestionText = snapshotData['suggestion_text'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suggestion_box');

  static Stream<SuggestionBoxRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuggestionBoxRecord.fromSnapshot(s));

  static Future<SuggestionBoxRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuggestionBoxRecord.fromSnapshot(s));

  static SuggestionBoxRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuggestionBoxRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuggestionBoxRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuggestionBoxRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuggestionBoxRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuggestionBoxRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuggestionBoxRecordData({
  String? suggestionText,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'suggestion_text': suggestionText,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuggestionBoxRecordDocumentEquality
    implements Equality<SuggestionBoxRecord> {
  const SuggestionBoxRecordDocumentEquality();

  @override
  bool equals(SuggestionBoxRecord? e1, SuggestionBoxRecord? e2) {
    return e1?.suggestionText == e2?.suggestionText && e1?.time == e2?.time;
  }

  @override
  int hash(SuggestionBoxRecord? e) =>
      const ListEquality().hash([e?.suggestionText, e?.time]);

  @override
  bool isValidKey(Object? o) => o is SuggestionBoxRecord;
}
