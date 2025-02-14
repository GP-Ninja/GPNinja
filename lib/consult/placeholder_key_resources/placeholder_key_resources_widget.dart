import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'placeholder_key_resources_model.dart';
export 'placeholder_key_resources_model.dart';

class PlaceholderKeyResourcesWidget extends StatefulWidget {
  const PlaceholderKeyResourcesWidget({super.key});

  @override
  State<PlaceholderKeyResourcesWidget> createState() =>
      _PlaceholderKeyResourcesWidgetState();
}

class _PlaceholderKeyResourcesWidgetState
    extends State<PlaceholderKeyResourcesWidget> {
  late PlaceholderKeyResourcesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceholderKeyResourcesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: FaIcon(
            FontAwesomeIcons.stethoscope,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 90.0,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'Results from key resources',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineSmallFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineSmallFamily),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
