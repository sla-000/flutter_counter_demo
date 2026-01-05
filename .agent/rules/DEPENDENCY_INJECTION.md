# Dependency Injection Rules

## Library
*   **GetIt:** Use `get_it` as the service locator.
*   **Access:** Access the `GetIt` instance via a global `di` variable.
*   **Initialization:** Use a top-level function named `diInit()` to register all dependencies.

## Registration
*   **Lazy Singletons:** Use `registerLazySingleton` for:
    *   BLoCs / Cubits
    *   Services (e.g., `AnalyticsService`)
    *   State-holding classes
*   **Factories:** Use `registerFactory` for:
    *   Repositories
    *   Stateless or transient dependencies
*   **Type Safety:** Always explicitly specify the type being registered (e.g., `di.registerLazySingleton<MyBloc>(...)`).

## Disposal
*   **BLoC Disposal:** Always provide a `dispose` callback for BLoCs to close them properly.
*   **Unawaited Close:** Use `unawaited(bloc.close())` inside the dispose callback to ensure fire-and-forget closure.
    ```dart
    di.registerLazySingleton<MyBloc>(
      () => MyBloc(),
      dispose: (MyBloc bloc) => unawaited(bloc.close()),
    );
    ```
*   **Reset:** Use `di.reset()` in a `diDispose()` function to clean up all registered instances when the app is destroyed or reset.

## Structure
*   **Location:** Place the DI configuration in `lib/di/di.dart`.
*   **Import Strategy:** Import concrete implementations from their respective logic/bloc folders but register them against their interfaces where applicable (though current codebase often registers concrete types directly).
