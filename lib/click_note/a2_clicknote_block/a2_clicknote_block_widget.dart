import '/auth/firebase_auth/auth_util.dart';
import '/click_note/b96_bottom_sheet_subscribe/b96_bottom_sheet_subscribe_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'a2_clicknote_block_model.dart';
export 'a2_clicknote_block_model.dart';

class A2ClicknoteBlockWidget extends StatefulWidget {
  const A2ClicknoteBlockWidget({
    super.key,
    required this.image,
    required this.title,
    required this.templateRef,
  });

  final String? image;
  final String? title;
  final DocumentReference? templateRef;

  @override
  State<A2ClicknoteBlockWidget> createState() => _A2ClicknoteBlockWidgetState();
}

class _A2ClicknoteBlockWidgetState extends State<A2ClicknoteBlockWidget> {
  late A2ClicknoteBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A2ClicknoteBlockModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
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
                logFirebaseEvent('A2_CLICKNOTE_BLOCK_Container_e87gnvjk_ON');
                logFirebaseEvent('Container_navigate_to');

                context.pushNamed(
                  'b1_clicknote_note',
                  queryParameters: {
                    'templateRef': serializeParam(
                      widget.templateRef,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                );
              },
              child: Container(
                width: 326.0,
                height: 100.0,
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
                  borderRadius: BorderRadius.circular(valueOrDefault<double>(
                    FFAppState().largeTiles == true ? 16.0 : 10.0,
                    0.0,
                  )),
                  border: Border.all(
                    color: _model.mouseRegionHovered == true
                        ? FlutterFlowTheme.of(context).hover
                        : FlutterFlowTheme.of(context).accent3,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (((FFAppState().largeTiles == true) &&
                              (isiOS == false)) &&
                          responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                          ))
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.image!,
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Text(
                                        widget.title!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                Expanded(
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        widget.title!,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      ),
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
              safeSetState(() => _model.mouseRegionHovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered = false);
            }),
          ),
          if ((((valueOrDefault(
                                  currentUserDocument?.stripeSubscriptionStatus,
                                  '') ==
                              '') &&
                      (valueOrDefault<bool>(
                              currentUserDocument?.activeMembership, false) ==
                          false)) ||
                  ((valueOrDefault(
                              currentUserDocument?.stripeSubscriptionStatus,
                              '') !=
                          'active') &&
                      (valueOrDefault(
                              currentUserDocument?.stripeSubscriptionStatus,
                              '') !=
                          'trialing') &&
                      (valueOrDefault(
                                  currentUserDocument?.stripeSubscriptionStatus,
                                  '') !=
                              ''))) &&
              (widget.title != 'Acute sore throat'))
            AuthUserStreamWidget(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('A2_CLICKNOTE_BLOCK_Container_st31jqjg_ON');
                  logFirebaseEvent('Container_bottom_sheet');
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return WebViewAware(
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: B96BottomSheetSubscribeWidget(
                            iNotePage: true,
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Container(
                  width: 326.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x1F4741FF),
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
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: _model.mouseRegionHovered == true
                          ? FlutterFlowTheme.of(context).hover
                          : FlutterFlowTheme.of(context).accent3,
                      width: 1.0,
                    ),
                  ),
                  child: Icon(
                    Icons.lock_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 44.0,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
