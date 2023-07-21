import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/core/dependency_init.config.dart';

/// The global instance of [GetIt],
/// a service locator used for dependency injection.
/// You can use this instance to register and retrieve your dependencies.
final GetIt getIt = GetIt.instance;

@InjectableInit(
  usesNullSafety: true,
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

/// Initialize the dependency injection system
void configureDependencies() {
  $initGetIt(getIt);
}
