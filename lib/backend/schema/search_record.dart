import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchRecord extends FirestoreRecord {
  SearchRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "search_term" field.
  String? _searchTerm;
  String get searchTerm => _searchTerm ?? '';
  bool hasSearchTerm() => _searchTerm != null;

  // "search_time" field.
  DateTime? _searchTime;
  DateTime? get searchTime => _searchTime;
  bool hasSearchTime() => _searchTime != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "search_results" field.
  List<DocumentReference>? _searchResults;
  List<DocumentReference> get searchResults => _searchResults ?? const [];
  bool hasSearchResults() => _searchResults != null;

  void _initializeFields() {
    _searchTerm = snapshotData['search_term'] as String?;
    _searchTime = snapshotData['search_time'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _searchResults = getDataList(snapshotData['search_results']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search');

  static Stream<SearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchRecord.fromSnapshot(s));

  static Future<SearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchRecord.fromSnapshot(s));

  static SearchRecord fromSnapshot(DocumentSnapshot snapshot) => SearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchRecordData({
  String? searchTerm,
  DateTime? searchTime,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'search_term': searchTerm,
      'search_time': searchTime,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchRecordDocumentEquality implements Equality<SearchRecord> {
  const SearchRecordDocumentEquality();

  @override
  bool equals(SearchRecord? e1, SearchRecord? e2) {
    const listEquality = ListEquality();
    return e1?.searchTerm == e2?.searchTerm &&
        e1?.searchTime == e2?.searchTime &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.searchResults, e2?.searchResults);
  }

  @override
  int hash(SearchRecord? e) => const ListEquality()
      .hash([e?.searchTerm, e?.searchTime, e?.user, e?.searchResults]);

  @override
  bool isValidKey(Object? o) => o is SearchRecord;
}
