import 'package:locator/locator.dart';

import 'services/shared_preferences.dart';

void registerSingletonsInstances() {
  const Locator locator = Locator();

  locator.put<CacheService>(CacheService());
}
