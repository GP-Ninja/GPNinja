import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/users_record.dart';
import 'schema/user_counts_record.dart';
import 'schema/reflections_record.dart';
import 'schema/cases_record.dart';
import 'schema/user_reflection_counts_record.dart';
import 'schema/resources_record.dart';
import 'schema/reported_resources_record.dart';
import 'schema/suggestion_box_record.dart';
import 'schema/education_record.dart';
import 'schema/news_record.dart';
import 'schema/research_record.dart';
import 'schema/presenting_complaints_record.dart';
import 'schema/examinations_record.dart';
import 'schema/quiz_result_record.dart';
import 'schema/quizzes_record.dart';
import 'schema/company_record.dart';
import 'schema/questions_record.dart';
import 'schema/user_responses_record.dart';
import 'schema/inote_record.dart';
import 'schema/default_templates_record.dart';
import 'schema/sections_record.dart';
import 'schema/rows_record.dart';
import 'schema/options_record.dart';
import 'schema/prompt_record.dart';
import 'schema/flashcards_record.dart';
import 'schema/flashcard_categories_record.dart';
import 'schema/flashcard_tags_record.dart';
import 'schema/user_flashcard_progress_record.dart';
import 'schema/flashcard_feedback_record.dart';
import 'schema/c_p_d_record_record.dart';
import 'schema/search_record.dart';
import 'schema/search_results_record.dart';
import 'schema/i_c_bs_record.dart';
import 'schema/i_c_b_resources_record.dart';
import 'schema/row_unit_record.dart';
import 'schema/unit_options_record.dart';
import 'schema/template_v2_record.dart';
import 'schema/section_v2_record.dart';
import 'schema/row_v2_record.dart';
import 'schema/flowchart_node_record.dart';
import 'schema/clicknote_usage_record.dart';
import 'schema/clicknote_templates_record.dart';
import 'schema/clicknote_sections_record.dart';
import 'schema/clicknote_rows_record.dart';
import 'schema/clicknote_options_record.dart';
import 'schema/clicknote_v2_usage_record.dart';
import 'schema/news_clicks_record.dart';
import 'schema/comments_record.dart';
import 'schema/clicknote_comments_record.dart';
import 'schema/reflection_a_c_p_record.dart';
import 'schema/flattened_templates_record.dart';
import 'schema/flattened_template_comments_record.dart';
import 'schema/cpd_calendar_record.dart';
import 'schema/common_passwords_record.dart';
import 'schema/audit_logs_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/users_record.dart';
export 'schema/user_counts_record.dart';
export 'schema/reflections_record.dart';
export 'schema/cases_record.dart';
export 'schema/user_reflection_counts_record.dart';
export 'schema/resources_record.dart';
export 'schema/reported_resources_record.dart';
export 'schema/suggestion_box_record.dart';
export 'schema/education_record.dart';
export 'schema/news_record.dart';
export 'schema/research_record.dart';
export 'schema/presenting_complaints_record.dart';
export 'schema/examinations_record.dart';
export 'schema/quiz_result_record.dart';
export 'schema/quizzes_record.dart';
export 'schema/company_record.dart';
export 'schema/questions_record.dart';
export 'schema/user_responses_record.dart';
export 'schema/inote_record.dart';
export 'schema/default_templates_record.dart';
export 'schema/sections_record.dart';
export 'schema/rows_record.dart';
export 'schema/options_record.dart';
export 'schema/prompt_record.dart';
export 'schema/flashcards_record.dart';
export 'schema/flashcard_categories_record.dart';
export 'schema/flashcard_tags_record.dart';
export 'schema/user_flashcard_progress_record.dart';
export 'schema/flashcard_feedback_record.dart';
export 'schema/c_p_d_record_record.dart';
export 'schema/search_record.dart';
export 'schema/search_results_record.dart';
export 'schema/i_c_bs_record.dart';
export 'schema/i_c_b_resources_record.dart';
export 'schema/row_unit_record.dart';
export 'schema/unit_options_record.dart';
export 'schema/template_v2_record.dart';
export 'schema/section_v2_record.dart';
export 'schema/row_v2_record.dart';
export 'schema/flowchart_node_record.dart';
export 'schema/clicknote_usage_record.dart';
export 'schema/clicknote_templates_record.dart';
export 'schema/clicknote_sections_record.dart';
export 'schema/clicknote_rows_record.dart';
export 'schema/clicknote_options_record.dart';
export 'schema/clicknote_v2_usage_record.dart';
export 'schema/news_clicks_record.dart';
export 'schema/comments_record.dart';
export 'schema/clicknote_comments_record.dart';
export 'schema/reflection_a_c_p_record.dart';
export 'schema/flattened_templates_record.dart';
export 'schema/flattened_template_comments_record.dart';
export 'schema/cpd_calendar_record.dart';
export 'schema/common_passwords_record.dart';
export 'schema/audit_logs_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Future<int> queryUsersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UsersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserCountsRecords (as a Stream and as a Future).
Future<int> queryUserCountsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserCountsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserCountsRecord>> queryUserCountsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserCountsRecord.collection(parent),
      UserCountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserCountsRecord>> queryUserCountsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserCountsRecord.collection(parent),
      UserCountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ReflectionsRecords (as a Stream and as a Future).
