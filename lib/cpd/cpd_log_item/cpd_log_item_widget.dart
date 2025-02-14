import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cpd_log_item_model.dart';
export 'cpd_log_item_model.dart';

class CpdLogItemWidget extends StatefulWidget {
  const CpdLogItemWidget({
    super.key,
    this.title,
    this.url,
    this.notes,
    this.learning,
    this.duration,
    this.cpdRef,
    this.source,
    this.date,
    this.endDate,
    this.uploadedFile,
  });

  final String? title;
  final String? url;
  final String? notes;
  final String? learning;
  final double? duration;
  final DocumentReference? cpdRef;
  final String? source;
  final DateTime? date;
  final DateTime? endDate;
  final String? uploadedFile;

  @override
  State<CpdLogItemWidget> createState() => _CpdLogItemWidgetState();
}

class _CpdLogItemWidgetState extends State<CpdLogItemWidget> {
  late CpdLogItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpdLogItemModel());

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
          height: 70.0,
          decoration: BoxDecoration(
            color: _model.mouseRegionCPDLogHovered == true
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
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        dateTimeFormat("yMMMd", widget.date),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
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
                                      'CPD_LOG_ITEM_COMP_Text_h8xjytn8_ON_TAP');
                                  if (widget.url != null &&
                                      widget.url != '') {
                                    logFirebaseEvent('Text_launch_u_r_l');
                                    await launchURL(widget.url!);
                                  } else {
                                    logFirebaseEvent('Text_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'This CPD item does not have an associated web url',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  widget.title!.maybeHandleOverflow(
                                    maxChars: 45,
                                    replacement: '…',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color:
                                            _model.mouseRegionCPDHovered == true
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
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
                                    () => _model.mouseRegionCPDHovered = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionCPDHovered = false);
                              }),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      SizedBox(
                        height: 100.0,
                        child: VerticalDivider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ),
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '${formatNumber(
                              widget.duration,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                            )}h',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: _model.mouseRegionCPDLogHovered == true
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'CPD_LOG_ITEM_COMP_EDIT_BTN_ON_TAP');
                                logFirebaseEvent('Button_bottom_sheet');
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
                                          title: widget.title,
                                          url: widget.url,
                                          notes: widget.notes,
                                          learning: widget.learning,
                                          duration: widget.duration,
                                          cpdRef: widget.cpdRef,
                                          source: widget.source,
                                          date: widget.date,
                                          endDate: widget.endDate,
                                          uploadedFile: widget.uploadedFile,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'Edit',
                              icon: Icon(
                                Icons.edit,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                height: 27.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionCPDLogHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionCPDLogHovered = false);
      }),
    );
  }
}
