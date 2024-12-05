import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_widget.dart' show FormWidget;
import 'package:flutter/material.dart';

class FormModel extends FlutterFlowModel<FormWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for category_dropdown widget.
  String? categoryDropdownValue;
  FormFieldController<String>? categoryDropdownValueController;
  // State field(s) for TextField-job-title widget.
  FocusNode? textFieldJobTitleFocusNode;
  TextEditingController? textFieldJobTitleTextController;
  String? Function(BuildContext, String?)?
      textFieldJobTitleTextControllerValidator;
  // State field(s) for TextField-job-description widget.
  FocusNode? textFieldJobDescriptionFocusNode;
  TextEditingController? textFieldJobDescriptionTextController;
  String? Function(BuildContext, String?)?
      textFieldJobDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldJobTitleFocusNode?.dispose();
    textFieldJobTitleTextController?.dispose();

    textFieldJobDescriptionFocusNode?.dispose();
    textFieldJobDescriptionTextController?.dispose();
  }
}
