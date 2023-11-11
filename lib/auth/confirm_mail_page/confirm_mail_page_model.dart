import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'confirm_mail_page_widget.dart' show ConfirmMailPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmMailPageModel extends FlutterFlowModel<ConfirmMailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldMailReset widget.
  FocusNode? textFieldMailResetFocusNode;
  TextEditingController? textFieldMailResetController;
  String? Function(BuildContext, String?)?
      textFieldMailResetControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldMailResetFocusNode?.dispose();
    textFieldMailResetController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
