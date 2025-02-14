import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateV2Record extends FirestoreRecord {
  TemplateV2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "template_name" field.
  String? _templateName;
  String get templateName => _templateName ?? '';
  bool hasTemplateName() => _templateName != null;

  // "template_icon" field.
  String? _templateIcon;
  String get templateIcon => _templateIcon ?? '';
  bool hasTemplateIcon() => _templateIcon != null;

  void _initializeFields() {
    _templateName = snapshotData['template_name'] as String?;
    _templateIcon = snapshotData['template_icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('templateV2');

  static Stream<TemplateV2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateV2Record.fromSnapshot(s));

  static Future<TemplateV2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplateV2Record.fromSnapshot(s));

  static TemplateV2Record fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateV2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateV2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateV2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateV2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateV2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateV2RecordData({
  String? templateName,
  String? templateIcon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'template_name': templateName,
      'template_icon': templateIcon,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateV2RecordDocumentEquality implements Equality<TemplateV2Record> {
  const TemplateV2RecordDocumentEquality();

  @override
  bool equals(TemplateV2Record? e1, TemplateV2Record? e2) {
    return e1?.templateName == e2?.templateName &&
        e1?.templateIcon == e2?.templateIcon;
  }

  @override
  int hash(TemplateV2Record? e) =>
      const ListEquality().hash([e?.templateName, e?.templateIcon]);

  @override
  bool isValidKey(Object? o) => o is TemplateV2Record;
}
