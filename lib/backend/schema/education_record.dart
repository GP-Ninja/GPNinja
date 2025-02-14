import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationRecord extends FirestoreRecord {
  EducationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "clicks" field.
  int? _clicks;
  int get clicks => _clicks ?? 0;
  bool hasClicks() => _clicks != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _url = snapshotData['url'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _logo = snapshotData['logo'] as String?;
    _source = snapshotData['source'] as String?;
    _clicks = castToType<int>(snapshotData['clicks']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('education');

  static Stream<EducationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducationRecord.fromSnapshot(s));

  static Future<EducationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducationRecord.fromSnapshot(s));

  static EducationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationRecordData({
  String? title,
  String? description,
  String? url,
  DateTime? date,
  String? logo,
  String? source,
  int? clicks,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'url': url,
      'date': date,
      'logo': logo,
      'source': source,
      'clicks': clicks,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducationRecordDocumentEquality implements Equality<EducationRecord> {
  const EducationRecordDocumentEquality();

  @override
  bool equals(EducationRecord? e1, EducationRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.url == e2?.url &&
        e1?.date == e2?.date &&
        e1?.logo == e2?.logo &&
        e1?.source == e2?.source &&
        e1?.clicks == e2?.clicks;
  }

  @override
  int hash(EducationRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.url,
        e?.date,
        e?.logo,
        e?.source,
        e?.clicks
      ]);

  @override
  bool isValidKey(Object? o) => o is EducationRecord;
}
