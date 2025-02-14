import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/click_note/b96_bottom_sheet_subscribe/b96_bottom_sheet_subscribe_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'a3_clicknote_block_small_model.dart';
export 'a3_clicknote_block_small_model.dart';

class A3ClicknoteBlockSmallWidget extends StatefulWidget {
  const A3ClicknoteBlockSmallWidget({
    super.key,
    required this.image,
    required this.title,
    required this.templateRef,
    required this.userRef,
  });

  final String? image;
  final String? title;
  final DocumentReference? templateRef;
  final DocumentReference? userRef;

  @override
  State<A3ClicknoteBlockSmallWidget> createState() =>
      _A3ClicknoteBlockSmallWidgetState();
}

class _A3ClicknoteBlockSmallWidgetState
    extends State<A3ClicknoteBlockSmallWidget> {
  late A3ClicknoteBlockSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A3ClicknoteBlockSmallModel());

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
                logFirebaseEvent('A3_CLICKNOTE_BLOCK_SMALL_Container_agrxu');
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
                height: 68.0,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
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
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
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
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
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
                  logFirebaseEvent('A3_CLICKNOTE_BLOCK_SMALL_Container_j0h5k');
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
                  width: double.infinity,
                  height: 68.0,
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
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 20.0, 0.0),
                child: StreamBuilder<UsersRecord>(
                  stream: UsersRecord.getDocument(widget.userRef!),
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

                    final textUsersRecord = snapshot.data!;

                    return Text(
                      'Author: ${textUsersRecord.displayName}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
