import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:allystats/app/app.locator.dart';
import 'package:allystats/app/app.logger.dart';

class LoginViewModel extends BaseViewModel {
  // Setting up the logger
  final log = getLogger('LoginViewModel');

  // Setting up the navigator
  final navigationService = locator<NavigationService>();

  // Setting up the snackbar service
  final snackbarService = locator<SnackbarService>();

  // Checking password visibility
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
    log.i('Changed password visibility successfully!', ['Password visibility change failed'],);
  }
}
