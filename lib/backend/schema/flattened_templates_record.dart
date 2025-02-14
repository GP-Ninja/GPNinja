import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlattenedTemplatesRecord extends FirestoreRecord {
  FlattenedTemplatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "template_name" field.
  String? _templateName;
  String get templateName => _templateName ?? '';
  bool hasTemplateName() => _templateName != null;

  // "template_user" field.
  DocumentReference? _templateUser;
  DocumentReference? get templateUser => _templateUser;
  bool hasTemplateUser() => _templateUser != null;

  // "template_is_published" field.
  bool? _templateIsPublished;
  bool get templateIsPublished => _templateIsPublished ?? false;
  bool hasTemplateIsPublished() => _templateIsPublished != null;

  // "template_is_admin_owned" field.
  bool? _templateIsAdminOwned;
  bool get templateIsAdminOwned => _templateIsAdminOwned ?? false;
  bool hasTemplateIsAdminOwned() => _templateIsAdminOwned != null;

  // "template_is_community_template" field.
  bool? _templateIsCommunityTemplate;
  bool get templateIsCommunityTemplate => _templateIsCommunityTemplate ?? false;
  bool hasTemplateIsCommunityTemplate() => _templateIsCommunityTemplate != null;

  // "template_sections" field.
  List<ClicknoteSectionStruct>? _templateSections;
  List<ClicknoteSectionStruct> get templateSections =>
      _templateSections ?? const [];
  bool hasTemplateSections() => _templateSections != null;

  // "template_icon" field.
  String? _templateIcon;
  String get templateIcon => _templateIcon ?? '';
  bool hasTemplateIcon() => _templateIcon != null;

  // "review_date" field.
  DateTime? _reviewDate;
  DateTime? get reviewDate => _reviewDate;
  bool hasReviewDate() => _reviewDate != null;

  void _initializeFields() {
    _templateName = snapshotData['template_name'] as String?;
    _templateUser = snapshotData['template_user'] as DocumentReference?;
    _templateIsPublished = snapshotData['template_is_published'] as bool?;
    _templateIsAdminOwned = snapshotData['template_is_admin_owned'] as bool?;
    _templateIsCommunityTemplate =
        snapshotData['template_is_community_template'] as bool?;
    _templateSections = getStructList(
      snapshotData['template_sections'],
      ClicknoteSectionStruct.fromMap,
    );
    _templateIcon = snapshotData['template_icon'] as String?;
    _reviewDate = snapshotData['review_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flattened_templates');

  static Stream<FlattenedTemplatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlattenedTemplatesRecord.fromSnapshot(s));

  static Future<FlattenedTemplatesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FlattenedTemplatesRecord.fromSnapshot(s));

  static FlattenedTemplatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlattenedTemplatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlattenedTemplatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlattenedTemplatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlattenedTemplatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlattenedTemplatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlattenedTemplatesRecordData({
  String? templateName,
  DocumentReference? templateUser,
  bool? templateIsPublished,
  bool? templateIsAdminOwned,
  bool? templateIsCommunityTemplate,
  String? templateIcon,
  DateTime? reviewDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'template_name': templateName,
      'template_user': templateUser,
      'template_is_published': templateIsPublished,
      'template_is_admin_owned': templateIsAdminOwned,
      'template_is_community_template': templateIsCommunityTemplate,
      'template_icon': templateIcon,
      'review_date': reviewDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlattenedTemplatesRecordDocumentEquality
    implements Equality<FlattenedTemplatesRecord> {
  const FlattenedTemplatesRecordDocumentEquality();

  @override
  bool equals(FlattenedTemplatesRecord? e1, FlattenedTemplatesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.templateName == e2?.templateName &&
        e1?.templateUser == e2?.templateUser &&
        e1?.templateIsPublished == e2?.templateIsPublished &&
        e1?.templateIsAdminOwned == e2?.templateIsAdminOwned &&
        e1?.templateIsCommunityTemplate == e2?.templateIsCommunityTemplate &&
        listEquality.equals(e1?.templateSections, e2?.templateSections) &&
        e1?.templateIcon == e2?.templateIcon &&
        e1?.reviewDate == e2?.reviewDate;
  }

  @override
  int hash(FlattenedTemplatesRecord? e) => const ListEquality().hash([
        e?.templateName,
        e?.templateUser,
        e?.templateIsPublished,
        e?.templateIsAdminOwned,
        e?.templateIsCommunityTemplate,
        e?.templateSections,
        e?.templateIcon,
        e?.reviewDate
      ]);

  @override
  bool isValidKey(Object? o) => o is FlattenedTemplatesRecord;
}
