import '/components/empty_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empty_widget.dart' show EmptyWidget;
import 'package:flutter/material.dart';

class EmptyModel extends FlutterFlowModel<EmptyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for EmptyWidget component.
  late EmptyWidgetModel emptyWidgetModel;

  @override
  void initState(BuildContext context) {
    emptyWidgetModel = createModel(context, () => EmptyWidgetModel());
  }

  @override
  void dispose() {
    emptyWidgetModel.dispose();
  }
}
