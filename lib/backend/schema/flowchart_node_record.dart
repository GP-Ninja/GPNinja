import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlowchartNodeRecord extends FirestoreRecord {
  FlowchartNodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "options" field.
  List<FlowchartOptionsStruct>? _options;
  List<FlowchartOptionsStruct> get options => _options ?? const [];
  bool hasOptions() => _options != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "visual_index" field.
  int? _visualIndex;
  int get visualIndex => _visualIndex ?? 0;
  bool hasVisualIndex() => _visualIndex != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _options = getStructList(
      snapshotData['options'],
      FlowchartOptionsStruct.fromMap,
    );
    _title = snapshotData['title'] as String?;
    _visualIndex = castToType<int>(snapshotData['visual_index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flowchartNode');

  static Stream<FlowchartNodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlowchartNodeRecord.fromSnapshot(s));

  static Future<FlowchartNodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlowchartNodeRecord.fromSnapshot(s));

  static FlowchartNodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlowchartNodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlowchartNodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlowchartNodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlowchartNodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlowchartNodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlowchartNodeRecordData({
  String? text,
  String? title,
  int? visualIndex,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'title': title,
      'visual_index': visualIndex,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlowchartNodeRecordDocumentEquality
    implements Equality<FlowchartNodeRecord> {
  const FlowchartNodeRecordDocumentEquality();

  @override
  bool equals(FlowchartNodeRecord? e1, FlowchartNodeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.text == e2?.text &&
        listEquality.equals(e1?.options, e2?.options) &&
        e1?.title == e2?.title &&
        e1?.visualIndex == e2?.visualIndex;
  }

  @override
  int hash(FlowchartNodeRecord? e) => const ListEquality()
      .hash([e?.text, e?.options, e?.title, e?.visualIndex]);

  @override
  bool isValidKey(Object? o) => o is FlowchartNodeRecord;
}
