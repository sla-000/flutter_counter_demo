---
trigger: always_on
---

# Analytics Rules

## Architecture
*   **Service Pattern:** Use a dedicated `AnalyticsService` class for all analytics interactions. Do **not** use the Repository pattern for analytics.
*   **Location:** Place the service in `lib/logic/service/analytics_service.dart`.
*   **Dependency Injection:** Register `AnalyticsService` as a `lazySingleton` in `lib/di/di.dart`.

## Implementation Details
*   **Synchronous Methods:** Analytics methods in the service must be synchronous (`void`). They should **not** return `Future`.
*   **Fire-and-Forget:** Use `unawaited` from `dart:async` to trigger the underlying async analytics calls without blocking or waiting.
    ```dart
    void gameLoaded() {
      unawaited(_analytics.logEvent(name: 'game_loaded'));
    }
    ```
*   **Event Naming:** Use `snake_case` for event names (e.g., `game_loaded`, `game_quit`).
*   **Method Naming:** Use action-based naming for service methods (e.g., `gameLoaded()`, `quitGame()`).

## Integration
* Use easiest way to add analytics in the code. It can be integrated in UI layer or in bloc. Make it as simple as possible.
*   **Widget-Level Integration:** Integrate analytics calls in the UI layer (Widgets) using lifecycle methods (`initState`, `dispose`) or state listeners (`BlocListener`).
*   **BLoC Dependencies:** Inject `AnalyticsService` into BLoCs.