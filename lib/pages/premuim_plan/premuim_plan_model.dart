import '/flutter_flow/flutter_flow_util.dart';
import 'premuim_plan_widget.dart' show PremuimPlanWidget;
import 'package:flutter/material.dart';

class PremuimPlanModel extends FlutterFlowModel<PremuimPlanWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-revision widget.
  FocusNode? textFieldRevisionFocusNode;
  TextEditingController? textFieldRevisionTextController;
  String? Function(BuildContext, String?)?
      textFieldRevisionTextControllerValidator;
  String? _textFieldRevisionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Revisions!';
    }

    return null;
  }

  // State field(s) for TextField-delivery-days widget.
  FocusNode? textFieldDeliveryDaysFocusNode;
  TextEditingController? textFieldDeliveryDaysTextController;
  String? Function(BuildContext, String?)?
      textFieldDeliveryDaysTextControllerValidator;
  String? _textFieldDeliveryDaysTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Delivery Date of Service!';
    }

    return null;
  }

  // State field(s) for TextField-hours-work widget.
  FocusNode? textFieldHoursWorkFocusNode;
  TextEditingController? textFieldHoursWorkTextController;
  String? Function(BuildContext, String?)?
      textFieldHoursWorkTextControllerValidator;
  String? _textFieldHoursWorkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Hours of Work!';
    }

    return null;
  }

  // State field(s) for TextField-Price widget.
  FocusNode? textFieldPriceFocusNode;
  TextEditingController? textFieldPriceTextController;
  String? Function(BuildContext, String?)?
      textFieldPriceTextControllerValidator;
  String? _textFieldPriceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Price of Premuim Package!';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldRevisionTextControllerValidator =
        _textFieldRevisionTextControllerValidator;
    textFieldDeliveryDaysTextControllerValidator =
        _textFieldDeliveryDaysTextControllerValidator;
    textFieldHoursWorkTextControllerValidator =
        _textFieldHoursWorkTextControllerValidator;
    textFieldPriceTextControllerValidator =
        _textFieldPriceTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldRevisionFocusNode?.dispose();
    textFieldRevisionTextController?.dispose();

    textFieldDeliveryDaysFocusNode?.dispose();
    textFieldDeliveryDaysTextController?.dispose();

    textFieldHoursWorkFocusNode?.dispose();
    textFieldHoursWorkTextController?.dispose();

    textFieldPriceFocusNode?.dispose();
    textFieldPriceTextController?.dispose();
  }
}
