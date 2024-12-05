import '/components/reviews_star/reviews_star_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'other_profiles_widget.dart' show OtherProfilesWidget;
import 'package:flutter/material.dart';

class OtherProfilesModel extends FlutterFlowModel<OtherProfilesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for reviewsStar component.
  late ReviewsStarModel reviewsStarModel;

  @override
  void initState(BuildContext context) {
    reviewsStarModel = createModel(context, () => ReviewsStarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    reviewsStarModel.dispose();
  }
}
