import 'package:agriculture/ui/views/detail/detail_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/home/home_view.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: DetailView),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
  ],
  logger: StackedLogger(),
)
class AppSetUp {}
