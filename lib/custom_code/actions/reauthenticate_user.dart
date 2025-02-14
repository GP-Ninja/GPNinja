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

Future reauthenticateUser(
  String? email,
  String? password,
  Future Function()? onSuccess,
  Future Function(String? errorMessage)? onError,
) async {
  // Ensure email and password are provided
  if (email == null || password == null) {
    onError?.call("Email and password must be provided for reauthentication.");
    return;
  }

  // Get the current user
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    onError?.call("No user is currently signed in.");
    return;
  }

  try {
    // Create credentials using the email and password
    final credential =
        EmailAuthProvider.credential(email: email, password: password);

    // Reauthenticate the user with these credentials
    await user.reauthenticateWithCredential(credential);

    // If successful, call onSuccess
    await onSuccess?.call();
  } on FirebaseAuthException catch (e) {
    // Handle specific FirebaseAuth errors
    switch (e.code) {
      case 'invalid-email':
        onError?.call("The email address is badly formatted.");
        break;
      case 'wrong-password':
        onError?.call("The password is incorrect.");
        break;
      case 'user-mismatch':
        onError?.call("The credentials do not match the signed-in user.");
        break;
      case 'user-disabled':
        onError?.call("This user account has been disabled.");
        break;
      case 'too-many-requests':
        onError?.call("Too many attempts. Please try again later.");
        break;
      default:
        onError?.call("Reauthentication failed: ${e.message}");
    }
  } catch (e) {
    // Handle any other unexpected errors
    onError?.call("An unexpected error occurred: ${e.toString()}");
  }
}
