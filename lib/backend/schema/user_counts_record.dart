import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCountsRecord extends FirestoreRecord {
  UserCountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fitnesstopractice" field.
  int? _fitnesstopractice;
  int get fitnesstopractice => _fitnesstopractice ?? 0;
  bool hasFitnesstopractice() => _fitnesstopractice != null;

  // "Maintaininganethicalapproach" field.
  int? _maintaininganethicalapproach;
  int get maintaininganethicalapproach => _maintaininganethicalapproach ?? 0;
  bool hasMaintaininganethicalapproach() =>
      _maintaininganethicalapproach != null;

  // "Communicationandconsultationskills" field.
  int? _communicationandconsultationskills;
  int get communicationandconsultationskills =>
      _communicationandconsultationskills ?? 0;
  bool hasCommunicationandconsultationskills() =>
      _communicationandconsultationskills != null;

  // "Datagatheringandinterpretation" field.
  int? _datagatheringandinterpretation;
  int get datagatheringandinterpretation =>
      _datagatheringandinterpretation ?? 0;
  bool hasDatagatheringandinterpretation() =>
      _datagatheringandinterpretation != null;

  // "Clinicalexaminationandproceduralskills" field.
  int? _clinicalexaminationandproceduralskills;
  int get clinicalexaminationandproceduralskills =>
      _clinicalexaminationandproceduralskills ?? 0;
  bool hasClinicalexaminationandproceduralskills() =>
      _clinicalexaminationandproceduralskills != null;

  // "Makingadiagnosisdecisions" field.
  int? _makingadiagnosisdecisions;
  int get makingadiagnosisdecisions => _makingadiagnosisdecisions ?? 0;
  bool hasMakingadiagnosisdecisions() => _makingadiagnosisdecisions != null;

  // "Clinicalmanagement" field.
  int? _clinicalmanagement;
  int get clinicalmanagement => _clinicalmanagement ?? 0;
  bool hasClinicalmanagement() => _clinicalmanagement != null;

  // "Managingmedicalcomplexity" field.
  int? _managingmedicalcomplexity;
  int get managingmedicalcomplexity => _managingmedicalcomplexity ?? 0;
  bool hasManagingmedicalcomplexity() => _managingmedicalcomplexity != null;

  // "Workingwithcolleaguesandinteams" field.
  int? _workingwithcolleaguesandinteams;
  int get workingwithcolleaguesandinteams =>
      _workingwithcolleaguesandinteams ?? 0;
  bool hasWorkingwithcolleaguesandinteams() =>
      _workingwithcolleaguesandinteams != null;

  // "Maintainingperformancelearningandteaching" field.
  int? _maintainingperformancelearningandteaching;
  int get maintainingperformancelearningandteaching =>
      _maintainingperformancelearningandteaching ?? 0;
  bool hasMaintainingperformancelearningandteaching() =>
      _maintainingperformancelearningandteaching != null;

  // "Organisationmanagementandleadership" field.
  int? _organisationmanagementandleadership;
  int get organisationmanagementandleadership =>
      _organisationmanagementandleadership ?? 0;
  bool hasOrganisationmanagementandleadership() =>
      _organisationmanagementandleadership != null;

  // "Practisingholisticallypromotinghealthandsafeguarding" field.
  int? _practisingholisticallypromotinghealthandsafeguarding;
  int get practisingholisticallypromotinghealthandsafeguarding =>
      _practisingholisticallypromotinghealthandsafeguarding ?? 0;
  bool hasPractisingholisticallypromotinghealthandsafeguarding() =>
      _practisingholisticallypromotinghealthandsafeguarding != null;

  // "Communityorientation" field.
  int? _communityorientation;
  int get communityorientation => _communityorientation ?? 0;
  bool hasCommunityorientation() => _communityorientation != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fitnesstopractice = castToType<int>(snapshotData['Fitnesstopractice']);
    _maintaininganethicalapproach =
        castToType<int>(snapshotData['Maintaininganethicalapproach']);
    _communicationandconsultationskills =
        castToType<int>(snapshotData['Communicationandconsultationskills']);
    _datagatheringandinterpretation =
        castToType<int>(snapshotData['Datagatheringandinterpretation']);
    _clinicalexaminationandproceduralskills =
        castToType<int>(snapshotData['Clinicalexaminationandproceduralskills']);
    _makingadiagnosisdecisions =
        castToType<int>(snapshotData['Makingadiagnosisdecisions']);
    _clinicalmanagement = castToType<int>(snapshotData['Clinicalmanagement']);
    _managingmedicalcomplexity =
        castToType<int>(snapshotData['Managingmedicalcomplexity']);
    _workingwithcolleaguesandinteams =
        castToType<int>(snapshotData['Workingwithcolleaguesandinteams']);
    _maintainingperformancelearningandteaching = castToType<int>(
        snapshotData['Maintainingperformancelearningandteaching']);
    _organisationmanagementandleadership =
        castToType<int>(snapshotData['Organisationmanagementandleadership']);
    _practisingholisticallypromotinghealthandsafeguarding = castToType<int>(
        snapshotData['Practisingholisticallypromotinghealthandsafeguarding']);
    _communityorientation =
        castToType<int>(snapshotData['Communityorientation']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_counts')
          : FirebaseFirestore.instance.collectionGroup('user_counts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_counts').doc(id);

  static Stream<UserCountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCountsRecord.fromSnapshot(s));

  static Future<UserCountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCountsRecord.fromSnapshot(s));

  static UserCountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCountsRecordData({
  int? fitnesstopractice,
  int? maintaininganethicalapproach,
  int? communicationandconsultationskills,
  int? datagatheringandinterpretation,
  int? clinicalexaminationandproceduralskills,
  int? makingadiagnosisdecisions,
  int? clinicalmanagement,
  int? managingmedicalcomplexity,
  int? workingwithcolleaguesandinteams,
  int? maintainingperformancelearningandteaching,
  int? organisationmanagementandleadership,
  int? practisingholisticallypromotinghealthandsafeguarding,
  int? communityorientation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fitnesstopractice': fitnesstopractice,
      'Maintaininganethicalapproach': maintaininganethicalapproach,
      'Communicationandconsultationskills': communicationandconsultationskills,
      'Datagatheringandinterpretation': datagatheringandinterpretation,
      'Clinicalexaminationandproceduralskills':
          clinicalexaminationandproceduralskills,
      'Makingadiagnosisdecisions': makingadiagnosisdecisions,
      'Clinicalmanagement': clinicalmanagement,
      'Managingmedicalcomplexity': managingmedicalcomplexity,
      'Workingwithcolleaguesandinteams': workingwithcolleaguesandinteams,
      'Maintainingperformancelearningandteaching':
          maintainingperformancelearningandteaching,
      'Organisationmanagementandleadership':
          organisationmanagementandleadership,
      'Practisingholisticallypromotinghealthandsafeguarding':
          practisingholisticallypromotinghealthandsafeguarding,
      'Communityorientation': communityorientation,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCountsRecordDocumentEquality implements Equality<UserCountsRecord> {
  const UserCountsRecordDocumentEquality();

  @override
  bool equals(UserCountsRecord? e1, UserCountsRecord? e2) {
    return e1?.fitnesstopractice == e2?.fitnesstopractice &&
        e1?.maintaininganethicalapproach == e2?.maintaininganethicalapproach &&
        e1?.communicationandconsultationskills ==
            e2?.communicationandconsultationskills &&
        e1?.datagatheringandinterpretation ==
            e2?.datagatheringandinterpretation &&
        e1?.clinicalexaminationandproceduralskills ==
            e2?.clinicalexaminationandproceduralskills &&
        e1?.makingadiagnosisdecisions == e2?.makingadiagnosisdecisions &&
        e1?.clinicalmanagement == e2?.clinicalmanagement &&
        e1?.managingmedicalcomplexity == e2?.managingmedicalcomplexity &&
        e1?.workingwithcolleaguesandinteams ==
            e2?.workingwithcolleaguesandinteams &&
        e1?.maintainingperformancelearningandteaching ==
            e2?.maintainingperformancelearningandteaching &&
        e1?.organisationmanagementandleadership ==
            e2?.organisationmanagementandleadership &&
        e1?.practisingholisticallypromotinghealthandsafeguarding ==
            e2?.practisingholisticallypromotinghealthandsafeguarding &&
        e1?.communityorientation == e2?.communityorientation;
  }

  @override
  int hash(UserCountsRecord? e) => const ListEquality().hash([
        e?.fitnesstopractice,
        e?.maintaininganethicalapproach,
        e?.communicationandconsultationskills,
        e?.datagatheringandinterpretation,
        e?.clinicalexaminationandproceduralskills,
        e?.makingadiagnosisdecisions,
        e?.clinicalmanagement,
        e?.managingmedicalcomplexity,
        e?.workingwithcolleaguesandinteams,
        e?.maintainingperformancelearningandteaching,
        e?.organisationmanagementandleadership,
        e?.practisingholisticallypromotinghealthandsafeguarding,
        e?.communityorientation
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCountsRecord;
}
