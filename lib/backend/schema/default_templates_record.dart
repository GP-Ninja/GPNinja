import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DefaultTemplatesRecord extends FirestoreRecord {
  DefaultTemplatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "templateName" field.
  String? _templateName;
  String get templateName => _templateName ?? '';
  bool hasTemplateName() => _templateName != null;

  // "templateIcon" field.
  String? _templateIcon;
  String get templateIcon => _templateIcon ?? '';
  bool hasTemplateIcon() => _templateIcon != null;

  void _initializeFields() {
    _templateName = snapshotData['templateName'] as String?;
    _templateIcon = snapshotData['templateIcon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('defaultTemplates');

  static Stream<DefaultTemplatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DefaultTemplatesRecord.fromSnapshot(s));

  static Future<DefaultTemplatesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DefaultTemplatesRecord.fromSnapshot(s));

  static DefaultTemplatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DefaultTemplatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DefaultTemplatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DefaultTemplatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DefaultTemplatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DefaultTemplatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDefaultTemplatesRecordData({
  String? templateName,
  String? templateIcon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'templateName': templateName,
      'templateIcon': templateIcon,
    }.withoutNulls,
  );

  return firestoreData;
}

class DefaultTemplatesRecordDocumentEquality
    implements Equality<DefaultTemplatesRecord> {
  const DefaultTemplatesRecordDocumentEquality();

  @override
  bool equals(DefaultTemplatesRecord? e1, DefaultTemplatesRecord? e2) {
    return e1?.templateName == e2?.templateName &&
        e1?.templateIcon == e2?.templateIcon;
  }

  @override
  int hash(DefaultTemplatesRecord? e) =>
      const ListEquality().hash([e?.templateName, e?.templateIcon]);

  @override
  bool isValidKey(Object? o) => o is DefaultTemplatesRecord;
}
