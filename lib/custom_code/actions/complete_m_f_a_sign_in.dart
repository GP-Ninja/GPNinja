// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

Future completeMFASignIn(
  String? smsCode,
  String? verificationId,
  dynamic resolver,
  Future Function()? onSuccess,
  Future Function(String? errorMessage)? onError,
) async {
  // Check if all necessary parameters are provided
  if (smsCode == null || verificationId == null || resolver == null) {
    onError?.call("SMS code, verification ID, and resolver are required.");
    return;
  }

  try {
    // Create a PhoneAuthCredential with the verification ID and SMS code
    final credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    // Generate a MultiFactorAssertion using the credential
    final assertion = PhoneMultiFactorGenerator.getAssertion(credential);

    // Cast resolver to MultiFactorResolver and use it to complete the MFA sign-in
    final userCredential =
        await (resolver as MultiFactorResolver).resolveSignIn(assertion);

    // Print a success message in the console
    print(
        "MFA sign-in completed successfully for user: ${userCredential.user?.uid}");

    // Call onSuccess callback to navigate to the homepage
    onSuccess?.call();
  } catch (e) {
    // Handle any errors that occur during the MFA sign-in process
    print("MFA sign-in failed: ${e.toString()}");

    // Call onError callback with the error message
    onError?.call("MFA sign-in failed: ${e.toString()}");
  }
}
