import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_users_model.dart';
export 'all_users_model.dart';

class AllUsersWidget extends StatefulWidget {
  const AllUsersWidget({super.key});

  @override
  State<AllUsersWidget> createState() => _AllUsersWidgetState();
}

class _AllUsersWidgetState extends State<AllUsersWidget> {
  late AllUsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllUsersModel());

    _model.textController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Ellipse_66_(1).png',
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 244.0,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/Ellipse_69.png',
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  height: 244.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Add Friends to chat',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: const Color(0xFF95A1AC),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Lexend Deca'),
                                        ),
                                  ),
                                ),
                                Text(
                                  'Select the friends to chat.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Lexend Deca'),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 700.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Autocomplete<String>(
                                              initialValue: const TextEditingValue(),
                                              optionsBuilder:
                                                  (textEditingValue) {
                                                if (textEditingValue.text ==
                                                    '') {
                                                  return const Iterable<
                                                      String>.empty();
                                                }
                                                return <String>[]
                                                    .where((option) {
                                                  final lowercaseOption =
                                                      option.toLowerCase();
                                                  return lowercaseOption
                                                      .contains(textEditingValue
                                                          .text
                                                          .toLowerCase());
                                                });
                                              },
                                              optionsViewBuilder: (context,
                                                  onSelected, options) {
                                                return AutocompleteOptionsList(
                                                  textFieldKey:
                                                      _model.textFieldKey,
                                                  textController:
                                                      _model.textController!,
                                                  options: options.toList(),
                                                  onSelected: onSelected,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumFamily),
                                                          ),
                                                  textHighlightStyle:
                                                      const TextStyle(),
                                                  elevation: 4.0,
                                                  optionBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  optionHighlightColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  maxHeight: 200.0,
                                                );
                                              },
                                              onSelected: (String selection) {
                                                safeSetState(() => _model
                                                        .textFieldSelectedOption =
                                                    selection);
                                                FocusScope.of(context)
                                                    .unfocus();
                                              },
                                              fieldViewBuilder: (
                                                context,
                                                textEditingController,
                                                focusNode,
                                                onEditingComplete,
                                              ) {
                                                _model.textFieldFocusNode =
                                                    focusNode;

                                                _model.textController =
                                                    textEditingController;
                                                return TextFormField(
                                                  key: _model.textFieldKey,
                                                  controller:
                                                      textEditingController,
                                                  focusNode: focusNode,
                                                  onEditingComplete:
                                                      onEditingComplete,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textController',
                                                    const Duration(milliseconds: 0),
                                                    () async {
                                                      _model.searched = true;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Enter Name to Search..',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                                    enabledBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    prefixIcon: const Icon(
                                                      Icons.search,
                                                      size: 18.0,
                                                    ),
                                                    suffixIcon: _model
                                                            .textController!
                                                            .text
                                                            .isNotEmpty
                                                        ? InkWell(
                                                            onTap: () async {
                                                              _model
                                                                  .textController
                                                                  ?.clear();
                                                              _model.searched =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: const Icon(
                                                              Icons.clear,
                                                              color: Color(
                                                                  0xFF757575),
                                                              size: 22.0,
                                                            ),
                                                          )
                                                        : null,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ListView(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.goNamed(
                                                          'OtherProfiles',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 3.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 70.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: Color(
                                                                    0xFFDBE2E7),
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF04B974),
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .network(
                                                                        'data:image/jpeg;base64,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',
                                                                      ).image,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            60.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Jhon',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 15.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'jhon@gmail.com',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.goNamed(
                                                          'OtherProfiles',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 3.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 70.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: Color(
                                                                    0xFFDBE2E7),
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF04B974),
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .network(
                                                                        'https://images.hindustantimes.com/rf/image_size_800x600/HT/p2/2015/10/11/Pictures/_36b242f0-701e-11e5-a9e2-597b09296f58.jpg',
                                                                      ).image,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            60.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Isla',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 15.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Isla@gmail.com',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.goNamed(
                                                          'OtherProfiles',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 3.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 70.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: Color(
                                                                    0xFFDBE2E7),
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF04B974),
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .network(
                                                                        'data:image/jpeg;base64,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',
                                                                      ).image,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            60.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Alex',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 15.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'alex@gmail.com',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
