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

import 'package:firebase_auth/firebase_auth.dart';

Future enrollWithPhoneNumber(
  String phoneNumber,
  Future Function(String verificationId)? codeSentCallback,
) async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    throw Exception("No user is currently signed in.");
  }

  try {
    // Create a multi-factor session for MFA enrollment
    final multiFactorSession = await user.multiFactor.getSession();

    // Send an SMS code to the provided phone number
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      multiFactorSession: multiFactorSession,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Handle auto-verification if necessary
      },
      verificationFailed: (FirebaseAuthException e) {
        print('Verification failed: ${e.message}');
        throw Exception('Verification failed: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        if (codeSentCallback != null) {
          codeSentCallback(verificationId);
        }
        print("Verification ID sent: $verificationId");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("Code auto-retrieval timed out.");
      },
    );
  } catch (e) {
    print("Error during phone number enrollment: $e");
    throw Exception("Error during phone number enrollment: $e");
  }
}