Future<int> queryReflectionsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ReflectionsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ReflectionsRecord>> queryReflectionsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ReflectionsRecord.collection,
      ReflectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ReflectionsRecord>> queryReflectionsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ReflectionsRecord.collection,
      ReflectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CasesRecords (as a Stream and as a Future).
Future<int> queryCasesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CasesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CasesRecord>> queryCasesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CasesRecord.collection,
      CasesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CasesRecord>> queryCasesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CasesRecord.collection,
      CasesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserReflectionCountsRecords (as a Stream and as a Future).
Future<int> queryUserReflectionCountsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserReflectionCountsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserReflectionCountsRecord>> queryUserReflectionCountsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserReflectionCountsRecord.collection(parent),
      UserReflectionCountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserReflectionCountsRecord>> queryUserReflectionCountsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserReflectionCountsRecord.collection(parent),
      UserReflectionCountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResourcesRecords (as a Stream and as a Future).
Future<int> queryResourcesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResourcesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResourcesRecord>> queryResourcesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResourcesRecord.collection,
      ResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResourcesRecord>> queryResourcesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResourcesRecord.collection,
      ResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ReportedResourcesRecords (as a Stream and as a Future).
Future<int> queryReportedResourcesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ReportedResourcesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ReportedResourcesRecord>> queryReportedResourcesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ReportedResourcesRecord.collection,
      ReportedResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ReportedResourcesRecord>> queryReportedResourcesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ReportedResourcesRecord.collection,
      ReportedResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SuggestionBoxRecords (as a Stream and as a Future).
Future<int> querySuggestionBoxRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SuggestionBoxRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SuggestionBoxRecord>> querySuggestionBoxRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SuggestionBoxRecord.collection,
      SuggestionBoxRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SuggestionBoxRecord>> querySuggestionBoxRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SuggestionBoxRecord.collection,
      SuggestionBoxRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EducationRecords (as a Stream and as a Future).
Future<int> queryEducationRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EducationRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EducationRecord>> queryEducationRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EducationRecord.collection,
      EducationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EducationRecord>> queryEducationRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EducationRecord.collection,
      EducationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NewsRecords (as a Stream and as a Future).
Future<int> queryNewsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NewsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NewsRecord>> queryNewsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NewsRecord.collection,
      NewsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NewsRecord>> queryNewsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NewsRecord.collection,
      NewsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResearchRecords (as a Stream and as a Future).
Future<int> queryResearchRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResearchRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResearchRecord>> queryResearchRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResearchRecord.collection,
      ResearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResearchRecord>> queryResearchRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResearchRecord.collection,
      ResearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PresentingComplaintsRecords (as a Stream and as a Future).
Future<int> queryPresentingComplaintsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PresentingComplaintsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PresentingComplaintsRecord>> queryPresentingComplaintsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PresentingComplaintsRecord.collection,
      PresentingComplaintsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PresentingComplaintsRecord>> queryPresentingComplaintsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PresentingComplaintsRecord.collection,
      PresentingComplaintsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ExaminationsRecords (as a Stream and as a Future).
Future<int> queryExaminationsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ExaminationsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ExaminationsRecord>> queryExaminationsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ExaminationsRecord.collection,
      ExaminationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ExaminationsRecord>> queryExaminationsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ExaminationsRecord.collection,
      ExaminationsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query QuizResultRecords (as a Stream and as a Future).
Future<int> queryQuizResultRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      QuizResultRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<QuizResultRecord>> queryQuizResultRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      QuizResultRecord.collection,
      QuizResultRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<QuizResultRecord>> queryQuizResultRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      QuizResultRecord.collection,
      QuizResultRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query QuizzesRecords (as a Stream and as a Future).
