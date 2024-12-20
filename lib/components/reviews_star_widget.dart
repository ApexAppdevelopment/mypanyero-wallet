import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'reviews_star_model.dart';
export 'reviews_star_model.dart';

class ReviewsStarWidget extends StatefulWidget {
  const ReviewsStarWidget({
    super.key,
    required this.rating,
  });

  final double? rating;

  @override
  State<ReviewsStarWidget> createState() => _ReviewsStarWidgetState();
}

class _ReviewsStarWidgetState extends State<ReviewsStarWidget> {
  late ReviewsStarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewsStarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      onRatingUpdate: (newValue) =>
          safeSetState(() => _model.ratingBarValue = newValue),
      itemBuilder: (context, index) => Icon(
        Icons.star_rounded,
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      direction: Axis.horizontal,
      initialRating: _model.ratingBarValue ??= widget.rating!,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 10.0,
      glowColor: FlutterFlowTheme.of(context).tertiary,
    );
  }
}
