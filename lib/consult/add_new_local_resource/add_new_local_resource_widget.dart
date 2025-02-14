import '/consult/bottom_sheet_local_resource/bottom_sheet_local_resource_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_new_local_resource_model.dart';
export 'add_new_local_resource_model.dart';

class AddNewLocalResourceWidget extends StatefulWidget {
  const AddNewLocalResourceWidget({super.key});

  @override
  State<AddNewLocalResourceWidget> createState() =>
      _AddNewLocalResourceWidgetState();
}

class _AddNewLocalResourceWidgetState extends State<AddNewLocalResourceWidget> {
  late AddNewLocalResourceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewLocalResourceModel());

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
            'We don\'t yet have your local guidelines - click here to add!',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('ADD_NEW_LOCAL_RESOURCE_Container_pnkmf7h');
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
                        child: BottomSheetLocalResourceWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
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
                    'Add new',
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
