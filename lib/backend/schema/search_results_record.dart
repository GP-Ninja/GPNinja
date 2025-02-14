import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchResultsRecord extends FirestoreRecord {
  SearchResultsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "result_heading" field.
  String? _resultHeading;
  String get resultHeading => _resultHeading ?? '';
  bool hasResultHeading() => _resultHeading != null;

  // "result_description" field.
  String? _resultDescription;
  String get resultDescription => _resultDescription ?? '';
  bool hasResultDescription() => _resultDescription != null;

  // "result_link" field.
  String? _resultLink;
  String get resultLink => _resultLink ?? '';
  bool hasResultLink() => _resultLink != null;

  // "result_time" field.
  DateTime? _resultTime;
  DateTime? get resultTime => _resultTime;
  bool hasResultTime() => _resultTime != null;

  // "result_user" field.
  DocumentReference? _resultUser;
  DocumentReference? get resultUser => _resultUser;
  bool hasResultUser() => _resultUser != null;

  // "times_accessed" field.
  int? _timesAccessed;
  int get timesAccessed => _timesAccessed ?? 0;
  bool hasTimesAccessed() => _timesAccessed != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  void _initializeFields() {
    _resultHeading = snapshotData['result_heading'] as String?;
    _resultDescription = snapshotData['result_description'] as String?;
    _resultLink = snapshotData['result_link'] as String?;
    _resultTime = snapshotData['result_time'] as DateTime?;
    _resultUser = snapshotData['result_user'] as DocumentReference?;
    _timesAccessed = castToType<int>(snapshotData['times_accessed']);
    _source = snapshotData['source'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search_results');

  static Stream<SearchResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchResultsRecord.fromSnapshot(s));

  static Future<SearchResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchResultsRecord.fromSnapshot(s));

  static SearchResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchResultsRecordData({
  String? resultHeading,
  String? resultDescription,
  String? resultLink,
  DateTime? resultTime,
  DocumentReference? resultUser,
  int? timesAccessed,
  String? source,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'result_heading': resultHeading,
      'result_description': resultDescription,
      'result_link': resultLink,
      'result_time': resultTime,
      'result_user': resultUser,
      'times_accessed': timesAccessed,
      'source': source,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchResultsRecordDocumentEquality
    implements Equality<SearchResultsRecord> {
  const SearchResultsRecordDocumentEquality();

  @override
  bool equals(SearchResultsRecord? e1, SearchResultsRecord? e2) {
    return e1?.resultHeading == e2?.resultHeading &&
        e1?.resultDescription == e2?.resultDescription &&
        e1?.resultLink == e2?.resultLink &&
        e1?.resultTime == e2?.resultTime &&
        e1?.resultUser == e2?.resultUser &&
        e1?.timesAccessed == e2?.timesAccessed &&
        e1?.source == e2?.source;
  }

  @override
  int hash(SearchResultsRecord? e) => const ListEquality().hash([
        e?.resultHeading,
        e?.resultDescription,
        e?.resultLink,
        e?.resultTime,
        e?.resultUser,
        e?.timesAccessed,
        e?.source
      ]);

  @override
  bool isValidKey(Object? o) => o is SearchResultsRecord;
}
