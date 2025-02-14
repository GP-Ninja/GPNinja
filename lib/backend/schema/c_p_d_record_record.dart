import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CPDRecordRecord extends FirestoreRecord {
  CPDRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "learning" field.
  String? _learning;
  String get learning => _learning ?? '';
  bool hasLearning() => _learning != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "uploaded_file" field.
  String? _uploadedFile;
  String get uploadedFile => _uploadedFile ?? '';
  bool hasUploadedFile() => _uploadedFile != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _duration = castToType<double>(snapshotData['duration']);
    _notes = snapshotData['notes'] as String?;
    _learning = snapshotData['learning'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _url = snapshotData['url'] as String?;
    _source = snapshotData['source'] as String?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _uploadedFile = snapshotData['uploaded_file'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CPD_record');

  static Stream<CPDRecordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CPDRecordRecord.fromSnapshot(s));

  static Future<CPDRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CPDRecordRecord.fromSnapshot(s));

  static CPDRecordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CPDRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CPDRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CPDRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CPDRecordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CPDRecordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCPDRecordRecordData({
  String? title,
  DateTime? date,
  double? duration,
  String? notes,
  String? learning,
  DocumentReference? user,
  String? url,
  String? source,
  DateTime? endDate,
  String? uploadedFile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'date': date,
      'duration': duration,
      'notes': notes,
      'learning': learning,
      'user': user,
      'url': url,
      'source': source,
      'end_date': endDate,
      'uploaded_file': uploadedFile,
    }.withoutNulls,
  );

  return firestoreData;
}

class CPDRecordRecordDocumentEquality implements Equality<CPDRecordRecord> {
  const CPDRecordRecordDocumentEquality();

  @override
  bool equals(CPDRecordRecord? e1, CPDRecordRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.date == e2?.date &&
        e1?.duration == e2?.duration &&
        e1?.notes == e2?.notes &&
        e1?.learning == e2?.learning &&
        e1?.user == e2?.user &&
        e1?.url == e2?.url &&
        e1?.source == e2?.source &&
        e1?.endDate == e2?.endDate &&
        e1?.uploadedFile == e2?.uploadedFile;
  }

  @override
  int hash(CPDRecordRecord? e) => const ListEquality().hash([
        e?.title,
        e?.date,
        e?.duration,
        e?.notes,
        e?.learning,
        e?.user,
        e?.url,
        e?.source,
        e?.endDate,
        e?.uploadedFile
      ]);

  @override
  bool isValidKey(Object? o) => o is CPDRecordRecord;
}
