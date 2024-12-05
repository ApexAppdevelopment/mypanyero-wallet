import '/flutter_flow/flutter_flow_util.dart';
import 'all_users_widget.dart' show AllUsersWidget;
import 'package:flutter/material.dart';

class AllUsersModel extends FlutterFlowModel<AllUsersWidget> {
  ///  Local state fields for this page.

  bool searched = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}