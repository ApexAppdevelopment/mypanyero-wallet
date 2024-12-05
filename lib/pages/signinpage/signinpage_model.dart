import '/flutter_flow/flutter_flow_util.dart';
import 'signinpage_widget.dart' show SigninpageWidget;
import 'package:flutter/material.dart';

class SigninpageModel extends FlutterFlowModel<SigninpageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-signin-email widget.
  FocusNode? textFieldSigninEmailFocusNode;
  TextEditingController? textFieldSigninEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldSigninEmailTextControllerValidator;
  String? _textFieldSigninEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email address.';
    }
    return null;
  }

  // State field(s) for TextField-signin-password widget.
  FocusNode? textFieldSigninPasswordFocusNode;
  TextEditingController? textFieldSigninPasswordTextController;
  late bool textFieldSigninPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldSigninPasswordTextControllerValidator;
  String? _textFieldSigninPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    textFieldSigninEmailTextControllerValidator =
        _textFieldSigninEmailTextControllerValidator;
    textFieldSigninPasswordVisibility = false;
    textFieldSigninPasswordTextControllerValidator =
        _textFieldSigninPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldSigninEmailFocusNode?.dispose();
    textFieldSigninEmailTextController?.dispose();

    textFieldSigninPasswordFocusNode?.dispose();
    textFieldSigninPasswordTextController?.dispose();
  }
}
