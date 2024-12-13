import '/flutter_flow/flutter_flow_util.dart';
import 'home26_list_features_widget.dart' show Home26ListFeaturesWidget;
import 'package:flutter/material.dart';

class Home26ListFeaturesModel
    extends FlutterFlowModel<Home26ListFeaturesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
