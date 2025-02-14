import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClicknoteOptionsRecord extends FirestoreRecord {
  ClicknoteOptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "option_title" field.
  String? _optionTitle;
  String get optionTitle => _optionTitle ?? '';
  bool hasOptionTitle() => _optionTitle != null;

  // "option_index" field.
  int? _optionIndex;
  int get optionIndex => _optionIndex ?? 0;
  bool hasOptionIndex() => _optionIndex != null;

  // "option_url" field.
  String? _optionUrl;
  String get optionUrl => _optionUrl ?? '';
  bool hasOptionUrl() => _optionUrl != null;

  // "option_has_url" field.
  bool? _optionHasUrl;
  bool get optionHasUrl => _optionHasUrl ?? false;
  bool hasOptionHasUrl() => _optionHasUrl != null;

  // "url_options" field.
  List<String>? _urlOptions;
  List<String> get urlOptions => _urlOptions ?? const [];
  bool hasUrlOptions() => _urlOptions != null;

  // "url_prompt" field.
  String? _urlPrompt;
  String get urlPrompt => _urlPrompt ?? '';
  bool hasUrlPrompt() => _urlPrompt != null;

  // "option_is_medication" field.
  bool? _optionIsMedication;
  bool get optionIsMedication => _optionIsMedication ?? false;
  bool hasOptionIsMedication() => _optionIsMedication != null;

  // "bnf_url" field.
  String? _bnfUrl;
  String get bnfUrl => _bnfUrl ?? '';
  bool hasBnfUrl() => _bnfUrl != null;

  // "bnfc_url" field.
  String? _bnfcUrl;
  String get bnfcUrl => _bnfcUrl ?? '';
  bool hasBnfcUrl() => _bnfcUrl != null;

  // "option_is_red_flag" field.
  bool? _optionIsRedFlag;
  bool get optionIsRedFlag => _optionIsRedFlag ?? false;
  bool hasOptionIsRedFlag() => _optionIsRedFlag != null;

  // "option_has_note" field.
  bool? _optionHasNote;
  bool get optionHasNote => _optionHasNote ?? false;
  bool hasOptionHasNote() => _optionHasNote != null;

  // "option_note" field.
  String? _optionNote;
  String get optionNote => _optionNote ?? '';
  bool hasOptionNote() => _optionNote != null;

  // "option_note_colour" field.
  Color? _optionNoteColour;
  Color? get optionNoteColour => _optionNoteColour;
  bool hasOptionNoteColour() => _optionNoteColour != null;

  // "url_is_webveiw" field.
  bool? _urlIsWebveiw;
  bool get urlIsWebveiw => _urlIsWebveiw ?? false;
  bool hasUrlIsWebveiw() => _urlIsWebveiw != null;

  // "traffic_light_red" field.
  bool? _trafficLightRed;
  bool get trafficLightRed => _trafficLightRed ?? false;
  bool hasTrafficLightRed() => _trafficLightRed != null;

  // "traffic_light_amber" field.
  bool? _trafficLightAmber;
  bool get trafficLightAmber => _trafficLightAmber ?? false;
  bool hasTrafficLightAmber() => _trafficLightAmber != null;

  // "traffic_light_green" field.
  bool? _trafficLightGreen;
  bool get trafficLightGreen => _trafficLightGreen ?? false;
  bool hasTrafficLightGreen() => _trafficLightGreen != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _optionTitle = snapshotData['option_title'] as String?;
    _optionIndex = castToType<int>(snapshotData['option_index']);
    _optionUrl = snapshotData['option_url'] as String?;
    _optionHasUrl = snapshotData['option_has_url'] as bool?;
    _urlOptions = getDataList(snapshotData['url_options']);
    _urlPrompt = snapshotData['url_prompt'] as String?;
    _optionIsMedication = snapshotData['option_is_medication'] as bool?;
    _bnfUrl = snapshotData['bnf_url'] as String?;
    _bnfcUrl = snapshotData['bnfc_url'] as String?;
    _optionIsRedFlag = snapshotData['option_is_red_flag'] as bool?;
    _optionHasNote = snapshotData['option_has_note'] as bool?;
    _optionNote = snapshotData['option_note'] as String?;
    _optionNoteColour = getSchemaColor(snapshotData['option_note_colour']);
    _urlIsWebveiw = snapshotData['url_is_webveiw'] as bool?;
    _trafficLightRed = snapshotData['traffic_light_red'] as bool?;
    _trafficLightAmber = snapshotData['traffic_light_amber'] as bool?;
    _trafficLightGreen = snapshotData['traffic_light_green'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('clicknote_options')
          : FirebaseFirestore.instance.collectionGroup('clicknote_options');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('clicknote_options').doc(id);

  static Stream<ClicknoteOptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClicknoteOptionsRecord.fromSnapshot(s));

  static Future<ClicknoteOptionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClicknoteOptionsRecord.fromSnapshot(s));

  static ClicknoteOptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClicknoteOptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClicknoteOptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClicknoteOptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClicknoteOptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClicknoteOptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClicknoteOptionsRecordData({
  String? optionTitle,
  int? optionIndex,
  String? optionUrl,
  bool? optionHasUrl,
  String? urlPrompt,
  bool? optionIsMedication,
  String? bnfUrl,
  String? bnfcUrl,
  bool? optionIsRedFlag,
  bool? optionHasNote,
  String? optionNote,
  Color? optionNoteColour,
  bool? urlIsWebveiw,
  bool? trafficLightRed,
  bool? trafficLightAmber,
  bool? trafficLightGreen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'option_title': optionTitle,
      'option_index': optionIndex,
      'option_url': optionUrl,
      'option_has_url': optionHasUrl,
      'url_prompt': urlPrompt,
      'option_is_medication': optionIsMedication,
      'bnf_url': bnfUrl,
      'bnfc_url': bnfcUrl,
      'option_is_red_flag': optionIsRedFlag,
      'option_has_note': optionHasNote,
      'option_note': optionNote,
      'option_note_colour': optionNoteColour,
      'url_is_webveiw': urlIsWebveiw,
      'traffic_light_red': trafficLightRed,
      'traffic_light_amber': trafficLightAmber,
      'traffic_light_green': trafficLightGreen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClicknoteOptionsRecordDocumentEquality
    implements Equality<ClicknoteOptionsRecord> {
  const ClicknoteOptionsRecordDocumentEquality();

  @override
  bool equals(ClicknoteOptionsRecord? e1, ClicknoteOptionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.optionTitle == e2?.optionTitle &&
        e1?.optionIndex == e2?.optionIndex &&
        e1?.optionUrl == e2?.optionUrl &&
        e1?.optionHasUrl == e2?.optionHasUrl &&
        listEquality.equals(e1?.urlOptions, e2?.urlOptions) &&
        e1?.urlPrompt == e2?.urlPrompt &&
        e1?.optionIsMedication == e2?.optionIsMedication &&
        e1?.bnfUrl == e2?.bnfUrl &&
        e1?.bnfcUrl == e2?.bnfcUrl &&
        e1?.optionIsRedFlag == e2?.optionIsRedFlag &&
        e1?.optionHasNote == e2?.optionHasNote &&
        e1?.optionNote == e2?.optionNote &&
        e1?.optionNoteColour == e2?.optionNoteColour &&
        e1?.urlIsWebveiw == e2?.urlIsWebveiw &&
        e1?.trafficLightRed == e2?.trafficLightRed &&
        e1?.trafficLightAmber == e2?.trafficLightAmber &&
        e1?.trafficLightGreen == e2?.trafficLightGreen;
  }

  @override
  int hash(ClicknoteOptionsRecord? e) => const ListEquality().hash([
        e?.optionTitle,
        e?.optionIndex,
        e?.optionUrl,
        e?.optionHasUrl,
        e?.urlOptions,
        e?.urlPrompt,
        e?.optionIsMedication,
        e?.bnfUrl,
        e?.bnfcUrl,
        e?.optionIsRedFlag,
        e?.optionHasNote,
        e?.optionNote,
        e?.optionNoteColour,
        e?.urlIsWebveiw,
        e?.trafficLightRed,
        e?.trafficLightAmber,
        e?.trafficLightGreen
      ]);

  @override
  bool isValidKey(Object? o) => o is ClicknoteOptionsRecord;
}
