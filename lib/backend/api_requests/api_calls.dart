import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCallLatest';

/// Start Stripe API Group Code

class StripeAPIGroup {
  static CreateCustomerCall createCustomerCall = CreateCustomerCall();
  static CreateCheckoutSessionCall createCheckoutSessionCall =
      CreateCheckoutSessionCall();
  static CustomerPortalCall customerPortalCall = CustomerPortalCall();
}

class CreateCustomerCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCustomerCall',
        'variables': {
          'email': email,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? stripeCusid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreateCheckoutSessionCall {
  Future<ApiCallResponse> call({
    String? customer = '',
    String? successUrl = '',
    String? cancelUrl = '',
    String? price = '',
    bool? hasUsedTrial,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCheckoutSessionCall',
        'variables': {
          'customer': customer,
          'successUrl': successUrl,
          'cancelUrl': cancelUrl,
          'price': price,
          'hasUsedTrial': hasUsedTrial,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class CustomerPortalCall {
  Future<ApiCallResponse> call({
    String? customer = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CustomerPortalCall',
        'variables': {
          'customer': customer,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

/// End Stripe API Group Code

class GoogleCustomSearchCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GoogleCustomSearchCall',
        'variables': {
          'q': q,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].htmlFormattedUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? formattedurl(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].formattedUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? htmltitle(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].htmlTitle''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? link(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? snippet(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? htmlsnippet(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].htmlSnippet''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  static List? nextpage(dynamic response) => getJsonField(
        response,
        r'''$.queries.nextPage''',
        true,
      ) as List?;
  static List? queriesrequest(dynamic response) => getJsonField(
        response,
        r'''$.queries.request''',
        true,
      ) as List?;
}

class CallOpenAICall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CallOpenAICall',
        'variables': {
          'prompt': prompt,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? output(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
