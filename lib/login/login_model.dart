import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SU-email widget.
  FocusNode? sUEmailFocusNode;
  TextEditingController? sUEmailTextController;
  String? Function(BuildContext, String?)? sUEmailTextControllerValidator;
  String? _sUEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SU-password widget.
  FocusNode? sUPasswordFocusNode;
  TextEditingController? sUPasswordTextController;
  late bool sUPasswordVisibility;
  String? Function(BuildContext, String?)? sUPasswordTextControllerValidator;
  String? _sUPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SU-confirmpass widget.
  FocusNode? sUConfirmpassFocusNode;
  TextEditingController? sUConfirmpassTextController;
  late bool sUConfirmpassVisibility;
  String? Function(BuildContext, String?)? sUConfirmpassTextControllerValidator;
  String? _sUConfirmpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for LOG-email widget.
  FocusNode? lOGEmailFocusNode;
  TextEditingController? lOGEmailTextController;
  String? Function(BuildContext, String?)? lOGEmailTextControllerValidator;
  String? _lOGEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Form is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  // State field(s) for LOG-password widget.
  FocusNode? lOGPasswordFocusNode;
  TextEditingController? lOGPasswordTextController;
  late bool lOGPasswordVisibility;
  String? Function(BuildContext, String?)? lOGPasswordTextControllerValidator;
  String? _lOGPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the correct password.';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    sUEmailTextControllerValidator = _sUEmailTextControllerValidator;
    sUPasswordVisibility = false;
    sUPasswordTextControllerValidator = _sUPasswordTextControllerValidator;
    sUConfirmpassVisibility = false;
    sUConfirmpassTextControllerValidator =
        _sUConfirmpassTextControllerValidator;
    lOGEmailTextControllerValidator = _lOGEmailTextControllerValidator;
    lOGPasswordVisibility = false;
    lOGPasswordTextControllerValidator = _lOGPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    sUEmailFocusNode?.dispose();
    sUEmailTextController?.dispose();

    sUPasswordFocusNode?.dispose();
    sUPasswordTextController?.dispose();

    sUConfirmpassFocusNode?.dispose();
    sUConfirmpassTextController?.dispose();

    lOGEmailFocusNode?.dispose();
    lOGEmailTextController?.dispose();

    lOGPasswordFocusNode?.dispose();
    lOGPasswordTextController?.dispose();
  }
}
