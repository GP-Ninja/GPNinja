import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsClicksRecord extends FirestoreRecord {
  NewsClicksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "news_title" field.
  String? _newsTitle;
  String get newsTitle => _newsTitle ?? '';
  bool hasNewsTitle() => _newsTitle != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "news_ref" field.
  DocumentReference? _newsRef;
  DocumentReference? get newsRef => _newsRef;
  bool hasNewsRef() => _newsRef != null;

  // "news_source" field.
  String? _newsSource;
  String get newsSource => _newsSource ?? '';
  bool hasNewsSource() => _newsSource != null;

  // "news_link" field.
  String? _newsLink;
  String get newsLink => _newsLink ?? '';
  bool hasNewsLink() => _newsLink != null;

  void _initializeFields() {
    _newsTitle = snapshotData['news_title'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _newsRef = snapshotData['news_ref'] as DocumentReference?;
    _newsSource = snapshotData['news_source'] as String?;
    _newsLink = snapshotData['news_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news_clicks');

  static Stream<NewsClicksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsClicksRecord.fromSnapshot(s));

  static Future<NewsClicksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsClicksRecord.fromSnapshot(s));

  static NewsClicksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewsClicksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsClicksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsClicksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsClicksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsClicksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsClicksRecordData({
  String? newsTitle,
  DocumentReference? userRef,
  DateTime? timestamp,
  DocumentReference? newsRef,
  String? newsSource,
  String? newsLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'news_title': newsTitle,
      'user_ref': userRef,
      'timestamp': timestamp,
      'news_ref': newsRef,
      'news_source': newsSource,
      'news_link': newsLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsClicksRecordDocumentEquality implements Equality<NewsClicksRecord> {
  const NewsClicksRecordDocumentEquality();

  @override
  bool equals(NewsClicksRecord? e1, NewsClicksRecord? e2) {
    return e1?.newsTitle == e2?.newsTitle &&
        e1?.userRef == e2?.userRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.newsRef == e2?.newsRef &&
        e1?.newsSource == e2?.newsSource &&
        e1?.newsLink == e2?.newsLink;
  }

  @override
  int hash(NewsClicksRecord? e) => const ListEquality().hash([
        e?.newsTitle,
        e?.userRef,
        e?.timestamp,
        e?.newsRef,
        e?.newsSource,
        e?.newsLink
      ]);

  @override
  bool isValidKey(Object? o) => o is NewsClicksRecord;
}
