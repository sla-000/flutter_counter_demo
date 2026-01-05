---
trigger: always_on
---

## API Design Principles
When building reusable APIs, such as a library, follow these principles.

* **Consider the User:** Design APIs from the perspective of the person who will
  be using them. The API should be intuitive and easy to use correctly.
* **Documentation is Essential:** Good documentation is a part of good API
  design. It should be clear, concise, and provide examples.

## Application Architecture
* **Clean Architecture:** Follow Clean Architecture principles to ensure modularity, scalability, and testability.
* **Folder Structure & Layers:**
    * **domain:** The core of the application. Contains Entities, definitions of UseCases, and Repository Interfaces. This layer should be independent of any other layer.
    * **data:** Implementation details. Contains DTOs, Repository Implementations, and Data Sources (API clients, local DB).
    *   **presentation:** UI and State Management (Widgets, Cubits, etc.). Organized by feature:
        *   `lib/presentation/<feature>/`: Feature root (e.g., `main_screen`).
        *   `lib/presentation/<feature>/<feature>.dart`: Component/Screen widget.
        *   `lib/presentation/<feature>/cubit/`: State management (Cubit/State).
    * **core:** Shared values, extensions, and utilities used across layers.
* **UseCases:** Create UseCases for shared pieces of business logic to promote reusability and separation of concerns.
* **Principles:**
    * **DRY (Don't Repeat Yourself):** Avoid duplicating logic. Extract common code into reusable functions, widgets, or classes.
    * **KISS (Keep It Simple, Stupid):** Prioritize simplicity. Avoid overengineering. The simplest solution that works is often the best.
    * **YAGNI (You Aren't Gonna Need It):** Implement only what is currently needed. Do not write code for future features that haven't been requested yet.

### State Management
* **General approach:** Use `bloc`, `flutter_bloc`, and `Cubit` as the default state management solution. Use `Bloc` only when strictly necessary.
* **Models:** `state` and `event` classes MUST be created using `freezed`.
* **State Pattern:** Use a sealed class with `loading`, `loaded`, and `error` states.
    *   `loading`: The default/initial state.
    *   `loaded`: The success state acting as the main state holder.
    *   `error`: The error state; MUST store the `Object error` and `StackTrace stackTrace`.

  ```dart
  @freezed
  sealed class GameState with _$GameState {
    const factory GameState.loading() = GameStateLoading;

    const factory GameState.loaded({
      @Default(GameStatus.menu) GameStatus status,
      @Default(3) int difficulty,
      @Default('') String currentWord,
      @Default(true) bool isPhonetic,
    }) = GameStateLoaded;

    const factory GameState.error({
      required Object error,
      required StackTrace stackTrace,
    }) = GameStateError;
  }
  ```
* **Streams:** Use `Streams` and `StreamBuilder` for handling a sequence of
  asynchronous events.
* **Futures:** Use `Futures` and `FutureBuilder` for handling a single
  asynchronous operation that will complete in the future.
* **Dependency Injection:** Use get_it constructor dependency injection
  to make a class's dependencies explicit in its API, and to manage dependencies
  between different layers of the application.

### Data Flow
* **Data Structures:** Define data structures (classes) to represent the data
  used in the application. Use equatable package for immutable DTOs.
* **Data Abstraction:** Abstract data sources (e.g., API calls, database
  operations) using Repositories/Services to promote testability.

### Data Handling & Serialization
* **DTOs:** Use the `equatable` package for DTOs. Use `json_serializable` if strictly necessary.
* **Naming:** Name API response DTO files as `*_response.dart` and request DTO files as `*_request.dart`.
* **Methods:**
    * Response DTOs (`*_response.dart`) should ONLY implement `fromJson()`.
    * Request DTOs (`*_request.dart`) should ONLY implement `toJson()`.
* **JSON Serialization:** Use `json_serializable` and `json_annotation` for
  parsing and encoding JSON data.
* **Field Renaming:** When encoding data, use `fieldRename: FieldRename.snake`
  to convert Dart's camelCase fields to snake_case JSON keys.

  ```dart
  // In your model file
  import 'package:json_annotation/json_annotation.dart';

  part 'user.g.dart';

  @JsonSerializable(fieldRename: FieldRename.snake)
  class User {
    const User({required this.firstName, required this.lastName});

    final String firstName;
    final String lastName;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
  }
  ```

## Code Generation
* **Build Runner:** If the project uses code generation, ensure that
  `build_runner` is listed as a dev dependency in `pubspec.yaml`.
* **Code Generation Tasks:** Use `build_runner` for all code generation tasks,
  such as for `json_serializable`.
* **Running Build Runner:** After modifying files that require code generation,
  run the build command:

  ```shell
  dart run build_runner build --delete-conflicting-outputs
  ```


