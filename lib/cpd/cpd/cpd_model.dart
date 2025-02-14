import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'cpd_widget.dart' show CpdWidget;
import 'package:flutter/material.dart';

class CpdModel extends FlutterFlowModel<CpdWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;

  /// Query cache managers for this widget.

  final _myCPDManager = StreamRequestManager<List<CPDRecordRecord>>();
  Stream<List<CPDRecordRecord>> myCPD({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CPDRecordRecord>> Function() requestFn,
  }) =>
      _myCPDManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMyCPDCache() => _myCPDManager.clear();
  void clearMyCPDCacheKey(String? uniqueKey) =>
      _myCPDManager.clearRequest(uniqueKey);

  final _browseCPDManager = StreamRequestManager<List<CpdCalendarRecord>>();
  Stream<List<CpdCalendarRecord>> browseCPD({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CpdCalendarRecord>> Function() requestFn,
  }) =>
      _browseCPDManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBrowseCPDCache() => _browseCPDManager.clear();
  void clearBrowseCPDCacheKey(String? uniqueKey) =>
      _browseCPDManager.clearRequest(uniqueKey);

  final _browseCBD1Manager = StreamRequestManager<List<EducationRecord>>();
  Stream<List<EducationRecord>> browseCBD1({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<EducationRecord>> Function() requestFn,
  }) =>
      _browseCBD1Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBrowseCBD1Cache() => _browseCBD1Manager.clear();
  void clearBrowseCBD1CacheKey(String? uniqueKey) =>
      _browseCBD1Manager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearMyCPDCache();

    clearBrowseCPDCache();

    clearBrowseCBD1Cache();
  }
}
