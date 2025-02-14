import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResourcesRecord extends FirestoreRecord {
  ResourcesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "popularity" field.
  int? _popularity;
  int get popularity => _popularity ?? 0;
  bool hasPopularity() => _popularity != null;

  // "whenadded" field.
  DateTime? _whenadded;
  DateTime? get whenadded => _whenadded;
  bool hasWhenadded() => _whenadded != null;

  // "region_specific" field.
  bool? _regionSpecific;
  bool get regionSpecific => _regionSpecific ?? false;
  bool hasRegionSpecific() => _regionSpecific != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "upvoted" field.
  List<DocumentReference>? _upvoted;
  List<DocumentReference> get upvoted => _upvoted ?? const [];
  bool hasUpvoted() => _upvoted != null;

  // "downvoted" field.
  List<DocumentReference>? _downvoted;
  List<DocumentReference> get downvoted => _downvoted ?? const [];
  bool hasDownvoted() => _downvoted != null;

  // "numberofclicks" field.
  int? _numberofclicks;
  int get numberofclicks => _numberofclicks ?? 0;
  bool hasNumberofclicks() => _numberofclicks != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _link = snapshotData['link'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _popularity = castToType<int>(snapshotData['popularity']);
    _whenadded = snapshotData['whenadded'] as DateTime?;
    _regionSpecific = snapshotData['region_specific'] as bool?;
    _region = snapshotData['region'] as String?;
    _upvoted = getDataList(snapshotData['upvoted']);
    _downvoted = getDataList(snapshotData['downvoted']);
    _numberofclicks = castToType<int>(snapshotData['numberofclicks']);
    _approved = snapshotData['approved'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resources');

  static Stream<ResourcesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResourcesRecord.fromSnapshot(s));

  static Future<ResourcesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResourcesRecord.fromSnapshot(s));

  static ResourcesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResourcesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResourcesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResourcesRecord._(reference, mapFromFirestore(data));

  static ResourcesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ResourcesRecord.getDocumentFromData(
        {
          'user': convertAlgoliaParam(
            snapshot.data['user'],
            ParamType.DocumentReference,
            false,
          ),
          'title': snapshot.data['title'],
          'description': snapshot.data['description'],
          'link': snapshot.data['link'],
          'tags': safeGet(
            () => snapshot.data['tags'].toList(),
          ),
          'popularity': convertAlgoliaParam(
            snapshot.data['popularity'],
            ParamType.int,
            false,
          ),
          'whenadded': convertAlgoliaParam(
            snapshot.data['whenadded'],
            ParamType.DateTime,
            false,
          ),
          'region_specific': snapshot.data['region_specific'],
          'region': snapshot.data['region'],
          'upvoted': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['upvoted'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'downvoted': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['downvoted'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'numberofclicks': convertAlgoliaParam(
            snapshot.data['numberofclicks'],
            ParamType.int,
            false,
          ),
          'approved': snapshot.data['approved'],
        },
        ResourcesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ResourcesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'resources',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ResourcesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResourcesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResourcesRecordData({
  DocumentReference? user,
  String? title,
  String? description,
  String? link,
  int? popularity,
  DateTime? whenadded,
  bool? regionSpecific,
  String? region,
  int? numberofclicks,
  bool? approved,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'title': title,
      'description': description,
      'link': link,
      'popularity': popularity,
      'whenadded': whenadded,
      'region_specific': regionSpecific,
      'region': region,
      'numberofclicks': numberofclicks,
      'approved': approved,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResourcesRecordDocumentEquality implements Equality<ResourcesRecord> {
  const ResourcesRecordDocumentEquality();

  @override
  bool equals(ResourcesRecord? e1, ResourcesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.link == e2?.link &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.popularity == e2?.popularity &&
        e1?.whenadded == e2?.whenadded &&
        e1?.regionSpecific == e2?.regionSpecific &&
        e1?.region == e2?.region &&
        listEquality.equals(e1?.upvoted, e2?.upvoted) &&
        listEquality.equals(e1?.downvoted, e2?.downvoted) &&
        e1?.numberofclicks == e2?.numberofclicks &&
        e1?.approved == e2?.approved;
  }

  @override
  int hash(ResourcesRecord? e) => const ListEquality().hash([
        e?.user,
        e?.title,
        e?.description,
        e?.link,
        e?.tags,
        e?.popularity,
        e?.whenadded,
        e?.regionSpecific,
        e?.region,
        e?.upvoted,
        e?.downvoted,
        e?.numberofclicks,
        e?.approved
      ]);

  @override
  bool isValidKey(Object? o) => o is ResourcesRecord;
}
