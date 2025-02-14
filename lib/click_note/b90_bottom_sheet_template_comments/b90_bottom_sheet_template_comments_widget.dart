import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b95_bottom_sheet_placeholder_no_comment/b95_bottom_sheet_placeholder_no_comment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b90_bottom_sheet_template_comments_model.dart';
export 'b90_bottom_sheet_template_comments_model.dart';

class B90BottomSheetTemplateCommentsWidget extends StatefulWidget {
  const B90BottomSheetTemplateCommentsWidget({
    super.key,
    required this.clicknoteRef,
    required this.templateName,
  });

  final DocumentReference? clicknoteRef;
  final String? templateName;

  @override
  State<B90BottomSheetTemplateCommentsWidget> createState() =>
      _B90BottomSheetTemplateCommentsWidgetState();
}

class _B90BottomSheetTemplateCommentsWidgetState
    extends State<B90BottomSheetTemplateCommentsWidget> {
  late B90BottomSheetTemplateCommentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B90BottomSheetTemplateCommentsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 400.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Comments',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyLargeFamily),
                            ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'B90_BOTTOM_SHEET_TEMPLATE_COMMENTS_close');
                        logFirebaseEvent('IconButton_bottom_sheet');
                        Navigator.pop(context);
                      },
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
              StreamBuilder<List<FlattenedTemplateCommentsRecord>>(
                stream: queryFlattenedTemplateCommentsRecord(
                  parent: widget.clicknoteRef,
                  queryBuilder: (flattenedTemplateCommentsRecord) =>
                      flattenedTemplateCommentsRecord.orderBy('timestamp'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitPulse(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<FlattenedTemplateCommentsRecord>
                      listViewFlattenedTemplateCommentsRecordList =
                      snapshot.data!;
                  if (listViewFlattenedTemplateCommentsRecordList.isEmpty) {
                    return B95BottomSheetPlaceholderNoCommentWidget();
                  }

                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      12.0,
                      0,
                      12.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount:
                        listViewFlattenedTemplateCommentsRecordList.length,
                    separatorBuilder: (_, __) => SizedBox(height: 12.0),
                    itemBuilder: (context, listViewIndex) {
                      final listViewFlattenedTemplateCommentsRecord =
                          listViewFlattenedTemplateCommentsRecordList[
                              listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 36.0,
                                  height: 36.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        listViewFlattenedTemplateCommentsRecord
                                            .userName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                            "MMMEd",
                                            listViewFlattenedTemplateCommentsRecord
                                                .timestamp!),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          'Delete',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily),
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 0.0,
                                      tailLength: 0.0,
                                      waitDuration: Duration(milliseconds: 0),
                                      showDuration: Duration(milliseconds: 0),
                                      triggerMode: TooltipTriggerMode.tap,
                                      child: Visibility(
                                        visible:
                                            listViewFlattenedTemplateCommentsRecord
                                                    .userId ==
                                                currentUserReference,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'B90_BOTTOM_SHEET_TEMPLATE_COMMENTS_Icon_');
                                            logFirebaseEvent(
                                                'Icon_backend_call');
                                            await listViewFlattenedTemplateCommentsRecord
                                                .reference
                                                .delete();
                                          },
                                          child: Icon(
                                            Icons.close,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            Text(
                              listViewFlattenedTemplateCommentsRecord
                                  .commentText,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  listViewFlattenedTemplateCommentsRecord
                                      .likeCount
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    final likedByElement = currentUserReference;
                                    final likedByUpdate =
                                        listViewFlattenedTemplateCommentsRecord
                                                .likedBy
                                                .contains(likedByElement)
                                            ? FieldValue.arrayRemove(
                                                [likedByElement])
                                            : FieldValue.arrayUnion(
                                                [likedByElement]);
                                    await listViewFlattenedTemplateCommentsRecord
                                        .reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'liked_by': likedByUpdate,
                                        },
                                      ),
                                    });
                                    logFirebaseEvent(
                                        'B90_BOTTOM_SHEET_TEMPLATE_COMMENTS_Toggl');
                                    if (listViewFlattenedTemplateCommentsRecord
                                        .likedBy
                                        .contains(currentUserReference)) {
                                      logFirebaseEvent(
                                          'ToggleIcon_backend_call');

                                      await listViewFlattenedTemplateCommentsRecord
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'like_count':
                                                FieldValue.increment(-(1)),
                                            'liked_by': FieldValue.arrayRemove(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                    } else {
                                      logFirebaseEvent(
                                          'ToggleIcon_backend_call');

                                      await listViewFlattenedTemplateCommentsRecord
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'like_count':
                                                FieldValue.increment(1),
                                            'liked_by': FieldValue.arrayUnion(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                    }
                                  },
                                  value: listViewFlattenedTemplateCommentsRecord
                                      .likedBy
                                      .contains(currentUserReference),
                                  onIcon: Icon(
                                    Icons.favorite_sharp,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      );
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onFieldSubmitted: (_) async {
                              logFirebaseEvent(
                                  'B90_BOTTOM_SHEET_TEMPLATE_COMMENTS_TextF');
                              logFirebaseEvent('TextField_backend_call');

                              await FlattenedTemplateCommentsRecord.createDoc(
                                      widget.clicknoteRef!)
                                  .set({
                                ...createFlattenedTemplateCommentsRecordData(
                                  userName: currentUserDisplayName,
                                  commentText: _model.textController.text,
                                  timestamp: getCurrentTimestamp,
                                  likeCount: 1,
                                  userId: currentUserReference,
                                ),
                                ...mapToFirestore(
                                  {
                                    'liked_by': [currentUserReference],
                                  },
                                ),
                              });
                              logFirebaseEvent(
                                  'TextField_clear_text_fields_pin_codes');
                              safeSetState(() {
                                _model.textController?.clear();
                              });
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Leave a comment here...',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              alignLabelWithHint: false,
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 32.0, 16.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            minLines: 1,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.send,
                            color: FlutterFlowTheme.of(context).info,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'B90_BOTTOM_SHEET_TEMPLATE_COMMENTS_send_');
                            logFirebaseEvent('IconButton_backend_call');

                            await FlattenedTemplateCommentsRecord.createDoc(
                                    widget.clicknoteRef!)
                                .set({
                              ...createFlattenedTemplateCommentsRecordData(
                                userName: currentUserDisplayName,
                                commentText: _model.textController.text,
                                timestamp: getCurrentTimestamp,
                                likeCount: 1,
                                userId: currentUserReference,
                              ),
                              ...mapToFirestore(
                                {
                                  'liked_by': [currentUserReference],
                                },
                              ),
                            });
                            logFirebaseEvent(
                                'IconButton_clear_text_fields_pin_codes');
                            safeSetState(() {
                              _model.textController?.clear();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
