import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ICBResourcesRecord extends FirestoreRecord {
  ICBResourcesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "search_url" field.
  String? _searchUrl;
  String get searchUrl => _searchUrl ?? '';
  bool hasSearchUrl() => _searchUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _url = snapshotData['url'] as String?;
    _searchUrl = snapshotData['search_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ICB_resources')
          : FirebaseFirestore.instance.collectionGroup('ICB_resources');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ICB_resources').doc(id);

  static Stream<ICBResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ICBResourcesRecord.fromSnapshot(s));

  static Future<ICBResourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ICBResourcesRecord.fromSnapshot(s));

  static ICBResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ICBResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ICBResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ICBResourcesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ICBResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ICBResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createICBResourcesRecordData({
  String? description,
  String? url,
  String? searchUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'url': url,
      'search_url': searchUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ICBResourcesRecordDocumentEquality
    implements Equality<ICBResourcesRecord> {
  const ICBResourcesRecordDocumentEquality();

  @override
  bool equals(ICBResourcesRecord? e1, ICBResourcesRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.url == e2?.url &&
        e1?.searchUrl == e2?.searchUrl;
  }

  @override
  int hash(ICBResourcesRecord? e) =>
      const ListEquality().hash([e?.description, e?.url, e?.searchUrl]);

  @override
  bool isValidKey(Object? o) => o is ICBResourcesRecord;
}