Future<int> queryQuizzesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      QuizzesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<QuizzesRecord>> queryQuizzesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      QuizzesRecord.collection,
      QuizzesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<QuizzesRecord>> queryQuizzesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      QuizzesRecord.collection,
      QuizzesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CompanyRecords (as a Stream and as a Future).
Future<int> queryCompanyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CompanyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CompanyRecord>> queryCompanyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CompanyRecord.collection,
      CompanyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CompanyRecord>> queryCompanyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CompanyRecord.collection,
      CompanyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query QuestionsRecords (as a Stream and as a Future).
Future<int> queryQuestionsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      QuestionsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<QuestionsRecord>> queryQuestionsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      QuestionsRecord.collection,
      QuestionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<QuestionsRecord>> queryQuestionsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      QuestionsRecord.collection,
      QuestionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserResponsesRecords (as a Stream and as a Future).
Future<int> queryUserResponsesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserResponsesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserResponsesRecord>> queryUserResponsesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserResponsesRecord.collection,
      UserResponsesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserResponsesRecord>> queryUserResponsesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserResponsesRecord.collection,
      UserResponsesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query InoteRecords (as a Stream and as a Future).
Future<int> queryInoteRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      InoteRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<InoteRecord>> queryInoteRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      InoteRecord.collection,
      InoteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<InoteRecord>> queryInoteRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      InoteRecord.collection,
      InoteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DefaultTemplatesRecords (as a Stream and as a Future).
Future<int> queryDefaultTemplatesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DefaultTemplatesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DefaultTemplatesRecord>> queryDefaultTemplatesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DefaultTemplatesRecord.collection,
      DefaultTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DefaultTemplatesRecord>> queryDefaultTemplatesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DefaultTemplatesRecord.collection,
      DefaultTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SectionsRecords (as a Stream and as a Future).
Future<int> querySectionsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SectionsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SectionsRecord>> querySectionsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SectionsRecord.collection(parent),
      SectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SectionsRecord>> querySectionsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SectionsRecord.collection(parent),
      SectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RowsRecords (as a Stream and as a Future).
Future<int> queryRowsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RowsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RowsRecord>> queryRowsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RowsRecord.collection,
      RowsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RowsRecord>> queryRowsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RowsRecord.collection,
      RowsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query OptionsRecords (as a Stream and as a Future).
Future<int> queryOptionsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      OptionsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<OptionsRecord>> queryOptionsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      OptionsRecord.collection(parent),
      OptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<OptionsRecord>> queryOptionsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      OptionsRecord.collection(parent),
      OptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PromptRecords (as a Stream and as a Future).
Future<int> queryPromptRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PromptRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PromptRecord>> queryPromptRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PromptRecord.collection,
      PromptRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PromptRecord>> queryPromptRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PromptRecord.collection,
      PromptRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlashcardsRecords (as a Stream and as a Future).
Future<int> queryFlashcardsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlashcardsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlashcardsRecord>> queryFlashcardsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlashcardsRecord.collection,
      FlashcardsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlashcardsRecord>> queryFlashcardsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlashcardsRecord.collection,
      FlashcardsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlashcardCategoriesRecords (as a Stream and as a Future).
Future<int> queryFlashcardCategoriesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlashcardCategoriesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlashcardCategoriesRecord>> queryFlashcardCategoriesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlashcardCategoriesRecord.collection,
      FlashcardCategoriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlashcardCategoriesRecord>> queryFlashcardCategoriesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlashcardCategoriesRecord.collection,
      FlashcardCategoriesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlashcardTagsRecords (as a Stream and as a Future).
Future<int> queryFlashcardTagsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlashcardTagsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlashcardTagsRecord>> queryFlashcardTagsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlashcardTagsRecord.collection,
      FlashcardTagsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlashcardTagsRecord>> queryFlashcardTagsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlashcardTagsRecord.collection,
      FlashcardTagsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserFlashcardProgressRecords (as a Stream and as a Future).
Future<int> queryUserFlashcardProgressRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserFlashcardProgressRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserFlashcardProgressRecord>> queryUserFlashcardProgressRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserFlashcardProgressRecord.collection(parent),
      UserFlashcardProgressRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserFlashcardProgressRecord>> queryUserFlashcardProgressRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserFlashcardProgressRecord.collection(parent),
      UserFlashcardProgressRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlashcardFeedbackRecords (as a Stream and as a Future).
Future<int> queryFlashcardFeedbackRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlashcardFeedbackRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlashcardFeedbackRecord>> queryFlashcardFeedbackRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlashcardFeedbackRecord.collection,
      FlashcardFeedbackRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlashcardFeedbackRecord>> queryFlashcardFeedbackRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlashcardFeedbackRecord.collection,
      FlashcardFeedbackRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CPDRecordRecords (as a Stream and as a Future).
