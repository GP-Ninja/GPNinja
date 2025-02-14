import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mims_article_model.dart';
export 'mims_article_model.dart';

class MimsArticleWidget extends StatefulWidget {
  const MimsArticleWidget({
    super.key,
    this.title,
    this.url,
    this.description,
    required this.date,
    required this.educationRef,
  });

  final String? title;
  final String? url;
  final String? description;
  final String? date;
  final DocumentReference? educationRef;

  @override
  State<MimsArticleWidget> createState() => _MimsArticleWidgetState();
}

class _MimsArticleWidgetState extends State<MimsArticleWidget> {
  late MimsArticleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MimsArticleModel());

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
      padding: EdgeInsets.all(10.0),
      child: StreamBuilder<EducationRecord>(
        stream: EducationRecord.getDocument(widget.educationRef!),
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

          final videoCardEducationRecord = snapshot.data!;

          return Container(
            width: 600.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x230E151B),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(0.0),
                    ),
                    child: Image.asset(
                      'assets/images/vv.gif',
                      width: 70.0,
                      height: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(120.0, 8.0, 12.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 460.0,
                                    decoration: BoxDecoration(),
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 4.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MIMS_ARTICLE_COMP_Text_le8eqh62_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_launch_u_r_l');
                                            await launchURL(widget.url!);
                                            if ((videoCardEducationRecord
                                                        .clicks ==
                                                    null) ||
                                                (videoCardEducationRecord
                                                        .clicks ==
                                                    0)) {
                                              logFirebaseEvent(
                                                  'Text_backend_call');

                                              await videoCardEducationRecord
                                                  .reference
                                                  .update(
                                                      createEducationRecordData(
                                                clicks: 1,
                                              ));
                                            } else {
                                              logFirebaseEvent(
                                                  'Text_backend_call');

                                              await widget.educationRef!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'clicks':
                                                        FieldValue.increment(1),
                                                  },
                                                ),
                                              });
                                            }

                                            logFirebaseEvent(
                                                'Text_backend_call');

                                            await NewsClicksRecord.collection
                                                .doc()
                                                .set(createNewsClicksRecordData(
                                                  newsTitle: widget.title,
                                                  userRef: currentUserReference,
                                                  timestamp:
                                                      getCurrentTimestamp,
                                                  newsRef: widget.educationRef,
                                                  newsSource: 'MIMS',
                                                  newsLink: widget.url,
                                                ));
                                          },
                                          child: Text(
                                            widget.title!.maybeHandleOverflow(
                                              maxChars: 80,
                                            ),
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  color:
                                                      _model.mouseRegionMIMSHeaderHovered ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLargeFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .mouseRegionMIMSHeaderHovered =
                                            true);
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .mouseRegionMIMSHeaderHovered =
                                            false);
                                      }),
                                    ),
                                  ),
                                  Container(
                                    width: 460.0,
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      widget.description!.maybeHandleOverflow(
                                        maxChars: 130,
                                        replacement: '…',
                                      ),
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF57636C),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Readex Pro'),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.date!,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Readex Pro'),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
