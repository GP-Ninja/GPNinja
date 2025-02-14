import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CpdCalendarRecord extends FirestoreRecord {
  CpdCalendarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "organisation" field.
  String? _organisation;
  String get organisation => _organisation ?? '';
  bool hasOrganisation() => _organisation != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _organisation = snapshotData['organisation'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cpd_calendar');

  static Stream<CpdCalendarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CpdCalendarRecord.fromSnapshot(s));

  static Future<CpdCalendarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CpdCalendarRecord.fromSnapshot(s));

  static CpdCalendarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CpdCalendarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CpdCalendarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CpdCalendarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CpdCalendarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CpdCalendarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCpdCalendarRecordData({
  String? organisation,
  String? title,
  String? description,
  DateTime? date,
  double? price,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'organisation': organisation,
      'title': title,
      'description': description,
      'date': date,
      'price': price,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class CpdCalendarRecordDocumentEquality implements Equality<CpdCalendarRecord> {
  const CpdCalendarRecordDocumentEquality();

  @override
  bool equals(CpdCalendarRecord? e1, CpdCalendarRecord? e2) {
    return e1?.organisation == e2?.organisation &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.price == e2?.price &&
        e1?.url == e2?.url;
  }

  @override
  int hash(CpdCalendarRecord? e) => const ListEquality().hash(
      [e?.organisation, e?.title, e?.description, e?.date, e?.price, e?.url]);

  @override
  bool isValidKey(Object? o) => o is CpdCalendarRecord;
}
