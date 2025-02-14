import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'a1_clicknote_home_widget.dart' show A1ClicknoteHomeWidget;
import 'package:flutter/material.dart';

class A1ClicknoteHomeModel extends FlutterFlowModel<A1ClicknoteHomeWidget> {
  ///  Local state fields for this page.

  bool clickNoteNewView = true;

  bool myTemplates = false;

  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for SwitchView widget.
  bool? switchViewValue;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  List<FlattenedTemplatesRecord> simpleSearchResults = [];
  // State field(s) for TextFieldMyTemplate widget.
  FocusNode? textFieldMyTemplateFocusNode;
  TextEditingController? textFieldMyTemplateTextController;
  String? Function(BuildContext, String?)?
      textFieldMyTemplateTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in TextFieldMyTemplate widget.
  FlattenedTemplatesRecord? myNewTemplate1Copy;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FlattenedTemplatesRecord? myNewTemplate1CopyCopy;

  /// Query cache managers for this widget.

  final _myTemplatesCacheManager =
      StreamRequestManager<List<FlattenedTemplatesRecord>>();
  Stream<List<FlattenedTemplatesRecord>> myTemplatesCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FlattenedTemplatesRecord>> Function() requestFn,
  }) =>
      _myTemplatesCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMyTemplatesCacheCache() => _myTemplatesCacheManager.clear();
  void clearMyTemplatesCacheCacheKey(String? uniqueKey) =>
      _myTemplatesCacheManager.clearRequest(uniqueKey);

  final _communityTemplatesCacheManager =
      StreamRequestManager<List<FlattenedTemplatesRecord>>();
  Stream<List<FlattenedTemplatesRecord>> communityTemplatesCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FlattenedTemplatesRecord>> Function() requestFn,
  }) =>
      _communityTemplatesCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCommunityTemplatesCacheCache() =>
      _communityTemplatesCacheManager.clear();
  void clearCommunityTemplatesCacheCacheKey(String? uniqueKey) =>
      _communityTemplatesCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();

    textFieldMyTemplateFocusNode?.dispose();
    textFieldMyTemplateTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearMyTemplatesCacheCache();

    clearCommunityTemplatesCacheCache();
  }
}
