import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/horizontal_navbar/horizontal_navbar_widget.dart';
import 'subscription_page_widget.dart' show SubscriptionPageWidget;
import 'package:flutter/material.dart';

class SubscriptionPageModel extends FlutterFlowModel<SubscriptionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for horizontal_navbar component.
  late HorizontalNavbarModel horizontalNavbarModel;
  // Stores action output result for [Backend Call - API (createCustomer)] action in Button widget.
  ApiCallResponse? createCustomerResponseOnPay;
  // Stores action output result for [Backend Call - API (createCheckoutSession)] action in Button widget.
  ApiCallResponse? createCheckout;

  @override
  void initState(BuildContext context) {
    horizontalNavbarModel = createModel(context, () => HorizontalNavbarModel());
  }

  @override
  void dispose() {
    horizontalNavbarModel.dispose();
  }
}
