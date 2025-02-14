import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (createCustomer)] action in create_profile widget.
  ApiCallResponse? createCustomerResponse1;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DropDownRegion widget.
  String? dropDownRegionValue;
  FormFieldController<String>? dropDownRegionValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDownRegion widget.
  ICBsRecord? selectedICB;
  // State field(s) for DropDownReferralSource widget.
  String? dropDownReferralSourceValue;
  FormFieldController<String>? dropDownReferralSourceValueController;
  // State field(s) for CheckboxOptIn widget.
  bool? checkboxOptInValue;
  // State field(s) for CheckboxOptOut widget.
  bool? checkboxOptOutValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
