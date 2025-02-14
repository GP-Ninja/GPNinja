import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "tokens" field.
  int? _tokens;
  int get tokens => _tokens ?? 0;
  bool hasTokens() => _tokens != null;

  // "reflection_count" field.
  int? _reflectionCount;
  int get reflectionCount => _reflectionCount ?? 0;
  bool hasReflectionCount() => _reflectionCount != null;

  // "date_account_created" field.
  DateTime? _dateAccountCreated;
  DateTime? get dateAccountCreated => _dateAccountCreated;
  bool hasDateAccountCreated() => _dateAccountCreated != null;

  // "training_stage" field.
  String? _trainingStage;
  String get trainingStage => _trainingStage ?? '';
  bool hasTrainingStage() => _trainingStage != null;

  // "trust_guidelines" field.
  String? _trustGuidelines;
  String get trustGuidelines => _trustGuidelines ?? '';
  bool hasTrustGuidelines() => _trustGuidelines != null;

  // "trust_guidelines_search" field.
  String? _trustGuidelinesSearch;
  String get trustGuidelinesSearch => _trustGuidelinesSearch ?? '';
  bool hasTrustGuidelinesSearch() => _trustGuidelinesSearch != null;

  // "trust_name" field.
  String? _trustName;
  String get trustName => _trustName ?? '';
  bool hasTrustName() => _trustName != null;

  // "trust_logo" field.
  String? _trustLogo;
  String get trustLogo => _trustLogo ?? '';
  bool hasTrustLogo() => _trustLogo != null;

  // "active_membership" field.
  bool? _activeMembership;
  bool get activeMembership => _activeMembership ?? false;
  bool hasActiveMembership() => _activeMembership != null;

  // "communicationstatus" field.
  bool? _communicationstatus;
  bool get communicationstatus => _communicationstatus ?? false;
  bool hasCommunicationstatus() => _communicationstatus != null;

  // "click_count" field.
  int? _clickCount;
  int get clickCount => _clickCount ?? 0;
  bool hasClickCount() => _clickCount != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "questions_completed" field.
  List<DocumentReference>? _questionsCompleted;
  List<DocumentReference> get questionsCompleted =>
      _questionsCompleted ?? const [];
  bool hasQuestionsCompleted() => _questionsCompleted != null;

  // "iConsult_only" field.
  bool? _iConsultOnly;
  bool get iConsultOnly => _iConsultOnly ?? false;
  bool hasIConsultOnly() => _iConsultOnly != null;

  // "ICB" field.
  DocumentReference? _icb;
  DocumentReference? get icb => _icb;
  bool hasIcb() => _icb != null;

  // "stripe_cust_id" field.
  String? _stripeCustId;
  String get stripeCustId => _stripeCustId ?? '';
  bool hasStripeCustId() => _stripeCustId != null;

  // "stripe_subscription_id" field.
  String? _stripeSubscriptionId;
  String get stripeSubscriptionId => _stripeSubscriptionId ?? '';
  bool hasStripeSubscriptionId() => _stripeSubscriptionId != null;

  // "stripe_plan_end_date" field.
  DateTime? _stripePlanEndDate;
  DateTime? get stripePlanEndDate => _stripePlanEndDate;
  bool hasStripePlanEndDate() => _stripePlanEndDate != null;

  // "stripe_subscription_status" field.
  String? _stripeSubscriptionStatus;
  String get stripeSubscriptionStatus => _stripeSubscriptionStatus ?? '';
  bool hasStripeSubscriptionStatus() => _stripeSubscriptionStatus != null;

  // "stripe_subscription_product_id" field.
  String? _stripeSubscriptionProductId;
  String get stripeSubscriptionProductId => _stripeSubscriptionProductId ?? '';
  bool hasStripeSubscriptionProductId() => _stripeSubscriptionProductId != null;

  // "stripe_subscription_price_id" field.
  String? _stripeSubscriptionPriceId;
  String get stripeSubscriptionPriceId => _stripeSubscriptionPriceId ?? '';
  bool hasStripeSubscriptionPriceId() => _stripeSubscriptionPriceId != null;

  // "referral_source" field.
  String? _referralSource;
  String get referralSource => _referralSource ?? '';
  bool hasReferralSource() => _referralSource != null;

  // "onboarding_completed" field.
  bool? _onboardingCompleted;
  bool get onboardingCompleted => _onboardingCompleted ?? false;
  bool hasOnboardingCompleted() => _onboardingCompleted != null;

  // "onboarding_subscribe_clicked" field.
  bool? _onboardingSubscribeClicked;
  bool get onboardingSubscribeClicked => _onboardingSubscribeClicked ?? false;
  bool hasOnboardingSubscribeClicked() => _onboardingSubscribeClicked != null;

  // "onboarding_subscribe_payment_completed" field.
  bool? _onboardingSubscribePaymentCompleted;
  bool get onboardingSubscribePaymentCompleted =>
      _onboardingSubscribePaymentCompleted ?? false;
  bool hasOnboardingSubscribePaymentCompleted() =>
      _onboardingSubscribePaymentCompleted != null;

  // "stripe_plan_start_date" field.
  DateTime? _stripePlanStartDate;
  DateTime? get stripePlanStartDate => _stripePlanStartDate;
  bool hasStripePlanStartDate() => _stripePlanStartDate != null;

  // "mfa_enabled" field.
  bool? _mfaEnabled;
  bool get mfaEnabled => _mfaEnabled ?? false;
  bool hasMfaEnabled() => _mfaEnabled != null;

  // "referred_by" field.
  String? _referredBy;
  String get referredBy => _referredBy ?? '';
  bool hasReferredBy() => _referredBy != null;

  // "signed_up_count" field.
  int? _signedUpCount;
  int get signedUpCount => _signedUpCount ?? 0;
  bool hasSignedUpCount() => _signedUpCount != null;

  // "subscribed_count" field.
  int? _subscribedCount;
  int get subscribedCount => _subscribedCount ?? 0;
  bool hasSubscribedCount() => _subscribedCount != null;

  // "referred_users" field.
  List<String>? _referredUsers;
  List<String> get referredUsers => _referredUsers ?? const [];
  bool hasReferredUsers() => _referredUsers != null;

  // "has_used_trial" field.
  bool? _hasUsedTrial;
  bool get hasUsedTrial => _hasUsedTrial ?? false;
  bool hasHasUsedTrial() => _hasUsedTrial != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _city = snapshotData['city'] as String?;
    _tokens = castToType<int>(snapshotData['tokens']);
    _reflectionCount = castToType<int>(snapshotData['reflection_count']);
    _dateAccountCreated = snapshotData['date_account_created'] as DateTime?;
    _trainingStage = snapshotData['training_stage'] as String?;
    _trustGuidelines = snapshotData['trust_guidelines'] as String?;
    _trustGuidelinesSearch = snapshotData['trust_guidelines_search'] as String?;
    _trustName = snapshotData['trust_name'] as String?;
    _trustLogo = snapshotData['trust_logo'] as String?;
    _activeMembership = snapshotData['active_membership'] as bool?;
    _communicationstatus = snapshotData['communicationstatus'] as bool?;
    _clickCount = castToType<int>(snapshotData['click_count']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _questionsCompleted = getDataList(snapshotData['questions_completed']);
    _iConsultOnly = snapshotData['iConsult_only'] as bool?;
    _icb = snapshotData['ICB'] as DocumentReference?;
    _stripeCustId = snapshotData['stripe_cust_id'] as String?;
    _stripeSubscriptionId = snapshotData['stripe_subscription_id'] as String?;
    _stripePlanEndDate = snapshotData['stripe_plan_end_date'] as DateTime?;
    _stripeSubscriptionStatus =
        snapshotData['stripe_subscription_status'] as String?;
    _stripeSubscriptionProductId =
        snapshotData['stripe_subscription_product_id'] as String?;
    _stripeSubscriptionPriceId =
        snapshotData['stripe_subscription_price_id'] as String?;
    _referralSource = snapshotData['referral_source'] as String?;
    _onboardingCompleted = snapshotData['onboarding_completed'] as bool?;
    _onboardingSubscribeClicked =
        snapshotData['onboarding_subscribe_clicked'] as bool?;
    _onboardingSubscribePaymentCompleted =
        snapshotData['onboarding_subscribe_payment_completed'] as bool?;
    _stripePlanStartDate = snapshotData['stripe_plan_start_date'] as DateTime?;
    _mfaEnabled = snapshotData['mfa_enabled'] as bool?;
    _referredBy = snapshotData['referred_by'] as String?;
    _signedUpCount = castToType<int>(snapshotData['signed_up_count']);
    _subscribedCount = castToType<int>(snapshotData['subscribed_count']);
    _referredUsers = getDataList(snapshotData['referred_users']);
    _hasUsedTrial = snapshotData['has_used_trial'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? state,
  String? bio,
  String? city,
  int? tokens,
  int? reflectionCount,
  DateTime? dateAccountCreated,
  String? trainingStage,
  String? trustGuidelines,
  String? trustGuidelinesSearch,
  String? trustName,
  String? trustLogo,
  bool? activeMembership,
  bool? communicationstatus,
  int? clickCount,
  String? photoUrl,
  DocumentReference? companyRef,
  bool? iConsultOnly,
  DocumentReference? icb,
  String? stripeCustId,
  String? stripeSubscriptionId,
  DateTime? stripePlanEndDate,
  String? stripeSubscriptionStatus,
  String? stripeSubscriptionProductId,
  String? stripeSubscriptionPriceId,
  String? referralSource,
  bool? onboardingCompleted,
  bool? onboardingSubscribeClicked,
  bool? onboardingSubscribePaymentCompleted,
  DateTime? stripePlanStartDate,
  bool? mfaEnabled,
  String? referredBy,
  int? signedUpCount,
  int? subscribedCount,
  bool? hasUsedTrial,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'state': state,
      'bio': bio,
      'city': city,
      'tokens': tokens,
      'reflection_count': reflectionCount,
      'date_account_created': dateAccountCreated,
      'training_stage': trainingStage,
      'trust_guidelines': trustGuidelines,
      'trust_guidelines_search': trustGuidelinesSearch,
      'trust_name': trustName,
      'trust_logo': trustLogo,
      'active_membership': activeMembership,
      'communicationstatus': communicationstatus,
      'click_count': clickCount,
      'photo_url': photoUrl,
      'companyRef': companyRef,
      'iConsult_only': iConsultOnly,
      'ICB': icb,
      'stripe_cust_id': stripeCustId,
      'stripe_subscription_id': stripeSubscriptionId,
      'stripe_plan_end_date': stripePlanEndDate,
      'stripe_subscription_status': stripeSubscriptionStatus,
      'stripe_subscription_product_id': stripeSubscriptionProductId,
      'stripe_subscription_price_id': stripeSubscriptionPriceId,
      'referral_source': referralSource,
      'onboarding_completed': onboardingCompleted,
      'onboarding_subscribe_clicked': onboardingSubscribeClicked,
      'onboarding_subscribe_payment_completed':
          onboardingSubscribePaymentCompleted,
      'stripe_plan_start_date': stripePlanStartDate,
      'mfa_enabled': mfaEnabled,
      'referred_by': referredBy,
      'signed_up_count': signedUpCount,
      'subscribed_count': subscribedCount,
      'has_used_trial': hasUsedTrial,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.city == e2?.city &&
        e1?.tokens == e2?.tokens &&
        e1?.reflectionCount == e2?.reflectionCount &&
        e1?.dateAccountCreated == e2?.dateAccountCreated &&
        e1?.trainingStage == e2?.trainingStage &&
        e1?.trustGuidelines == e2?.trustGuidelines &&
        e1?.trustGuidelinesSearch == e2?.trustGuidelinesSearch &&
        e1?.trustName == e2?.trustName &&
        e1?.trustLogo == e2?.trustLogo &&
        e1?.activeMembership == e2?.activeMembership &&
        e1?.communicationstatus == e2?.communicationstatus &&
        e1?.clickCount == e2?.clickCount &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.companyRef == e2?.companyRef &&
        listEquality.equals(e1?.questionsCompleted, e2?.questionsCompleted) &&
        e1?.iConsultOnly == e2?.iConsultOnly &&
        e1?.icb == e2?.icb &&
        e1?.stripeCustId == e2?.stripeCustId &&
        e1?.stripeSubscriptionId == e2?.stripeSubscriptionId &&
        e1?.stripePlanEndDate == e2?.stripePlanEndDate &&
        e1?.stripeSubscriptionStatus == e2?.stripeSubscriptionStatus &&
        e1?.stripeSubscriptionProductId == e2?.stripeSubscriptionProductId &&
        e1?.stripeSubscriptionPriceId == e2?.stripeSubscriptionPriceId &&
        e1?.referralSource == e2?.referralSource &&
        e1?.onboardingCompleted == e2?.onboardingCompleted &&
        e1?.onboardingSubscribeClicked == e2?.onboardingSubscribeClicked &&
        e1?.onboardingSubscribePaymentCompleted ==
            e2?.onboardingSubscribePaymentCompleted &&
        e1?.stripePlanStartDate == e2?.stripePlanStartDate &&
        e1?.mfaEnabled == e2?.mfaEnabled &&
        e1?.referredBy == e2?.referredBy &&
        e1?.signedUpCount == e2?.signedUpCount &&
        e1?.subscribedCount == e2?.subscribedCount &&
        listEquality.equals(e1?.referredUsers, e2?.referredUsers) &&
        e1?.hasUsedTrial == e2?.hasUsedTrial;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.state,
        e?.bio,
        e?.city,
        e?.tokens,
        e?.reflectionCount,
        e?.dateAccountCreated,
        e?.trainingStage,
        e?.trustGuidelines,
        e?.trustGuidelinesSearch,
        e?.trustName,
        e?.trustLogo,
        e?.activeMembership,
        e?.communicationstatus,
        e?.clickCount,
        e?.photoUrl,
        e?.companyRef,
        e?.questionsCompleted,
        e?.iConsultOnly,
        e?.icb,
        e?.stripeCustId,
        e?.stripeSubscriptionId,
        e?.stripePlanEndDate,
        e?.stripeSubscriptionStatus,
        e?.stripeSubscriptionProductId,
        e?.stripeSubscriptionPriceId,
        e?.referralSource,
        e?.onboardingCompleted,
        e?.onboardingSubscribeClicked,
        e?.onboardingSubscribePaymentCompleted,
        e?.stripePlanStartDate,
        e?.mfaEnabled,
        e?.referredBy,
        e?.signedUpCount,
        e?.subscribedCount,
        e?.referredUsers,
        e?.hasUsedTrial
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
