import '/backend/supabase/supabase.dart';
import '/components/orders_status_sea_archive_land_expandable_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_status_sea_archieve_land_widget.dart'
    show OrderStatusSeaArchieveLandWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderStatusSeaArchieveLandModel
    extends FlutterFlowModel<OrderStatusSeaArchieveLandWidget> {
  ///  Local state fields for this page.

  int? activeTab = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
