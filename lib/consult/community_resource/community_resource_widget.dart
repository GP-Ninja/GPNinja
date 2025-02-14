import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/consult/bottom_sheet_report_resource/bottom_sheet_report_resource_widget.dart';
import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'community_resource_model.dart';
export 'community_resource_model.dart';

class CommunityResourceWidget extends StatefulWidget {
  const CommunityResourceWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    required this.searchReference,
    required this.resourceRef,
  });

  final String? parameter1;
  final String? parameter2;
  final DocumentReference? searchReference;
  final DocumentReference? resourceRef;

  @override
  State<CommunityResourceWidget> createState() =>
      _CommunityResourceWidgetState();
}

class _CommunityResourceWidgetState extends State<CommunityResourceWidget> {
  late CommunityResourceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityResourceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'COMMUNITY_RESOURCE_Text_7vf8wv87_ON_TAP');
                            logFirebaseEvent('Text_launch_u_r_l');
                            await launchURL(widget.parameter2!);
                            logFirebaseEvent('Text_backend_call');

                            var searchResultsRecordReference =
                                SearchResultsRecord.collection.doc();
                            await searchResultsRecordReference
                                .set(createSearchResultsRecordData(
                              resultHeading: widget.parameter1,
                              resultLink: widget.parameter2,
                              resultTime: getCurrentTimestamp,
                              resultUser: currentUserReference,
                              timesAccessed: 1,
                              source: 'CommunityResult',
                            ));
                            _model.resultClicked =
                                SearchResultsRecord.getDocumentFromData(
                                    createSearchResultsRecordData(
                                      resultHeading: widget.parameter1,
                                      resultLink: widget.parameter2,
                                      resultTime: getCurrentTimestamp,
                                      resultUser: currentUserReference,
                                      timesAccessed: 1,
                                      source: 'CommunityResult',
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
                            widget.parameter1!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: _model.mouseRegionHovered == true
                                      ? FlutterFlowTheme.of(context).hover
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        widget.parameter2!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Container(
              width: 90.0,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 10.0, 0.0),
                        child: Container(
                          width: 70.0,
                          height: 20.0,
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: _model.mouseRegionCPDHovered == true,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'COMMUNITY_RESOURCE_Container_z03rco59_ON');
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
                                          title: widget.parameter1,
                                          url: widget.parameter2,
                                          source: 'Community Resource',
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
                        ),
                      ),
                    ),
                    AlignedTooltip(
                      content: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Report this resource',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                        ),
                      ),
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: Duration(milliseconds: 0),
                      showDuration: Duration(milliseconds: 0),
                      triggerMode: TooltipTriggerMode.tap,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 5.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'COMMUNITY_RESOURCE_Icon_u8ggyuqv_ON_TAP');
                            logFirebaseEvent('Icon_bottom_sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: BottomSheetReportResourceWidget(
                                      resourceReported: widget.resourceRef!,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Icon(
                            Icons.warning_amber_rounded,
                            color: FlutterFlowTheme.of(context).accent3,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionCPDHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionCPDHovered = false);
      }),
    );
  }
}
