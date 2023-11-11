import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'reg_page_widget.dart' show RegPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegPageModel extends FlutterFlowModel<RegPageWidget> {
  ///  Local state fields for this page.

  String? code = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameController;
  String? Function(BuildContext, String?)? textFieldNameControllerValidator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  // State field(s) for TextFieldPass widget.
  FocusNode? textFieldPassFocusNode;
  TextEditingController? textFieldPassController;
  late bool textFieldPassVisibility;
  String? Function(BuildContext, String?)? textFieldPassControllerValidator;
  String? _textFieldPassControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9ttkozd3' /* Пароль не введен */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'o3usq3rw' /* Пароль должен быть от 8 знаков */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldPassConfirm widget.
  FocusNode? textFieldPassConfirmFocusNode;
  TextEditingController? textFieldPassConfirmController;
  late bool textFieldPassConfirmVisibility;
  String? Function(BuildContext, String?)?
      textFieldPassConfirmControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldPassVisibility = false;
    textFieldPassControllerValidator = _textFieldPassControllerValidator;
    textFieldPassConfirmVisibility = false;
    pinCodeController = TextEditingController();
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailController?.dispose();

    textFieldPassFocusNode?.dispose();
    textFieldPassController?.dispose();

    textFieldPassConfirmFocusNode?.dispose();
    textFieldPassConfirmController?.dispose();

    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
