import '/cpd/bottom_sheet_add_or_edit_cpd/bottom_sheet_add_or_edit_cpd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cpd_cal_item_model.dart';
export 'cpd_cal_item_model.dart';

class CpdCalItemWidget extends StatefulWidget {
  const CpdCalItemWidget({
    super.key,
    required this.organisation,
    required this.title,
    required this.description,
    required this.date,
    required this.cost,
    required this.url,
  });

  final String? organisation;
  final String? title;
  final String? description;
  final DateTime? date;
  final double? cost;
  final String? url;

  @override
  State<CpdCalItemWidget> createState() => _CpdCalItemWidgetState();
}

class _CpdCalItemWidgetState extends State<CpdCalItemWidget> {
  late CpdCalItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpdCalItemModel());

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
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Untitled_design.png',
                      width: 138.0,
                      height: 193.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                              'CPD_CAL_ITEM_COMP_Text_ub7285rd_ON_TAP');
                          logFirebaseEvent('Text_launch_u_r_l');
                          await launchURL(widget.url!);
                        },
                        child: Text(
                          valueOrDefault<String>(
                            widget.title,
                            'Unset',
                          ),
                          maxLines: 3,
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: _model.mouseRegionInnovAiTHovered == true
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                        safeSetState(
                            () => _model.mouseRegionInnovAiTHovered = false);
                      }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 20.0, 0.0),
                    child: Text(
                      dateTimeFormat("MMMEd", widget.date),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodySmallFamily),
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
                                'CPD_CAL_ITEM_COMP_Icon_nnwm78a5_ON_TAP');
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
                                      source: widget.organisation,
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
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
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
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionCPDItemHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionCPDItemHovered = false);
      }),
    );
  }
}
