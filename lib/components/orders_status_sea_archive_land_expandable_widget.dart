import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orders_status_sea_archive_land_expandable_model.dart';
export 'orders_status_sea_archive_land_expandable_model.dart';

class OrdersStatusSeaArchiveLandExpandableWidget extends StatefulWidget {
  const OrdersStatusSeaArchiveLandExpandableWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
    required this.parameter3,
  }) : super(key: key);

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;

  @override
  _OrdersStatusSeaArchiveLandExpandableWidgetState createState() =>
      _OrdersStatusSeaArchiveLandExpandableWidgetState();
}

class _OrdersStatusSeaArchiveLandExpandableWidgetState
    extends State<OrdersStatusSeaArchiveLandExpandableWidget> {
  late OrdersStatusSeaArchiveLandExpandableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OrdersStatusSeaArchiveLandExpandableModel());

    _model.expandableController = ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: ExpandableNotifier(
          controller: _model.expandableController,
          child: ExpandablePanel(
            header: Text(
              widget.parameter3!,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Monsterrat',
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            collapsed: Container(),
            expanded: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'g131zpu1' /* Количество ящиков */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Monsterrat',
                              fontSize: 12.0,
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
                      widget.parameter1!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Monsterrat',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'zrvo6wzf' /* Количество паллет */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Monsterrat',
                              fontSize: 12.0,
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
                      widget.parameter2!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Monsterrat',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            theme: ExpandableThemeData(
              tapHeaderToExpand: false,
              tapBodyToExpand: true,
              tapBodyToCollapse: true,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              hasIcon: true,
              expandIcon: Icons.add,
              collapseIcon: Icons.close,
              iconSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
