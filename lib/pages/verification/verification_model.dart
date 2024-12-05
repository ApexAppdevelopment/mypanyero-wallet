import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'verification_widget.dart' show VerificationWidget;
import 'package:flutter/material.dart';

class VerificationModel extends FlutterFlowModel<VerificationWidget> {
  ///  Local state fields for this page.

  bool resend = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField-reset-email widget.
  FocusNode? textFieldResetEmailFocusNode;
  TextEditingController? textFieldResetEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldResetEmailTextControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 120000;
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldResetEmailFocusNode?.dispose();
    textFieldResetEmailTextController?.dispose();

    timerController.dispose();
  }
}
