import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ICBsRecord extends FirestoreRecord {
  ICBsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ICBs');

  static Stream<ICBsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ICBsRecord.fromSnapshot(s));

  static Future<ICBsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ICBsRecord.fromSnapshot(s));

  static ICBsRecord fromSnapshot(DocumentSnapshot snapshot) => ICBsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ICBsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ICBsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ICBsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ICBsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createICBsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ICBsRecordDocumentEquality implements Equality<ICBsRecord> {
  const ICBsRecordDocumentEquality();

  @override
  bool equals(ICBsRecord? e1, ICBsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(ICBsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is ICBsRecord;
}
