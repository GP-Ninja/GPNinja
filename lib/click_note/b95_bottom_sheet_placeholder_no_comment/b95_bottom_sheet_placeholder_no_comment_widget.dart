import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b95_bottom_sheet_placeholder_no_comment_model.dart';
export 'b95_bottom_sheet_placeholder_no_comment_model.dart';

class B95BottomSheetPlaceholderNoCommentWidget extends StatefulWidget {
  const B95BottomSheetPlaceholderNoCommentWidget({super.key});

  @override
  State<B95BottomSheetPlaceholderNoCommentWidget> createState() =>
      _B95BottomSheetPlaceholderNoCommentWidgetState();
}

class _B95BottomSheetPlaceholderNoCommentWidgetState
    extends State<B95BottomSheetPlaceholderNoCommentWidget> {
  late B95BottomSheetPlaceholderNoCommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => B95BottomSheetPlaceholderNoCommentModel());

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
      child: Text(
        'Let us know what you think!',
        textAlign: TextAlign.center,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              letterSpacing: 0.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
            ),
      ),
    );
  }
}
