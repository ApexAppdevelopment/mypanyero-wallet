import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-signup-full-name widget.
  FocusNode? textFieldSignupFullNameFocusNode;
  TextEditingController? textFieldSignupFullNameTextController;
  String? Function(BuildContext, String?)?
      textFieldSignupFullNameTextControllerValidator;
  String? _textFieldSignupFullNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-signup-email widget.
  FocusNode? textFieldSignupEmailFocusNode;
  TextEditingController? textFieldSignupEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldSignupEmailTextControllerValidator;
  String? _textFieldSignupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email Address';
    }
    return null;
  }

  // State field(s) for sponsor-mobile-number widget.
  FocusNode? sponsorMobileNumberFocusNode;
  TextEditingController? sponsorMobileNumberTextController;
  final sponsorMobileNumberMask = MaskTextInputFormatter(mask: '####-#######');
  String? Function(BuildContext, String?)?
      sponsorMobileNumberTextControllerValidator;
  String? _sponsorMobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 12) {
      return 'Please enter at least 11 digits.';
    }
    if (val.length > 12) {
      return 'Please enter a maximum of 11 digits.';
    }

    return null;
  }

  // State field(s) for TextField-signup-mobile-number widget.
  FocusNode? textFieldSignupMobileNumberFocusNode;
  TextEditingController? textFieldSignupMobileNumberTextController;
  final textFieldSignupMobileNumberMask =
      MaskTextInputFormatter(mask: '####-#######');
  String? Function(BuildContext, String?)?
      textFieldSignupMobileNumberTextControllerValidator;
  // State field(s) for TextField-signup-password widget.
  FocusNode? textFieldSignupPasswordFocusNode;
  TextEditingController? textFieldSignupPasswordTextController;
  late bool textFieldSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldSignupPasswordTextControllerValidator;
  String? _textFieldSignupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Invalid password. Please enter a password with a \nminimum of 8 characters,\nincluding at least 1 number, \n1 capital letter, \nand 1 special character.';
    }

    if (!RegExp(
            '^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@\$!%*#?&])[A-Za-z\\d@\$!%*#?&]{8,}\$')
        .hasMatch(val)) {
      return 'Please ensure your password contains at least \n1 number, \n1 capital letter, \nand 1 special character';
    }
    return null;
  }

  // State field(s) for TextField-signup-confirm-password widget.
  FocusNode? textFieldSignupConfirmPasswordFocusNode;
  TextEditingController? textFieldSignupConfirmPasswordTextController;
  late bool textFieldSignupConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldSignupConfirmPasswordTextControllerValidator;
  String? _textFieldSignupConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Invalid password. Please enter a password with a \nminimum of 8 characters, \nincluding at least 1 number, \n1 capital letter, \nand 1 special character.';
    }

    if (!RegExp(
            '^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@\$!%*#?&])[A-Za-z\\d@\$!%*#?&]{8,}\$')
        .hasMatch(val)) {
      return 'Please ensure your password contains at least \n1 number, \n1 capital letter, \nand 1 special character';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldSignupFullNameTextControllerValidator =
        _textFieldSignupFullNameTextControllerValidator;
    textFieldSignupEmailTextControllerValidator =
        _textFieldSignupEmailTextControllerValidator;
    sponsorMobileNumberTextControllerValidator =
        _sponsorMobileNumberTextControllerValidator;
    textFieldSignupPasswordVisibility = false;
    textFieldSignupPasswordTextControllerValidator =
        _textFieldSignupPasswordTextControllerValidator;
    textFieldSignupConfirmPasswordVisibility = false;
    textFieldSignupConfirmPasswordTextControllerValidator =
        _textFieldSignupConfirmPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldSignupFullNameFocusNode?.dispose();
    textFieldSignupFullNameTextController?.dispose();

    textFieldSignupEmailFocusNode?.dispose();
    textFieldSignupEmailTextController?.dispose();

    sponsorMobileNumberFocusNode?.dispose();
    sponsorMobileNumberTextController?.dispose();

    textFieldSignupMobileNumberFocusNode?.dispose();
    textFieldSignupMobileNumberTextController?.dispose();

    textFieldSignupPasswordFocusNode?.dispose();
    textFieldSignupPasswordTextController?.dispose();

    textFieldSignupConfirmPasswordFocusNode?.dispose();
    textFieldSignupConfirmPasswordTextController?.dispose();
  }
}
