import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommonPasswordsRecord extends FirestoreRecord {
  CommonPasswordsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "passwords" field.
  List<String>? _passwords;
  List<String> get passwords => _passwords ?? const [];
  bool hasPasswords() => _passwords != null;

  void _initializeFields() {
    _passwords = getDataList(snapshotData['passwords']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('common_passwords');

  static Stream<CommonPasswordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommonPasswordsRecord.fromSnapshot(s));

  static Future<CommonPasswordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommonPasswordsRecord.fromSnapshot(s));

  static CommonPasswordsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommonPasswordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommonPasswordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommonPasswordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommonPasswordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommonPasswordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommonPasswordsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CommonPasswordsRecordDocumentEquality
    implements Equality<CommonPasswordsRecord> {
  const CommonPasswordsRecordDocumentEquality();

  @override
  bool equals(CommonPasswordsRecord? e1, CommonPasswordsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.passwords, e2?.passwords);
  }

  @override
  int hash(CommonPasswordsRecord? e) =>
      const ListEquality().hash([e?.passwords]);

  @override
  bool isValidKey(Object? o) => o is CommonPasswordsRecord;
}
