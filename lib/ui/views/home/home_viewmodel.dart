import 'package:agriculture/app/app.locator.dart';
import 'package:agriculture/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onItemTap(int index) {
    _navigationService.navigateTo(Routes.detailView,
        arguments: DetailViewArguments(index: index));
  }
}
