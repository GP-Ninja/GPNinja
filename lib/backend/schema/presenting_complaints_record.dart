import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PresentingComplaintsRecord extends FirestoreRecord {
  PresentingComplaintsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pc" field.
  String? _pc;
  String get pc => _pc ?? '';
  bool hasPc() => _pc != null;

  // "history" field.
  String? _history;
  String get history => _history ?? '';
  bool hasHistory() => _history != null;

  // "exam" field.
  String? _exam;
  String get exam => _exam ?? '';
  bool hasExam() => _exam != null;

  // "impression" field.
  String? _impression;
  String get impression => _impression ?? '';
  bool hasImpression() => _impression != null;

  // "plan" field.
  String? _plan;
  String get plan => _plan ?? '';
  bool hasPlan() => _plan != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "text_message" field.
  String? _textMessage;
  String get textMessage => _textMessage ?? '';
  bool hasTextMessage() => _textMessage != null;

  // "i_note" field.
  DocumentReference? _iNote;
  DocumentReference? get iNote => _iNote;
  bool hasINote() => _iNote != null;

  // "is_safety_net" field.
  bool? _isSafetyNet;
  bool get isSafetyNet => _isSafetyNet ?? false;
  bool hasIsSafetyNet() => _isSafetyNet != null;

  void _initializeFields() {
    _pc = snapshotData['pc'] as String?;
    _history = snapshotData['history'] as String?;
    _exam = snapshotData['exam'] as String?;
    _impression = snapshotData['impression'] as String?;
    _plan = snapshotData['plan'] as String?;
    _notes = snapshotData['notes'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _textMessage = snapshotData['text_message'] as String?;
    _iNote = snapshotData['i_note'] as DocumentReference?;
    _isSafetyNet = snapshotData['is_safety_net'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('presenting_complaints');

  static Stream<PresentingComplaintsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => PresentingComplaintsRecord.fromSnapshot(s));

  static Future<PresentingComplaintsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PresentingComplaintsRecord.fromSnapshot(s));

  static PresentingComplaintsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PresentingComplaintsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PresentingComplaintsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PresentingComplaintsRecord._(reference, mapFromFirestore(data));

  static PresentingComplaintsRecord fromAlgolia(
          AlgoliaObjectSnapshot snapshot) =>
      PresentingComplaintsRecord.getDocumentFromData(
        {
          'pc': snapshot.data['pc'],
          'history': snapshot.data['history'],
          'exam': snapshot.data['exam'],
          'impression': snapshot.data['impression'],
          'plan': snapshot.data['plan'],
          'notes': snapshot.data['notes'],
          'owner': convertAlgoliaParam(
            snapshot.data['owner'],
            ParamType.DocumentReference,
            false,
          ),
          'text_message': snapshot.data['text_message'],
          'i_note': convertAlgoliaParam(
            snapshot.data['i_note'],
            ParamType.DocumentReference,
            false,
          ),
          'is_safety_net': snapshot.data['is_safety_net'],
        },
        PresentingComplaintsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PresentingComplaintsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'presenting_complaints',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'PresentingComplaintsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PresentingComplaintsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPresentingComplaintsRecordData({
  String? pc,
  String? history,
  String? exam,
  String? impression,
  String? plan,
  String? notes,
  DocumentReference? owner,
  String? textMessage,
  DocumentReference? iNote,
  bool? isSafetyNet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pc': pc,
      'history': history,
      'exam': exam,
      'impression': impression,
      'plan': plan,
      'notes': notes,
      'owner': owner,
      'text_message': textMessage,
      'i_note': iNote,
      'is_safety_net': isSafetyNet,
    }.withoutNulls,
  );

  return firestoreData;
}

class PresentingComplaintsRecordDocumentEquality
    implements Equality<PresentingComplaintsRecord> {
  const PresentingComplaintsRecordDocumentEquality();

  @override
  bool equals(PresentingComplaintsRecord? e1, PresentingComplaintsRecord? e2) {
    return e1?.pc == e2?.pc &&
        e1?.history == e2?.history &&
        e1?.exam == e2?.exam &&
        e1?.impression == e2?.impression &&
        e1?.plan == e2?.plan &&
        e1?.notes == e2?.notes &&
        e1?.owner == e2?.owner &&
        e1?.textMessage == e2?.textMessage &&
        e1?.iNote == e2?.iNote &&
        e1?.isSafetyNet == e2?.isSafetyNet;
  }

  @override
  int hash(PresentingComplaintsRecord? e) => const ListEquality().hash([
        e?.pc,
        e?.history,
        e?.exam,
        e?.impression,
        e?.plan,
        e?.notes,
        e?.owner,
        e?.textMessage,
        e?.iNote,
        e?.isSafetyNet
      ]);

  @override
  bool isValidKey(Object? o) => o is PresentingComplaintsRecord;
}
