import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'google_result_model.dart';
export 'google_result_model.dart';

class GoogleResultWidget extends StatefulWidget {
  const GoogleResultWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    required this.searchReference,
  });

  final dynamic parameter1;
  final dynamic parameter2;
  final dynamic parameter3;
  final dynamic parameter4;
  final DocumentReference? searchReference;

  @override
  State<GoogleResultWidget> createState() => _GoogleResultWidgetState();
}

class _GoogleResultWidgetState extends State<GoogleResultWidget> {
  late GoogleResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoogleResultModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 160.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'GOOGLE_RESULT_COMP_Text_dq5vzon1_ON_TAP');
                              logFirebaseEvent('Text_launch_u_r_l');
                              await launchURL(widget.parameter2!.toString());
                            },
                            child: Text(
                              widget.parameter1!
                                  .toString()
                                  .maybeHandleOverflow(
                                    maxChars: 60,
                                  ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                        if (_model.mouseRegionCPDHovered == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'GOOGLE_RESULT_Container_4a5xgw8y_ON_TAP');
                                logFirebaseEvent('Container_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: BottomSheetAddOrEditCpdWidget(
                                          title: widget.parameter3?.toString(),
                                          url: widget.parameter1?.toString(),
                                          notes: widget.parameter4?.toString(),
                                          source: 'Web',
                                          date: getCurrentTimestamp,
                                          endDate: getCurrentTimestamp,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                width: 70.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                    color: Color(0x9D57636C),
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Add CPD',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'GOOGLE_RESULT_COMP_Text_3qtrtg6v_ON_TAP');
                        logFirebaseEvent('Text_launch_u_r_l');
                        await launchURL(widget.parameter2!.toString());
                        logFirebaseEvent('Text_backend_call');

                        var searchResultsRecordReference =
                            SearchResultsRecord.collection.doc();
                        await searchResultsRecordReference
                            .set(createSearchResultsRecordData(
                          resultHeading: widget.parameter3?.toString(),
                          resultDescription: widget.parameter4?.toString(),
                          resultLink: widget.parameter1?.toString(),
                          resultTime: getCurrentTimestamp,
                          resultUser: currentUserReference,
                          timesAccessed: 1,
                          source: 'CKSResult',
                        ));
                        _model.resultClicked =
                            SearchResultsRecord.getDocumentFromData(
                                createSearchResultsRecordData(
                                  resultHeading: widget.parameter3?.toString(),
                                  resultDescription:
                                      widget.parameter4?.toString(),
                                  resultLink: widget.parameter1?.toString(),
                                  resultTime: getCurrentTimestamp,
                                  resultUser: currentUserReference,
                                  timesAccessed: 1,
                                  source: 'CKSResult',
                                ),
                                searchResultsRecordReference);
                        logFirebaseEvent('Text_backend_call');

                        await widget.searchReference!.update({
                          ...mapToFirestore(
                            {
                              'search_results': FieldValue.arrayUnion(
                                  [_model.resultClicked?.reference]),
                            },
                          ),
                        });

                        safeSetState(() {});
                      },
                      child: Text(
                        widget.parameter3!.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: _model.mouseRegionHovered == true
                                  ? FlutterFlowTheme.of(context).hover
                                  : FlutterFlowTheme.of(context).tertiary,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered = false);
                    }),
                  ),
                  Text(
                    widget.parameter4!.toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ],
              ),
            ),
          ),
          onEnter: ((event) async {
            safeSetState(() => _model.mouseRegionCPDHovered = true);
          }),
          onExit: ((event) async {
            safeSetState(() => _model.mouseRegionCPDHovered = false);
          }),
        ),
      ),
    );
  }
}
