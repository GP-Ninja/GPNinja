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

Future completeEnrollment(
  String? verificationId,
  String? smsCode,
) async {
  // Check if both verificationId and smsCode are provided
  if (verificationId == null || smsCode == null) {
    throw Exception("Verification ID and SMS code must be provided.");
  }

  // Get the current user
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    try {
      // Create a PhoneAuthCredential with the verification ID and SMS code
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      // Generate a MultiFactorAssertion using the credential
      final assertion = PhoneMultiFactorGenerator.getAssertion(credential);

      // Complete the enrollment by adding the phone as a second factor
      await user.multiFactor.enroll(assertion);

      // Log success message to the console
      print("MFA enrollment completed successfully for user: ${user.uid}");
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors, such as invalid SMS code
      print("Enrollment failed: ${e.message}");
      throw Exception("Enrollment failed: ${e.message}");
    }
  } else {
    throw Exception("No user is currently signed in.");
  }
}
