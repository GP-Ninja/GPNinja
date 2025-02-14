import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'local_resource_model.dart';
export 'local_resource_model.dart';

class LocalResourceWidget extends StatefulWidget {
  const LocalResourceWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter4,
    this.parameter5,
    this.parameter6,
    this.parameter7,
  });

  final String? parameter1;
  final bool? parameter2;
  final String? parameter4;
  final String? parameter5;
  final String? parameter6;
  final DocumentReference? parameter7;

  @override
  State<LocalResourceWidget> createState() => _LocalResourceWidgetState();
}

class _LocalResourceWidgetState extends State<LocalResourceWidget> {
  late LocalResourceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalResourceModel());

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
      child: AlignedTooltip(
        content: Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            widget.parameter5 == null || widget.parameter5 == ''
                ? widget.parameter1!
                : '${widget.parameter1}: ${widget.parameter5}',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyLargeFamily),
                ),
          ),
        ),
        offset: 4.0,
        preferredDirection: AxisDirection.down,
        borderRadius: BorderRadius.circular(8.0),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 4.0,
        tailBaseWidth: 24.0,
        tailLength: 12.0,
        waitDuration: Duration(milliseconds: 0),
        showDuration: Duration(milliseconds: 0),
        triggerMode: TooltipTriggerMode.tap,
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: Visibility(
            visible: widget.parameter2 == true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('LOCAL_RESOURCE_Container_763zheoi_ON_TAP');
                  if (widget.parameter5 != null && widget.parameter5 != '') {
                    if (widget.parameter6 != null &&
                        widget.parameter6 != '') {
                      logFirebaseEvent('Container_launch_u_r_l');
                      await launchURL(
                          '${widget.parameter6}${widget.parameter5}');
                      logFirebaseEvent('Container_backend_call');

                      var searchResultsRecordReference1 =
                          SearchResultsRecord.collection.doc();
                      await searchResultsRecordReference1
                          .set(createSearchResultsRecordData(
                        resultTime: getCurrentTimestamp,
                        resultUser: currentUserReference,
                        timesAccessed: 1,
                        source: 'Local',
                        resultHeading: 'Local:${widget.parameter5}',
                        resultLink:
                            '${widget.parameter6}${widget.parameter5}',
                      ));
                      _model.resultClickedLocal =
                          SearchResultsRecord.getDocumentFromData(
                              createSearchResultsRecordData(
                                resultTime: getCurrentTimestamp,
                                resultUser: currentUserReference,
                                timesAccessed: 1,
                                source: 'Local',
                                resultHeading: 'Local:${widget.parameter5}',
                                resultLink:
                                    '${widget.parameter6}${widget.parameter5}',
                              ),
                              searchResultsRecordReference1);
                      logFirebaseEvent('Container_backend_call');

                      await widget.parameter7!.update({
                        ...mapToFirestore(
                          {
                            'search_results': FieldValue.arrayUnion(
                                [_model.resultClickedLocal?.reference]),
                          },
                        ),
                      });
                    } else {
                      logFirebaseEvent('Container_launch_u_r_l');
                      await launchURL(widget.parameter4!);
                      logFirebaseEvent('Container_backend_call');

                      var searchResultsRecordReference2 =
                          SearchResultsRecord.collection.doc();
                      await searchResultsRecordReference2
                          .set(createSearchResultsRecordData(
                        resultTime: getCurrentTimestamp,
                        resultUser: currentUserReference,
                        timesAccessed: 1,
                        source: 'LocalBlank',
                        resultHeading: 'Local',
                        resultLink: widget.parameter4,
                      ));
                      _model.resultClickedLocalnosearch =
                          SearchResultsRecord.getDocumentFromData(
                              createSearchResultsRecordData(
                                resultTime: getCurrentTimestamp,
                                resultUser: currentUserReference,
                                timesAccessed: 1,
                                source: 'LocalBlank',
                                resultHeading: 'Local',
                                resultLink: widget.parameter4,
                              ),
                              searchResultsRecordReference2);
                      logFirebaseEvent('Container_backend_call');

                      await widget.parameter7!.update({
                        ...mapToFirestore(
                          {
                            'search_results': FieldValue.arrayUnion(
                                [_model.resultClickedLocalnosearch?.reference]),
                          },
                        ),
                      });
                    }
                  } else {
                    logFirebaseEvent('Container_launch_u_r_l');
                    await launchURL(widget.parameter4!);
                    logFirebaseEvent('Container_backend_call');

                    await SearchResultsRecord.collection
                        .doc()
                        .set(createSearchResultsRecordData(
                          resultTime: getCurrentTimestamp,
                          resultUser: currentUserReference,
                          timesAccessed: 1,
                          source: 'LocalBlank',
                          resultHeading: 'Local',
                          resultLink: widget.parameter4,
                        ));
                  }

                  safeSetState(() {});
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: _model.mouseRegionLocalResourceHovered == false
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).accent3,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: AutoSizeText(
                      widget.parameter1!,
                      textAlign: TextAlign.center,
                      minFontSize: 8.0,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Outfit'),
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          onEnter: ((event) async {
            safeSetState(() => _model.mouseRegionLocalResourceHovered = true);
          }),
          onExit: ((event) async {
            safeSetState(() => _model.mouseRegionLocalResourceHovered = false);
          }),
        ),
      ),
    );
  }
}
