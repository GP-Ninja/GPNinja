import '/flutter_flow/flutter_flow_util.dart';
import 'verification_code_entry_widget.dart' show VerificationCodeEntryWidget;
import 'package:flutter/material.dart';

class VerificationCodeEntryModel
    extends FlutterFlowModel<VerificationCodeEntryWidget> {
  ///  Local state fields for this page.

  String? phoneNumber;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
