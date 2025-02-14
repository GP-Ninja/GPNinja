import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  ICBsRecord? selectedICB;
  // State field(s) for TextFieldReferralLink widget.
  FocusNode? textFieldReferralLinkFocusNode;
  TextEditingController? textFieldReferralLinkTextController;
  String? Function(BuildContext, String?)?
      textFieldReferralLinkTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for MouseRegionSubscription widget.
  bool mouseRegionSubscriptionHovered = false;
  // Stores action output result for [Backend Call - API (customerPortal)] action in Text widget.
  ApiCallResponse? portalResponse;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldReferralLinkFocusNode?.dispose();
    textFieldReferralLinkTextController?.dispose();
  }
}
