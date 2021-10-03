part of '_states.dart';

class GlobalState {
  static List<Injectable> injectData = <Injectable>[
    Inject(() => NavigationServiceState()),
  ];

  static ReactiveModel<NavigationServiceState> navigation() {
    return Injector.getAsReactive<NavigationServiceState>();
  }
}
