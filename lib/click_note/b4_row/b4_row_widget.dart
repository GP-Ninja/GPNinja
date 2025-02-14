import '/backend/schema/structs/index.dart';
import '/click_note/b5_row_header/b5_row_header_widget.dart';
import '/click_note/b7_option/b7_option_widget.dart';
import '/click_note/b8_new_option/b8_new_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b4_row_model.dart';
export 'b4_row_model.dart';

class B4RowWidget extends StatefulWidget {
  const B4RowWidget({
    super.key,
    required this.rowTitle,
    required this.rowOptions,
    required this.templateOwner,
    required this.pasteFromOption,
    required this.removeSelected,
    required this.passOnBottomSheetSelection,
    required this.templateRef,
    required this.sectionIndex,
    required this.rowIndex,
    this.rowHasUrl,
    this.rowUrl,
    required this.rowUrlTitle,
    required this.rowCount,
    required this.sections,
    required this.isCommunityTemplate,
  });

  final String? rowTitle;
  final List<ClicknoteOptionStruct>? rowOptions;
  final DocumentReference? templateOwner;
  final Future Function(String optionTextToPaste)? pasteFromOption;
  final Future Function(String optionTextToRemove)? removeSelected;
  final Future Function(String bottomSheetSelection)?
      passOnBottomSheetSelection;
  final DocumentReference? templateRef;
  final int? sectionIndex;
  final int? rowIndex;
  final bool? rowHasUrl;
  final String? rowUrl;
  final String? rowUrlTitle;
  final int? rowCount;
  final List<ClicknoteSectionStruct>? sections;
  final bool? isCommunityTemplate;

  @override
  State<B4RowWidget> createState() => _B4RowWidgetState();
}

class _B4RowWidgetState extends State<B4RowWidget> {
  late B4RowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B4RowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: _model.mouseRegionHovered == true
                ? Color(0xFFFAFCFF)
                : FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Flex(
            direction: (FFAppState().compactView == false)
                ? Axis.horizontal
                : Axis.vertical,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.b5RowHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: B5RowHeaderWidget(
                    rowTitle: widget.rowTitle!,
                    templateOwner: widget.templateOwner!,
                    rowHasUrl: widget.rowHasUrl,
                    rowUrl: widget.rowUrl,
                    rowUrlTitle: widget.rowUrlTitle,
                    sectionIndex: widget.sectionIndex!,
                    rowIndex: widget.rowIndex!,
                    templateRef: widget.templateRef!,
                    rowCount: widget.rowCount!,
                    sections: widget.sections!,
                  ),
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 5.0),
                        child: Builder(
                          builder: (context) {
                            final options = widget.rowOptions!
                                .sortedList(
                                    keyOf: (e) => e.optionIndex, desc: false)
                                .toList();

                            return Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children:
                                  List.generate(options.length, (optionsIndex) {
                                final optionsItem = options[optionsIndex];
                                return B7OptionWidget(
                                  key: Key(
                                      'Key715_${optionsIndex}_of_${options.length}'),
                                  optionText: optionsItem.optionText,
                                  optionIndex: optionsItem.optionIndex,
                                  optionHasURL: optionsItem.optionHasUrl,
                                  optionURL: optionsItem.optionUrl,
                                  urlPropmt: optionsItem.urlPrompt,
                                  isMedication: optionsItem.isMedication,
                                  bnfURL: optionsItem.bnfUrl,
                                  bnfcURL: optionsItem.bnfcUrl,
                                  isRedFlag: optionsItem.optionIsRedFlag,
                                  hasNote: optionsItem.optionHasNote,
                                  optionNote: optionsItem.optionNote,
                                  noteColour: valueOrDefault<Color>(
                                    optionsItem.optionNoteColour,
                                    FlutterFlowTheme.of(context).tertiary,
                                  ),
                                  urlIsWebview: optionsItem.urlIsWebview,
                                  redLight: optionsItem.trafficLightRed,
                                  amberLight: optionsItem.trafficLightAmber,
                                  greenLight: optionsItem.trafficLightGreen,
                                  templateOwner: widget.templateOwner!,
                                  sectionIndex: widget.sectionIndex!,
                                  rowIndex: widget.rowIndex!,
                                  templateRef: widget.templateRef!,
                                  urlOptions: optionsItem.urlOptions,
                                  optionsCount: widget.rowOptions!.length,
                                  sections: widget.sections!,
                                  optionHasNote: optionsItem.optionHasNote,
                                  isCommunityTemplate:
                                      widget.isCommunityTemplate!,
                                  pasteFromOption: (optionTextToPaste) async {
                                    logFirebaseEvent(
                                        'B4_ROW_COMP_Container_715pqequ_CALLBACK');
                                    logFirebaseEvent(
                                        'b7_option_execute_callback');
                                    await widget.pasteFromOption?.call(
                                      optionTextToPaste,
                                    );
                                  },
                                  removeSelected: (optionTextToRemove) async {
                                    logFirebaseEvent(
                                        'B4_ROW_COMP_Container_715pqequ_CALLBACK');
                                    logFirebaseEvent(
                                        'b7_option_execute_callback');
                                    await widget.removeSelected?.call(
                                      optionTextToRemove,
                                    );
                                  },
                                  passOnBottomSheetSelection:
                                      (bottomSheetSelection) async {
                                    logFirebaseEvent(
                                        'B4_ROW_COMP_Container_715pqequ_CALLBACK');
                                    logFirebaseEvent(
                                        'b7_option_execute_callback');
                                    await widget.passOnBottomSheetSelection
                                        ?.call(
                                      bottomSheetSelection,
                                    );
                                  },
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: FFAppState().editMode == true,
                child: wrapWithModel(
                  model: _model.b8NewOptionModel,
                  updateCallback: () => safeSetState(() {}),
                  child: B8NewOptionWidget(
                    templateOwner: widget.templateOwner!,
                    templateRef: widget.templateRef!,
                    sectionIndex: widget.sectionIndex!,
                    rowIndex: widget.rowIndex!,
                    sections: widget.sections!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
