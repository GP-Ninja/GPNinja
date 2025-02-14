import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SignUpWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SignUpWidget(),
          routes: [
            FFRoute(
              name: 'sign_in',
              path: 'signin',
              builder: (context, params) => SignInWidget(),
            ),
            FFRoute(
              name: 'sign_up',
              path: 'signup',
              builder: (context, params) => SignUpWidget(
                referralId: params.getParam(
                  'referralId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'create_profile',
              path: 'createprofile',
              requireAuth: true,
              builder: (context, params) => CreateProfileWidget(),
            ),
            FFRoute(
              name: 'forgot_password',
              path: 'forgotpassword',
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'reflect_gp_trainee_dashbaord',
              path: 'reflectdashboard',
              requireAuth: true,
              builder: (context, params) => ReflectGpTraineeDashbaordWidget(),
            ),
            FFRoute(
              name: 'reflect_gp_trainee',
              path: 'reflect',
              requireAuth: true,
              builder: (context, params) => ReflectGpTraineeWidget(
                reflectionreference: params.getParam(
                  'reflectionreference',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['reflections'],
                ),
              ),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'profile')
                  : ProfileWidget(),
            ),
            FFRoute(
              name: 'subscription_page',
              path: 'subscribe',
              requireAuth: true,
              builder: (context, params) => SubscriptionPageWidget(),
            ),
            FFRoute(
              name: 'my_cases',
              path: 'mycases',
              requireAuth: true,
              builder: (context, params) => MyCasesWidget(),
            ),
            FFRoute(
              name: 'successful_payment',
              path: 'successfulpayment',
              requireAuth: true,
              builder: (context, params) => SuccessfulPaymentWidget(
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'failed_payment',
              path: 'failedpayment',
              requireAuth: true,
              builder: (context, params) => FailedPaymentWidget(),
            ),
            FFRoute(
              name: 'homepage',
              path: 'homepage',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'homepage')
                  : HomepageWidget(),
            ),
            FFRoute(
              name: 'consult',
              path: 'Consult',
              requireAuth: true,
              builder: (context, params) => ConsultWidget(
                reflectionreference: params.getParam(
                  'reflectionreference',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['reflections'],
                ),
                searchTerm: params.getParam(
                  'searchTerm',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'create_question',
              path: 'createQuestion',
              requireAuth: true,
              builder: (context, params) => CreateQuestionWidget(),
            ),
            FFRoute(
              name: 'edit_questions',
              path: 'editQuestions',
              requireAuth: true,
              builder: (context, params) => EditQuestionsWidget(),
            ),
            FFRoute(
              name: 'question_view',
              path: 'questionView',
              requireAuth: true,
              builder: (context, params) => QuestionViewWidget(
                questionList: params.getParam<DocumentReference>(
                  'questionList',
                  ParamType.DocumentReference,
                  isList: true,
                  collectionNamePath: ['questions'],
                ),
              ),
            ),
            FFRoute(
              name: 'quiz_complete_summary',
              path: 'quizCompleteSummary',
              requireAuth: true,
              asyncParams: {
                'quizRef': getDoc(['quizzes'], QuizzesRecord.fromSnapshot),
              },
              builder: (context, params) => QuizCompleteSummaryWidget(
                quizRef: params.getParam(
                  'quizRef',
                  ParamType.Document,
                ),
                totalPoints: params.getParam(
                  'totalPoints',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'learn_home',
              path: 'learnHome',
              requireAuth: true,
              builder: (context, params) => LearnHomeWidget(),
            ),
            FFRoute(
              name: 'question_review',
              path: 'questionReview',
              requireAuth: true,
              builder: (context, params) => QuestionReviewWidget(
                selectedResponseIndex: params.getParam(
                  'selectedResponseIndex',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'a1_clicknote_home',
              path: 'clicknote',
              requireAuth: true,
              builder: (context, params) => A1ClicknoteHomeWidget(),
            ),
            FFRoute(
              name: 'recall',
              path: 'recall',
              requireAuth: true,
              builder: (context, params) => RecallWidget(
                selectedCategoryId: params.getParam(
                  'selectedCategoryId',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['flashcard_categories'],
                ),
                selectedCategotyName: params.getParam(
                  'selectedCategotyName',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'consult_history',
              path: 'consulthistory',
              requireAuth: true,
              builder: (context, params) => ConsultHistoryWidget(),
            ),
            FFRoute(
              name: 'admin_search_dashboard',
              path: 'iConsultDashboardCopy9294947298404',
              requireAuth: true,
              builder: (context, params) => AdminSearchDashboardWidget(),
            ),
            FFRoute(
              name: 'flowchart',
              path: 'flowchart',
              requireAuth: true,
              builder: (context, params) => FlowchartWidget(
                initialNode: params.getParam(
                  'initialNode',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['flowchartNode'],
                ),
              ),
            ),
            FFRoute(
              name: 'onboard_offer',
              path: 'welcomesubscribe',
              requireAuth: true,
              builder: (context, params) => OnboardOfferWidget(),
            ),
            FFRoute(
              name: 'flowchart_embed',
              path: 'flowchartEmbed',
              requireAuth: true,
              builder: (context, params) => FlowchartEmbedWidget(),
            ),
            FFRoute(
              name: 'news',
              path: 'news',
              requireAuth: true,
              builder: (context, params) => NewsWidget(),
            ),
            FFRoute(
              name: 'cpd',
              path: 'CPD',
              requireAuth: true,
              builder: (context, params) => CpdWidget(),
            ),
            FFRoute(
              name: 'jobs',
              path: 'jobs',
              requireAuth: true,
              builder: (context, params) => JobsWidget(),
            ),
            FFRoute(
              name: 'onboard_subscribe_successful',
              path: 'onboardSubscribeSuccessful',
              requireAuth: true,
              builder: (context, params) => OnboardSubscribeSuccessfulWidget(),
            ),
            FFRoute(
              name: 'payment_successful',
              path: 'paymentsuccessful',
              requireAuth: true,
              builder: (context, params) => PaymentSuccessfulWidget(),
            ),
            FFRoute(
              name: 'reflect_acp',
              path: 'reflectACP',
              requireAuth: true,
              builder: (context, params) => ReflectAcpWidget(
                reflectionreference: params.getParam(
                  'reflectionreference',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['reflections'],
                ),
              ),
            ),
            FFRoute(
              name: 'reflect_home',
              path: 'reflecthome',
              requireAuth: true,
              builder: (context, params) => ReflectHomeWidget(
                reflectionreference: params.getParam(
                  'reflectionreference',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['reflections'],
                ),
              ),
            ),
            FFRoute(
              name: 'reauthenticate_user',
              path: 'reauthenticateUser',
              requireAuth: true,
              builder: (context, params) => ReauthenticateUserWidget(),
            ),
            FFRoute(
              name: 'collect_and_verify_phone_number',
              path: 'collectAndVerifyPhoneNumber',
              requireAuth: true,
              builder: (context, params) => CollectAndVerifyPhoneNumberWidget(),
            ),
            FFRoute(
              name: 'verification_code_entry',
              path: 'verificationCodeEntry',
              requireAuth: true,
              builder: (context, params) => VerificationCodeEntryWidget(),
            ),
            FFRoute(
              name: 'mfa_login',
              path: 'mfaLogin',
              builder: (context, params) => MfaLoginWidget(),
            ),
            FFRoute(
              name: 'b1_clicknote_note',
              path: 'clicknoteViewFlattened',
              requireAuth: true,
              builder: (context, params) => B1ClicknoteNoteWidget(
                templateRef: params.getParam(
                  'templateRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['flattened_templates'],
                ),
              ),
            ),
            FFRoute(
              name: 'test',
              path: 'test',
              requireAuth: true,
              builder: (context, params) => TestWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signup';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/GP_Ninja_Logo_(Transparent_Background).png',
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
