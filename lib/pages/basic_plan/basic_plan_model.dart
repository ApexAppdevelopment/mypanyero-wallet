import '/flutter_flow/flutter_flow_util.dart';
import 'basic_plan_widget.dart' show BasicPlanWidget;
import 'package:flutter/material.dart';

class BasicPlanModel extends FlutterFlowModel<BasicPlanWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-basic-revision widget.
  FocusNode? textFieldBasicRevisionFocusNode;
  TextEditingController? textFieldBasicRevisionTextController;
  String? Function(BuildContext, String?)?
      textFieldBasicRevisionTextControllerValidator;
  // State field(s) for TextField-basic-delivery-days widget.
  FocusNode? textFieldBasicDeliveryDaysFocusNode;
  TextEditingController? textFieldBasicDeliveryDaysTextController;
  String? Function(BuildContext, String?)?
      textFieldBasicDeliveryDaysTextControllerValidator;
  // State field(s) for TextField-basic-hours-work widget.
  FocusNode? textFieldBasicHoursWorkFocusNode;
  TextEditingController? textFieldBasicHoursWorkTextController;
  String? Function(BuildContext, String?)?
      textFieldBasicHoursWorkTextControllerValidator;
  // State field(s) for TextField-basic-Price widget.
  FocusNode? textFieldBasicPriceFocusNode;
  TextEditingController? textFieldBasicPriceTextController;
  String? Function(BuildContext, String?)?
      textFieldBasicPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldBasicRevisionFocusNode?.dispose();
    textFieldBasicRevisionTextController?.dispose();

    textFieldBasicDeliveryDaysFocusNode?.dispose();
    textFieldBasicDeliveryDaysTextController?.dispose();

    textFieldBasicHoursWorkFocusNode?.dispose();
    textFieldBasicHoursWorkTextController?.dispose();

    textFieldBasicPriceFocusNode?.dispose();
    textFieldBasicPriceTextController?.dispose();
  }
}