Future<int> queryCPDRecordRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CPDRecordRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CPDRecordRecord>> queryCPDRecordRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CPDRecordRecord.collection,
      CPDRecordRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CPDRecordRecord>> queryCPDRecordRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CPDRecordRecord.collection,
      CPDRecordRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SearchRecords (as a Stream and as a Future).
Future<int> querySearchRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SearchRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SearchRecord>> querySearchRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SearchRecord.collection,
      SearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SearchRecord>> querySearchRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SearchRecord.collection,
      SearchRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SearchResultsRecords (as a Stream and as a Future).
Future<int> querySearchResultsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SearchResultsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SearchResultsRecord>> querySearchResultsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SearchResultsRecord.collection,
      SearchResultsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SearchResultsRecord>> querySearchResultsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SearchResultsRecord.collection,
      SearchResultsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ICBsRecords (as a Stream and as a Future).
Future<int> queryICBsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ICBsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ICBsRecord>> queryICBsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ICBsRecord.collection,
      ICBsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ICBsRecord>> queryICBsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ICBsRecord.collection,
      ICBsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ICBResourcesRecords (as a Stream and as a Future).
Future<int> queryICBResourcesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ICBResourcesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ICBResourcesRecord>> queryICBResourcesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ICBResourcesRecord.collection(parent),
      ICBResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ICBResourcesRecord>> queryICBResourcesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ICBResourcesRecord.collection(parent),
      ICBResourcesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RowUnitRecords (as a Stream and as a Future).
Future<int> queryRowUnitRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RowUnitRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RowUnitRecord>> queryRowUnitRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RowUnitRecord.collection,
      RowUnitRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RowUnitRecord>> queryRowUnitRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RowUnitRecord.collection,
      RowUnitRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UnitOptionsRecords (as a Stream and as a Future).
Future<int> queryUnitOptionsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UnitOptionsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UnitOptionsRecord>> queryUnitOptionsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UnitOptionsRecord.collection(parent),
      UnitOptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UnitOptionsRecord>> queryUnitOptionsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UnitOptionsRecord.collection(parent),
      UnitOptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query TemplateV2Records (as a Stream and as a Future).
Future<int> queryTemplateV2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TemplateV2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TemplateV2Record>> queryTemplateV2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TemplateV2Record.collection,
      TemplateV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TemplateV2Record>> queryTemplateV2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TemplateV2Record.collection,
      TemplateV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SectionV2Records (as a Stream and as a Future).
