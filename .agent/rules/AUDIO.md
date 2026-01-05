---
trigger: always_on
---

# Audio Subsystem Rules

## Architecture
*   **Service Pattern:** Use a dedicated [SoundService](sound_service.dart) class for all audio interactions.
*   **Dependency Injection:** Register SoundService as a `lazySingleton` in di.dart.

## Implementation Details
*   **Package:** Use `audioplayers` for audio playback.
*   **Synchronous Methods:** Sound triggering methods in the service must be synchronous (`void`) to avoid blocking logic flows.
*   **Fire-and-Forget:** Use `unawaited` from `dart:async` to trigger the underlying async audio calls.
    ```dart
    void playSound() {
      unawaited(_player.play(AssetSource('sounds/sound.mp3'), mode: PlayerMode.lowLatency));
    }
    ```
*   **Preloading:** Implement a `Future<void> load()` method to preload assets if necessary.
*   **Low Latency:** Use `PlayerMode.lowLatency` for short sound effects (shooting, explosions).

## Integration
*   **BLoC Dependencies:** Inject SoundService into BLoCs where game logic and events occur.
*   **Event-Driven:** Trigger sounds in response to specific logic events (e.g., collisions, tap events).
