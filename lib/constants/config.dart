part of 'constants_helper.dart';

class AppConfig {
  static const operationMode = OperationModes.production;

  static const productionUrl = "";
  static const testUrl = '';

  static const appVersion = "";

  static String get appBaseUrl {
    return operationMode == OperationModes.production ? productionUrl : testUrl;
  }

  static const getUserData = "user_login.php";

}