import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/no_active_orders_widget.dart';
import '/components/no_archieve_orders_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_land_model.dart';
export 'home_page_land_model.dart';

class HomePageLandWidget extends StatefulWidget {
  const HomePageLandWidget({Key? key}) : super(key: key);

  @override
  _HomePageLandWidgetState createState() => _HomePageLandWidgetState();
}

class _HomePageLandWidgetState extends State<HomePageLandWidget> {
  late HomePageLandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageLandModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().searchActiveLand1 = false;
        FFAppState().searchActiveLand2 = false;
      });
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.textFieldBatchController ??= TextEditingController();
    _model.textFieldBatchFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<List<BatchNumberRow>>(
      future: BatchNumberTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).white1,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).dark500,
                  ),
                ),
              ),
            ),
          );
        }
        List<BatchNumberRow> homePageLandBatchNumberRowList = snapshot.data!;
        return Title(
            title: 'homePageLand',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).white1,
                body: SafeArea(
                  top: true,
                  child: FutureBuilder<List<BatchNumberArchieveRow>>(
                    future: BatchNumberArchieveTable().queryRows(
                      queryFn: (q) => q,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).dark500,
                              ),
                            ),
                          ),
                        );
                      }
                      List<BatchNumberArchieveRow>
                          containerBatchNumberArchieveRowList = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 28.0, 16.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            await authManager.signOut();
                                            GoRouter.of(context)
                                                .clearRedirectLocation();

                                            context.goNamedAuth(
                                                'authPage', context.mounted);
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '7qpc8kaf' /* Доставка по cуше */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Monsterrat',
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'profileCabinet',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 300),
                                              ),
                                            },
                                          );
                                        },
                                        child: Icon(
                                          FFIcons
                                              .kprofileUserAvatarManPersonSvgrepoCom,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 32.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBBC1BD),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
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
                                                    setState(() {
                                                      _model.activeTab = '1';
                                                    });
                                                    setState(() {
                                                      _model
                                                          .textFieldBatchController
                                                          ?.clear();
                                                      _model.textController1
                                                          ?.clear();
                                                    });
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: _model.activeTab ==
                                                              '1'
                                                          ? Color(0xFF445147)
                                                          : Color(0x0057636C),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zhkurmsa' /* Активные заказы */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Monsterrat',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
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
                                                    setState(() {
                                                      _model.activeTab = '2';
                                                    });
                                                    setState(() {
                                                      _model
                                                          .textFieldBatchController
                                                          ?.clear();
                                                      _model.textController1
                                                          ?.clear();
                                                    });
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: _model.activeTab ==
                                                              '2'
                                                          ? Color(0xFF445147)
                                                          : Color(0x0057636C),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sucz05jq' /* Архивные заказы */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Monsterrat',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (_model.activeTab == '1')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 0.0, 16.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController1,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textController1',
                                                  Duration(milliseconds: 1),
                                                  () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .searchActiveLand1 =
                                                          true;
                                                      FFAppState()
                                                              .searchActiveLand2 =
                                                          false;
                                                    });
                                                  },
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .dark300,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    size: 22.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            borderWidth: 1.0,
                                            buttonSize: 45.0,
                                            icon: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState().searchActiveLand1 =
                                                    false;
                                              });
                                              setState(() {
                                                _model.textController1?.clear();
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (_model.activeTab == '2')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 16.0, 0.0, 16.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .textFieldBatchController,
                                                focusNode: _model
                                                    .textFieldBatchFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textFieldBatchController',
                                                  Duration(milliseconds: 1),
                                                  () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .searchActiveLand1 =
                                                          false;
                                                      FFAppState()
                                                              .searchActiveLand2 =
                                                          true;
                                                    });
                                                  },
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .dark300,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    size: 22.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .textFieldBatchControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            borderWidth: 1.0,
                                            buttonSize: 45.0,
                                            icon: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState().searchActiveLand2 =
                                                    false;
                                              });
                                              setState(() {
                                                _model.textFieldBatchController
                                                    ?.clear();
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if ((_model.activeTab == '1') &&
                                                    (FFAppState()
                                                            .searchActiveLand1 ==
                                                        false))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final ordersLandActive = homePageLandBatchNumberRowList
                                                            .where((e) => functions.listEmail(
                                                                e.emailOrderUser,
                                                                e.emailOrderUser1,
                                                                e.emailOrderUser2,
                                                                e.emailOrderUser3,
                                                                currentUserEmail))
                                                            .toList();
                                                        if (ordersLandActive
                                                            .isEmpty) {
                                                          return Center(
                                                            child: Container(
                                                              width: 200.0,
                                                              child:
                                                                  NoActiveOrdersWidget(),
                                                            ),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              ordersLandActive
                                                                  .length,
                                                          itemBuilder: (context,
                                                              ordersLandActiveIndex) {
                                                            final ordersLandActiveItem =
                                                                ordersLandActive[
                                                                    ordersLandActiveIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'orderStatusPageLand',
                                                                    queryParameters:
                                                                        {
                                                                      'orderLandRef':
                                                                          serializeParam(
                                                                        ordersLandActiveItem,
                                                                        ParamType
                                                                            .SupabaseRow,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 300),
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                FFIcons.kproductGoodsBoxDeliverySvgrepoCom,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 32.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandActiveItem.arrivalTime,
                                                                                    'Data is not filled ',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      ordersLandActiveItem.batchNumber,
                                                                                      'Data is not filled in',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Monsterrat',
                                                                                          fontSize: 16.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                      ruText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandRus(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                      enText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandEng(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                      trText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandTurc(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                    ),
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                if ((_model.activeTab == '1') &&
                                                    (FFAppState()
                                                            .searchActiveLand1 ==
                                                        true))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final ordersLandActive = functions
                                                                .searchBatchNumber(
                                                                    homePageLandBatchNumberRowList
                                                                        .toList(),
                                                                    _model
                                                                        .textController1
                                                                        .text)
                                                                ?.where((e) => functions.listEmail(
                                                                    e.emailOrderUser,
                                                                    e.emailOrderUser1,
                                                                    e.emailOrderUser2,
                                                                    e.emailOrderUser3,
                                                                    currentUserEmail))
                                                                .toList()
                                                                ?.toList() ??
                                                            [];
                                                        if (ordersLandActive
                                                            .isEmpty) {
                                                          return Center(
                                                            child: Container(
                                                              width: 200.0,
                                                              child:
                                                                  NoActiveOrdersWidget(),
                                                            ),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              ordersLandActive
                                                                  .length,
                                                          itemBuilder: (context,
                                                              ordersLandActiveIndex) {
                                                            final ordersLandActiveItem =
                                                                ordersLandActive[
                                                                    ordersLandActiveIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'orderStatusPageLand',
                                                                    queryParameters:
                                                                        {
                                                                      'orderLandRef':
                                                                          serializeParam(
                                                                        ordersLandActiveItem,
                                                                        ParamType
                                                                            .SupabaseRow,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 300),
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                FFIcons.kproductGoodsBoxDeliverySvgrepoCom,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 32.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandActiveItem.arrivalTime,
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      ordersLandActiveItem.batchNumber,
                                                                                      'Data is not filled in',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Monsterrat',
                                                                                          fontSize: 16.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                      ruText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandRus(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                      enText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandEng(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                      trText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandTurc(ordersLandActiveItem.arrivalTime, ordersLandActiveItem.terminalEntry, ordersLandActiveItem.quarantineTime, ordersLandActiveItem.sealingTime, ordersLandActiveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                    ),
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                if ((_model.activeTab == '2') &&
                                                    (FFAppState()
                                                            .searchActiveLand2 ==
                                                        false))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final ordersLandArchieve = containerBatchNumberArchieveRowList
                                                            .where((e) => functions.listEmail(
                                                                e.emailOrderUser,
                                                                e.emailOrderUser2,
                                                                e.emailOrderUser3,
                                                                e.emailOrderUser4,
                                                                currentUserEmail))
                                                            .toList();
                                                        if (ordersLandArchieve
                                                            .isEmpty) {
                                                          return Container(
                                                            width: 200.0,
                                                            child:
                                                                NoArchieveOrdersWidget(),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              ordersLandArchieve
                                                                  .length,
                                                          itemBuilder: (context,
                                                              ordersLandArchieveIndex) {
                                                            final ordersLandArchieveItem =
                                                                ordersLandArchieve[
                                                                    ordersLandArchieveIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'orderStatusSeaArchieveLand',
                                                                    queryParameters:
                                                                        {
                                                                      'orderStatusArchieveRefLand':
                                                                          serializeParam(
                                                                        ordersLandArchieveItem,
                                                                        ParamType
                                                                            .SupabaseRow,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 300),
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                FFIcons.kflagSvgrepoCom,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandArchieveItem.arrivalTime,
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandArchieveItem.batchNumber,
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 16.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                      ruText: functions.datetotextFuncLandRus(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                      enText: functions.datetotextFuncLandEng(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                      trText: functions.datetotextFuncLandTurc(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                    ),
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                FutureBuilder<
                                                    List<
                                                        BatchNumberArchieveRow>>(
                                                  future:
                                                      BatchNumberArchieveTable()
                                                          .queryRows(
                                                    queryFn: (q) => q,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .dark500,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BatchNumberArchieveRow>
                                                        containerBatchNumberArchieveRowList =
                                                        snapshot.data!;
                                                    return Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    );
                                                  },
                                                ),
                                                if ((_model.activeTab == '2') &&
                                                    (FFAppState()
                                                            .searchActiveLand2 ==
                                                        true))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final ordersLandArchieve = functions
                                                                .searchBatchNumberArchieve(
                                                                    containerBatchNumberArchieveRowList
                                                                        .toList(),
                                                                    _model
                                                                        .textFieldBatchController
                                                                        .text)
                                                                ?.where((e) => functions.listEmail(
                                                                    e.emailOrderUser,
                                                                    e.emailOrderUser2,
                                                                    e.emailOrderUser3,
                                                                    e.emailOrderUser4,
                                                                    currentUserEmail))
                                                                .toList()
                                                                ?.toList() ??
                                                            [];
                                                        if (ordersLandArchieve
                                                            .isEmpty) {
                                                          return Container(
                                                            width: 200.0,
                                                            child:
                                                                NoArchieveOrdersWidget(),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              ordersLandArchieve
                                                                  .length,
                                                          itemBuilder: (context,
                                                              ordersLandArchieveIndex) {
                                                            final ordersLandArchieveItem =
                                                                ordersLandArchieve[
                                                                    ordersLandArchieveIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'orderStatusSeaArchieveLand',
                                                                    queryParameters:
                                                                        {
                                                                      'orderStatusArchieveRefLand':
                                                                          serializeParam(
                                                                        ordersLandArchieveItem,
                                                                        ParamType
                                                                            .SupabaseRow,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 300),
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                FFIcons.kflagSvgrepoCom,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 28.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandArchieveItem.arrivalTime,
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    ordersLandArchieveItem.batchNumber,
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 16.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                      ruText: valueOrDefault<String>(
                                                                                        functions.datetotextFuncLandRus(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                        '0',
                                                                                      ),
                                                                                      enText: functions.datetotextFuncLandEng(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                      trText: functions.datetotextFuncLandTurc(ordersLandArchieveItem.arrivalTime, ordersLandArchieveItem.terminalEntry, ordersLandArchieveItem.quarantineTime, ordersLandArchieveItem.sealingTime, ordersLandArchieveItem.declarationSubmissionTime),
                                                                                    ),
                                                                                    'Data is not filled in',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Monsterrat',
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
