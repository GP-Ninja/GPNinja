const axios = require("axios").default;
const qs = require("qs");

/// Start Stripe API Group Code

function createStripeAPIGroup() {
  return {
    baseUrl: `https://europe-west2-gpninja-1c716.cloudfunctions.net`,
    headers: {},
  };
}

async function _createCustomerCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var email = ffVariables["email"];
  const stripeAPIGroup = createStripeAPIGroup();

  var url = `${stripeAPIGroup.baseUrl}/stripeApiHandler`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "type": "createCustomer",
  "email": "${escapeStringForJson(email)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _createCheckoutSessionCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var customer = ffVariables["customer"];
  var successUrl = ffVariables["successUrl"];
  var cancelUrl = ffVariables["cancelUrl"];
  var price = ffVariables["price"];
  var hasUsedTrial = ffVariables["hasUsedTrial"];
  const stripeAPIGroup = createStripeAPIGroup();

  var url = `${stripeAPIGroup.baseUrl}/stripeApiHandler`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "type": "createCheckoutSession",
  "mode": "subscription",
  "success_url": "${escapeStringForJson(successUrl)}",
  "cancel_url": "${escapeStringForJson(cancelUrl)}",
  "price": "${escapeStringForJson(price)}",
  "customer": "${escapeStringForJson(customer)}",
  "has_used_trial": "${hasUsedTrial}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _customerPortalCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var customer = ffVariables["customer"];
  const stripeAPIGroup = createStripeAPIGroup();

  var url = `${stripeAPIGroup.baseUrl}/stripeApiHandler`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "type": "customerPortal",
  "customer": "${escapeStringForJson(customer)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End Stripe API Group Code

async function _googleCustomSearchCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var q = ffVariables["q"];

  var url = `https://europe-west2-gpninja-1c716.cloudfunctions.net/googleCustomSearch`;
  var headers = {};
  var params = { q: q };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _callOpenAICall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var prompt = ffVariables["prompt"];

  var url = `https://europe-west2-gpninja-1c716.cloudfunctions.net/callOpenAI`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "prompt": "${escapeStringForJson(prompt)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    GoogleCustomSearchCall: _googleCustomSearchCall,
    CallOpenAICall: _callOpenAICall,
    CreateCustomerCall: _createCustomerCall,
    CreateCheckoutSessionCall: _createCheckoutSessionCall,
    CustomerPortalCall: _customerPortalCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return val
    .replace(/[\\]/g, "\\\\")
    .replace(/["]/g, '\\"')
    .replace(/[\n]/g, "\\n")
    .replace(/[\t]/g, "\\t");
}

module.exports = { makeApiCall };
