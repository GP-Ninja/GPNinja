import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/click_note/b3_section_header/b3_section_header_widget.dart';
import '/click_note/b4_row/b4_row_widget.dart';
import '/click_note/b6_new_row/b6_new_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b2_section_model.dart';
export 'b2_section_model.dart';

class B2SectionWidget extends StatefulWidget {
  const B2SectionWidget({
    super.key,
    required this.sectionTitle,
    required this.sectionRows,
    required this.templateOwner,
    required this.pasteFromOption,
    required this.removeSelected,
    required this.passOnBottomSheetSelection,
    required this.templateRef,
    required this.sectionIndex,
    required this.sectionCount,
    required this.sections,
    required this.isCommunityTemplate,
  });

  final String? sectionTitle;
  final List<ClicknoteRowStruct>? sectionRows;
  final DocumentReference? templateOwner;
  final Future Function(String optionTextToPaste)? pasteFromOption;
  final Future Function(String optionTextToRemove)? removeSelected;
  final Future Function(String bottomSheetSelection)?
      passOnBottomSheetSelection;
  final DocumentReference? templateRef;
  final int? sectionIndex;
  final int? sectionCount;
  final List<ClicknoteSectionStruct>? sections;
  final bool? isCommunityTemplate;

  @override
  State<B2SectionWidget> createState() => _B2SectionWidgetState();
}

class _B2SectionWidgetState extends State<B2SectionWidget> {
  late B2SectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B2SectionModel());

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

    return Padding(
      padding: EdgeInsets.all(valueOrDefault<double>(
        FFAppState().compactView == true ? 0.0 : 10.0,
        0.0,
      )),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.b3SectionHeaderModel,
              updateCallback: () => safeSetState(() {}),
              child: B3SectionHeaderWidget(
                sectionTitle: widget.sectionTitle!,
                templateOwner: widget.templateOwner!,
                sectionIndex: widget.sectionIndex!,
                templateRef: widget.templateRef!,
                sectionCount: widget.sectionCount!,
                sections: widget.sections!,
              ),
            ),
            Builder(
              builder: (context) {
                final rows = widget.sectionRows!
                    .sortedList(keyOf: (e) => e.rowIndex, desc: false)
                    .toList();

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(rows.length, (rowsIndex) {
                    final rowsItem = rows[rowsIndex];
                    return B4RowWidget(
                      key: Key('Keybc8_${rowsIndex}_of_${rows.length}'),
                      rowTitle: rowsItem.rowText,
                      rowOptions: rowsItem.rowOptions,
                      templateOwner: widget.templateOwner!,
                      templateRef: widget.templateRef!,
                      sectionIndex: widget.sectionIndex!,
                      rowIndex: rowsItem.rowIndex,
                      rowHasUrl: rowsItem.rowHasUrl,
                      rowUrl: rowsItem.rowUrl,
                      rowUrlTitle: rowsItem.rowUrlDescription,
                      rowCount: widget.sectionRows!.length,
                      sections: widget.sections!,
                      isCommunityTemplate: widget.isCommunityTemplate!,
                      pasteFromOption: (optionTextToPaste) async {
                        logFirebaseEvent(
                            'B2_SECTION_Container_bc8clajj_CALLBACK');
                        logFirebaseEvent('b4_row_execute_callback');
                        await widget.pasteFromOption?.call(
                          optionTextToPaste,
                        );
                      },
                      removeSelected: (optionTextToRemove) async {
                        logFirebaseEvent(
                            'B2_SECTION_Container_bc8clajj_CALLBACK');
                        logFirebaseEvent('b4_row_execute_callback');
                        await widget.removeSelected?.call(
                          optionTextToRemove,
                        );
                      },
                      passOnBottomSheetSelection: (bottomSheetSelection) async {
                        logFirebaseEvent(
                            'B2_SECTION_Container_bc8clajj_CALLBACK');
                        logFirebaseEvent('b4_row_execute_callback');
                        await widget.passOnBottomSheetSelection?.call(
                          bottomSheetSelection,
                        );
                      },
                    );
                  }),
                );
              },
            ),
            if ((FFAppState().editMode == true) &&
                ((currentUserEmail == 'jamesjwalker01@gmail.com') ||
                    (currentUserEmail == 'therealcatmimi@gmail.com') ||
                    (currentUserEmail == 'roseshendi@gmail.com') ||
                    (widget.templateOwner == currentUserReference)))
              wrapWithModel(
                model: _model.b6NewRowModel,
                updateCallback: () => safeSetState(() {}),
                child: B6NewRowWidget(
                  sectionIndex: widget.sectionIndex!,
                  templateRef: widget.templateRef!,
                  sections: widget.sections!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
