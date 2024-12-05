import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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

  // State field(s) for TextField-signup-mobile-number widget.
  FocusNode? textFieldSignupMobileNumberFocusNode;
  TextEditingController? textFieldSignupMobileNumberTextController;
  final textFieldSignupMobileNumberMask =
      MaskTextInputFormatter(mask: '####-#######');
  String? Function(BuildContext, String?)?
      textFieldSignupMobileNumberTextControllerValidator;
  String? _textFieldSignupMobileNumberTextControllerValidator(
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

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
    textFieldSignupMobileNumberTextControllerValidator =
        _textFieldSignupMobileNumberTextControllerValidator;
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

    textFieldSignupMobileNumberFocusNode?.dispose();
    textFieldSignupMobileNumberTextController?.dispose();

    textFieldSignupPasswordFocusNode?.dispose();
    textFieldSignupPasswordTextController?.dispose();

    textFieldSignupConfirmPasswordFocusNode?.dispose();
    textFieldSignupConfirmPasswordTextController?.dispose();
  }
}
