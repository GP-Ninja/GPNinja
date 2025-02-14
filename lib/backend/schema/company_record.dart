import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "companyUsers" field.
  List<DocumentReference>? _companyUsers;
  List<DocumentReference> get companyUsers => _companyUsers ?? const [];
  bool hasCompanyUsers() => _companyUsers != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _website = snapshotData['website'] as String?;
    _logo = snapshotData['logo'] as String?;
    _companyUsers = getDataList(snapshotData['companyUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  String? name,
  String? description,
  String? website,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'website': website,
      'logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.website == e2?.website &&
        e1?.logo == e2?.logo &&
        listEquality.equals(e1?.companyUsers, e2?.companyUsers);
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.website, e?.logo, e?.companyUsers]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
