import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cpd_item_model.dart';
export 'cpd_item_model.dart';

class CpdItemWidget extends StatefulWidget {
  const CpdItemWidget({
    super.key,
    required this.title,
    required this.url,
    required this.date,
    required this.description,
    required this.source,
  });

  final String? title;
  final String? url;
  final DateTime? date;
  final String? description;
  final String? source;

  @override
  State<CpdItemWidget> createState() => _CpdItemWidgetState();
}

class _CpdItemWidgetState extends State<CpdItemWidget> {
  late CpdItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpdItemModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
        child: Container(
          width: 300.0,
          decoration: BoxDecoration(
            color: _model.mouseRegionCPDItemHovered == true
                ? FlutterFlowTheme.of(context).primaryBackground
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
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 129.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.source == 'BMJ Best Practice') {
                              return Color(0x33338BFF);
                            } else if (widget.source ==
                                'British Journal of General Practice') {
                              return Color(0x32663399);
                            } else if (widget.source == 'InnovAiT') {
                              return Color(0x33D5E14D);
                            } else {
                              return Color(0x00000000);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: () {
                              if (widget.source == 'BMJ Best Practice') {
                                return Color(0xFF338BFF);
                              } else if (widget.source ==
                                  'British Journal of General Practice') {
                                return Color(0xFF663399);
                              } else if (widget.source == 'InnovAiT') {
                                return Color(0xFFD5E14D);
                              } else {
                                return Color(0x00000000);
                              }
                            }(),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            () {
                              if (widget.source == 'InnovAiT') {
                                return 'InnovAiT Journal';
                              } else if (widget.source ==
                                  'British Journal of General Practice') {
                                return 'British Journal of General Practice';
                              } else if (widget.source ==
                                  'BMJ Best Practice') {
                                return 'BMJ Best Practice';
                              } else {
                                return 'CPD';
                              }
                            }(),
                            textAlign: TextAlign.center,
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
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CPD_ITEM_COMP_Icon_4gsm6uui_ON_TAP');
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
                                      child: BottomSheetAddOrEditCpdWidget(
                                        title: widget.title,
                                        url: widget.url,
                                        notes: widget.description,
                                        source: widget.source,
                                        date: getCurrentTimestamp,
                                        endDate: getCurrentTimestamp,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Icon(
                              Icons.add_box,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 28.0,
                            ),
                          ),
                          Text(
                            'Add CPD',
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  'CPD_ITEM_COMP_Text_c1lm8qzp_ON_TAP');
                              logFirebaseEvent('Text_launch_u_r_l');
                              await launchURL(widget.url!);
                            },
                            child: Text(
                              valueOrDefault<String>(
                                widget.title != null && widget.title != ''
                                    ? valueOrDefault<String>(
                                        widget.title,
                                        'Unset',
                                      )
                                    : widget.description,
                                'Unset',
                              ),
                              maxLines: 3,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: _model.mouseRegionInnovAiTHovered ==
                                            true
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionInnovAiTHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionInnovAiTHovered = false);
                          }),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Published ${dateTimeFormat("MMMEd", widget.date)}',
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodySmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodySmallFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionCPDItemHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionCPDItemHovered = false);
      }),
    );
  }
}
