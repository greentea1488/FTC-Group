import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_language_page_model.dart';
export 'change_language_page_model.dart';

class ChangeLanguagePageWidget extends StatefulWidget {
  const ChangeLanguagePageWidget({Key? key}) : super(key: key);

  @override
  _ChangeLanguagePageWidgetState createState() =>
      _ChangeLanguagePageWidgetState();
}

class _ChangeLanguagePageWidgetState extends State<ChangeLanguagePageWidget> {
  late ChangeLanguagePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeLanguagePageModel());

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

    return Title(
        title: 'changeLanguagePage',
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 14.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 40.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.chevron_left_rounded,
                                  color: FlutterFlowTheme.of(context).dark500,
                                  size: 40.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'profileCabinet',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 18.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jjq8wkil' /* Настройки */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Monsterrat',
                                      color:
                                          FlutterFlowTheme.of(context).dark500,
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'v3zufl1v' /* Язык приложения */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Monsterrat',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).white2,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().selectedLangRus = true;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangTurc = false;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangEng = false;
                                    });
                                    setAppLanguage(context, 'ru');
                                    await AppUsersTable().update(
                                      data: {
                                        'currentLanguage': 'RU',
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'uuid',
                                        currentUserUid,
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'yowemo7g' /* Русский */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Monsterrat',
                                              fontSize: 18.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      if (FFAppState().selectedLangRus == true)
                                        FaIcon(
                                          FontAwesomeIcons.check,
                                          color: FlutterFlowTheme.of(context)
                                              .dark300,
                                          size: 18.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().selectedLangRus = false;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangEng = false;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangTurc = true;
                                    });
                                    setAppLanguage(context, 'tr');
                                    await AppUsersTable().update(
                                      data: {
                                        'currentLanguage': 'TR',
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'uuid',
                                        currentUserUid,
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4e7qrwvc' /* Türkçe */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Monsterrat',
                                              fontSize: 18.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      if (FFAppState().selectedLangTurc == true)
                                        FaIcon(
                                          FontAwesomeIcons.check,
                                          color: FlutterFlowTheme.of(context)
                                              .dark300,
                                          size: 18.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().selectedLangRus = false;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangTurc = false;
                                    });
                                    setState(() {
                                      FFAppState().selectedLangEng = true;
                                    });
                                    setAppLanguage(context, 'en');
                                    await AppUsersTable().update(
                                      data: {
                                        'currentLanguage': 'EN',
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'uuid',
                                        currentUserUid,
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '5x3k3ekl' /* English */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Monsterrat',
                                              fontSize: 18.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      if (FFAppState().selectedLangEng == true)
                                        FaIcon(
                                          FontAwesomeIcons.check,
                                          color: FlutterFlowTheme.of(context)
                                              .dark300,
                                          size: 18.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
