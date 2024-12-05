import '/flutter_flow/flutter_flow_util.dart';
import 'standard_plan_widget.dart' show StandardPlanWidget;
import 'package:flutter/material.dart';

class StandardPlanModel extends FlutterFlowModel<StandardPlanWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-stan-revision widget.
  FocusNode? textFieldStanRevisionFocusNode;
  TextEditingController? textFieldStanRevisionTextController;
  String? Function(BuildContext, String?)?
      textFieldStanRevisionTextControllerValidator;
  String? _textFieldStanRevisionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Revisions!';
    }

    return null;
  }

  // State field(s) for TextField-stan-delivery-days widget.
  FocusNode? textFieldStanDeliveryDaysFocusNode;
  TextEditingController? textFieldStanDeliveryDaysTextController;
  String? Function(BuildContext, String?)?
      textFieldStanDeliveryDaysTextControllerValidator;
  String? _textFieldStanDeliveryDaysTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Delivery Days!';
    }

    return null;
  }

  // State field(s) for TextField-stan-hours-work widget.
  FocusNode? textFieldStanHoursWorkFocusNode;
  TextEditingController? textFieldStanHoursWorkTextController;
  String? Function(BuildContext, String?)?
      textFieldStanHoursWorkTextControllerValidator;
  String? _textFieldStanHoursWorkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please ENter Hours of Work!';
    }

    return null;
  }

  // State field(s) for TextField-stan-Price widget.
  FocusNode? textFieldStanPriceFocusNode;
  TextEditingController? textFieldStanPriceTextController;
  String? Function(BuildContext, String?)?
      textFieldStanPriceTextControllerValidator;
  String? _textFieldStanPriceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter Price of Standard Package!';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldStanRevisionTextControllerValidator =
        _textFieldStanRevisionTextControllerValidator;
    textFieldStanDeliveryDaysTextControllerValidator =
        _textFieldStanDeliveryDaysTextControllerValidator;
    textFieldStanHoursWorkTextControllerValidator =
        _textFieldStanHoursWorkTextControllerValidator;
    textFieldStanPriceTextControllerValidator =
        _textFieldStanPriceTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldStanRevisionFocusNode?.dispose();
    textFieldStanRevisionTextController?.dispose();

    textFieldStanDeliveryDaysFocusNode?.dispose();
    textFieldStanDeliveryDaysTextController?.dispose();

    textFieldStanHoursWorkFocusNode?.dispose();
    textFieldStanHoursWorkTextController?.dispose();

    textFieldStanPriceFocusNode?.dispose();
    textFieldStanPriceTextController?.dispose();
  }
}
