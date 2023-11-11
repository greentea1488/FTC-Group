import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_archieve_orders_model.dart';
export 'no_archieve_orders_model.dart';

class NoArchieveOrdersWidget extends StatefulWidget {
  const NoArchieveOrdersWidget({Key? key}) : super(key: key);

  @override
  _NoArchieveOrdersWidgetState createState() => _NoArchieveOrdersWidgetState();
}

class _NoArchieveOrdersWidgetState extends State<NoArchieveOrdersWidget> {
  late NoArchieveOrdersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoArchieveOrdersModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                FFLocalizations.of(context).getText(
                  'fyjfimiv' /* Архивные заказы отсутствуют */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Monsterrat',
                      color: FlutterFlowTheme.of(context).dark300,
                      fontSize: 20.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
