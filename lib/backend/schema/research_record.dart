import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResearchRecord extends FirestoreRecord {
  ResearchRecord._(
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

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _url = snapshotData['url'] as String?;
    _logo = snapshotData['logo'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('research');

  static Stream<ResearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResearchRecord.fromSnapshot(s));

  static Future<ResearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResearchRecord.fromSnapshot(s));

  static ResearchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResearchRecordData({
  String? title,
  String? description,
  String? url,
  String? logo,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'url': url,
      'logo': logo,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResearchRecordDocumentEquality implements Equality<ResearchRecord> {
  const ResearchRecordDocumentEquality();

  @override
  bool equals(ResearchRecord? e1, ResearchRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.url == e2?.url &&
        e1?.logo == e2?.logo &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ResearchRecord? e) => const ListEquality()
      .hash([e?.title, e?.description, e?.url, e?.logo, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ResearchRecord;
}
