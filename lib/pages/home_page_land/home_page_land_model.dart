import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/no_active_orders_widget.dart';
import '/components/no_archieve_orders_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_land_widget.dart' show HomePageLandWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageLandModel extends FlutterFlowModel<HomePageLandWidget> {
  ///  Local state fields for this page.

  String? activeTab = '1';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldBatch widget.
  FocusNode? textFieldBatchFocusNode;
  TextEditingController? textFieldBatchController;
  String? Function(BuildContext, String?)? textFieldBatchControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldBatchFocusNode?.dispose();
    textFieldBatchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
