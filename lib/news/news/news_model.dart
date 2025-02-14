import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'news_widget.dart' show NewsWidget;
import 'package:flutter/material.dart';

class NewsModel extends FlutterFlowModel<NewsWidget> {
  ///  Local state fields for this page.

  List<String> gpOnlineExclusions = [
    'How to deal with rare diseases in primary care',
    'Diabetes and the menopause – sponsored by Abbott',
    'Menopause - personal experiences, stigma and solutions with Dr Sarah Jarvis',
    'Understanding cow’s milk allergy in infants',
    'Prevention of influenza in older adults',
    'Stepping back from work? Key things to consider before you retire',
    'Are rare diseases really so rare?',
    'The impact of burnout on GP registrars',
    'The crucial role of primary care in tackling chronic insomnia',
    'How technology can help GP practices manage their COVID-19 and flu vaccination campaigns',
    'What is asynchronous prescribing and how can it help patients and NHS GPs?',
    'GP registrars: How to navigate your SCA exams with proven support',
    'Supporting doctors in distress: Dr Chaand Nagpaul in conversation with Dr Catherine Wills'
  ];
  void addToGpOnlineExclusions(String item) => gpOnlineExclusions.add(item);
  void removeFromGpOnlineExclusions(String item) =>
      gpOnlineExclusions.remove(item);
  void removeAtIndexFromGpOnlineExclusions(int index) =>
      gpOnlineExclusions.removeAt(index);
  void insertAtIndexInGpOnlineExclusions(int index, String item) =>
      gpOnlineExclusions.insert(index, item);
  void updateGpOnlineExclusionsAtIndex(int index, Function(String) updateFn) =>
      gpOnlineExclusions[index] = updateFn(gpOnlineExclusions[index]);

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  /// Query cache managers for this widget.

  final _gPOnlineManager = StreamRequestManager<List<EducationRecord>>();
  Stream<List<EducationRecord>> gPOnline({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EducationRecord>> Function() requestFn,
  }) =>
      _gPOnlineManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGPOnlineCache() => _gPOnlineManager.clear();
  void clearGPOnlineCacheKey(String? uniqueKey) =>
      _gPOnlineManager.clearRequest(uniqueKey);

  final _mimsManager = StreamRequestManager<List<EducationRecord>>();
  Stream<List<EducationRecord>> mims({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EducationRecord>> Function() requestFn,
  }) =>
      _mimsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMimsCache() => _mimsManager.clear();
  void clearMimsCacheKey(String? uniqueKey) =>
      _mimsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearGPOnlineCache();

    clearMimsCache();
  }
}