Future<int> querySectionV2RecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SectionV2Record.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SectionV2Record>> querySectionV2Record({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SectionV2Record.collection(parent),
      SectionV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SectionV2Record>> querySectionV2RecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SectionV2Record.collection(parent),
      SectionV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query RowV2Records (as a Stream and as a Future).
Future<int> queryRowV2RecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RowV2Record.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RowV2Record>> queryRowV2Record({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RowV2Record.collection,
      RowV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RowV2Record>> queryRowV2RecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RowV2Record.collection,
      RowV2Record.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlowchartNodeRecords (as a Stream and as a Future).
Future<int> queryFlowchartNodeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlowchartNodeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlowchartNodeRecord>> queryFlowchartNodeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlowchartNodeRecord.collection,
      FlowchartNodeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlowchartNodeRecord>> queryFlowchartNodeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlowchartNodeRecord.collection,
      FlowchartNodeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteUsageRecords (as a Stream and as a Future).
Future<int> queryClicknoteUsageRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteUsageRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteUsageRecord>> queryClicknoteUsageRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteUsageRecord.collection,
      ClicknoteUsageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteUsageRecord>> queryClicknoteUsageRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteUsageRecord.collection,
      ClicknoteUsageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteTemplatesRecords (as a Stream and as a Future).
Future<int> queryClicknoteTemplatesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteTemplatesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteTemplatesRecord>> queryClicknoteTemplatesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteTemplatesRecord.collection,
      ClicknoteTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteTemplatesRecord>> queryClicknoteTemplatesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteTemplatesRecord.collection,
      ClicknoteTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteSectionsRecords (as a Stream and as a Future).
Future<int> queryClicknoteSectionsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteSectionsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteSectionsRecord>> queryClicknoteSectionsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteSectionsRecord.collection(parent),
      ClicknoteSectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteSectionsRecord>> queryClicknoteSectionsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteSectionsRecord.collection(parent),
      ClicknoteSectionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteRowsRecords (as a Stream and as a Future).
Future<int> queryClicknoteRowsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteRowsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteRowsRecord>> queryClicknoteRowsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteRowsRecord.collection,
      ClicknoteRowsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteRowsRecord>> queryClicknoteRowsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteRowsRecord.collection,
      ClicknoteRowsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteOptionsRecords (as a Stream and as a Future).
Future<int> queryClicknoteOptionsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteOptionsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteOptionsRecord>> queryClicknoteOptionsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteOptionsRecord.collection(parent),
      ClicknoteOptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteOptionsRecord>> queryClicknoteOptionsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteOptionsRecord.collection(parent),
      ClicknoteOptionsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteV2UsageRecords (as a Stream and as a Future).
Future<int> queryClicknoteV2UsageRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteV2UsageRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteV2UsageRecord>> queryClicknoteV2UsageRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteV2UsageRecord.collection,
      ClicknoteV2UsageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteV2UsageRecord>> queryClicknoteV2UsageRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteV2UsageRecord.collection,
      ClicknoteV2UsageRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NewsClicksRecords (as a Stream and as a Future).
Future<int> queryNewsClicksRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NewsClicksRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NewsClicksRecord>> queryNewsClicksRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NewsClicksRecord.collection,
      NewsClicksRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NewsClicksRecord>> queryNewsClicksRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NewsClicksRecord.collection,
      NewsClicksRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CommentsRecords (as a Stream and as a Future).
Future<int> queryCommentsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CommentsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CommentsRecord>> queryCommentsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CommentsRecord.collection(parent),
      CommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CommentsRecord>> queryCommentsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CommentsRecord.collection(parent),
      CommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ClicknoteCommentsRecords (as a Stream and as a Future).
Future<int> queryClicknoteCommentsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ClicknoteCommentsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ClicknoteCommentsRecord>> queryClicknoteCommentsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClicknoteCommentsRecord.collection,
      ClicknoteCommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClicknoteCommentsRecord>> queryClicknoteCommentsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClicknoteCommentsRecord.collection,
      ClicknoteCommentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ReflectionACPRecords (as a Stream and as a Future).
Future<int> queryReflectionACPRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ReflectionACPRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ReflectionACPRecord>> queryReflectionACPRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ReflectionACPRecord.collection,
      ReflectionACPRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ReflectionACPRecord>> queryReflectionACPRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ReflectionACPRecord.collection,
      ReflectionACPRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlattenedTemplatesRecords (as a Stream and as a Future).
Future<int> queryFlattenedTemplatesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlattenedTemplatesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlattenedTemplatesRecord>> queryFlattenedTemplatesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FlattenedTemplatesRecord.collection,
      FlattenedTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FlattenedTemplatesRecord>> queryFlattenedTemplatesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FlattenedTemplatesRecord.collection,
      FlattenedTemplatesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FlattenedTemplateCommentsRecords (as a Stream and as a Future).
Future<int> queryFlattenedTemplateCommentsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FlattenedTemplateCommentsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FlattenedTemplateCommentsRecord>>
    queryFlattenedTemplateCommentsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          FlattenedTemplateCommentsRecord.collection(parent),
          FlattenedTemplateCommentsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<FlattenedTemplateCommentsRecord>>
    queryFlattenedTemplateCommentsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FlattenedTemplateCommentsRecord.collection(parent),
          FlattenedTemplateCommentsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CpdCalendarRecords (as a Stream and as a Future).
Future<int> queryCpdCalendarRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CpdCalendarRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CpdCalendarRecord>> queryCpdCalendarRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CpdCalendarRecord.collection,
      CpdCalendarRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CpdCalendarRecord>> queryCpdCalendarRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CpdCalendarRecord.collection,
      CpdCalendarRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CommonPasswordsRecords (as a Stream and as a Future).
Future<int> queryCommonPasswordsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CommonPasswordsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CommonPasswordsRecord>> queryCommonPasswordsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CommonPasswordsRecord.collection,
      CommonPasswordsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CommonPasswordsRecord>> queryCommonPasswordsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CommonPasswordsRecord.collection,
      CommonPasswordsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AuditLogsRecords (as a Stream and as a Future).
Future<int> queryAuditLogsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AuditLogsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AuditLogsRecord>> queryAuditLogsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AuditLogsRecord.collection,
      AuditLogsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AuditLogsRecord>> queryAuditLogsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AuditLogsRecord.collection,
      AuditLogsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UsersRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUsersRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UsersRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUsersRecordData(email: email));
}
