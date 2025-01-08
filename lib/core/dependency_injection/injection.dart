import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// This is the root of the dependency injection tree.
final sl = GetIt.instance;

@InjectableInit(preferRelativeImports: false)

/// this is the method to initialize the dependency injection tree.
void configureDependencies() => $initGetIt(sl);
