---
trigger: always_on
---

## Code Quality
* **Code structure:** Adhere to maintainable code structure and separation of
  concerns (e.g., UI logic separate from business logic).
* **Naming conventions:** Avoid abbreviations and use meaningful, consistent,
  descriptive names for variables, functions, and classes.
* **Conciseness:** Write code that is as short as it can be while remaining
  clear.
* **Simplicity:** Write straightforward code. Code that is clever or
  obscure is difficult to maintain.
* **Error Handling:** Anticipate and handle potential errors. Don't let your
  code fail silently.
    *   **External Calls:** Wrap all external calls, like repository or service calls in `try-catch` blocks.
    *   **Logging:** Log caught exceptions with `warning` severity using the `logging` package.
    *   **State Emission:** Emit an `error` state (e.g., `GameState.error`) containing the exception and stack trace.
    *   **Non-Critical Errors:** For errors that do not affect the main flow (e.g., audio, analytics), do NOT emit an error state. Log them as `warning` only.
* **Styling:**
    * Line length: Lines should be 80 characters or fewer.
    * Use `PascalCase` for classes, `camelCase` for
      members/variables/functions/enums, and `snake_case` for files.
* **Functions:**
    * Functions short and with a single purpose (strive for less than 20 lines).
* **Testing:** Write code with testing in mind. Use the `file`, `process`, and
  `platform` packages, if appropriate, so you can inject in-memory and fake
  versions of the objects.
* **Logging:** Use the `logging` package instead of `print`.


## Coding Style & Best Practices
* **Meta Package:** Use the `meta` package for annotations like `@protected` and `@visibleForTesting`.
* **Visibility:**
    *   Use `@protected` to annotate members that should be treated as protected/internal (e.g., dependencies).
    *   Do NOT use underscores (`_`) for constructor parameters or properties that are annotated with `@protected`.
* **Class Initializers:** Do NOT use default dependency lookups in the initializer list (e.g., `_repo = repo ?? getIt()`). Instead, declare dependencies as required parameters or handle them in the body if strictly necessary.
* **Formatting:** Leave blank lines between significant blocks of code (e.g., between the constructor and the first property).
* **Trailing Commas:** Always use trailing commas in long parameter lists and collections to force multi-line formatting and improve readability.


## Flutter style guide
* **SOLID Principles:** Apply SOLID principles throughout the codebase.
* **Concise and Declarative:** Write concise, modern, technical Dart code.
  Prefer functional and declarative patterns.
* **Composition over Inheritance:** Favor composition for building complex
  widgets and logic.
* **Immutability:** Prefer immutable data structures. Widgets (especially
  `StatelessWidget`) should be immutable.
* **State Management:** Separate ephemeral state and app state. Use a state
  management solution for app state to handle the separation of concerns.
* **Widgets are for UI:** Everything in Flutter's UI is a widget. Compose
  complex UIs from smaller, reusable widgets.
* **Navigation:** Use a modern routing package `go_router`.

## Dart Best Practices
* **Effective Dart:** Follow the official Effective Dart guidelines
  (https://dart.dev/effective-dart)
* **Class Organization:** Define related classes within the same library file.
  For large libraries, export smaller, private libraries from a single top-level
  library.
* **Library Organization:** Group related libraries in the same folder.
* **Comments:** Write clear comments for complex or non-obvious code. Avoid
  over-commenting.
* **Trailing Comments:** Don't add trailing comments.
* **Async/Await:** Ensure proper use of `async`/`await` for asynchronous
  operations with robust error handling.
    * Use `Future`s, `async`, and `await` for asynchronous operations.
    * Use `Stream`s for sequences of asynchronous events.
* **Null Safety:** Write code that is soundly null-safe. Leverage Dart's null
  safety features. Avoid `!` unless the value is guaranteed to be non-null.
* **Pattern Matching:** Use pattern matching features where they simplify the
  code.
* **Records:** Use records to return multiple types in situations where defining
  an entire class is cumbersome.
* **Switch Statements:** Prefer using exhaustive `switch` statements or
  expressions, which don't require `break` statements.
* **Exception Handling:** Use `try-catch` blocks for handling exceptions, and
  use exceptions appropriate for the type of exception. Use exceptions handling only in business logic code, in other words only in cubits, not in the UI code, usecases etc. Use custom exceptions for situations specific to your code.
* **Arrow Functions:** Use arrow syntax for simple one-line functions.

## Lint Rules

Use package very_good_analysis from pub.dev with the most recent lint rules.
Include the package in the `analysis_options.yaml` file. Use the following
`analysis_options.yaml` file as a starting point:

```yaml
include: package:very_good_analysis/analysis_options.yaml

formatter:
  trailing_commas: preserve

linter:
  rules:
    public_member_api_docs: false
    lines_longer_than_80_chars: false
    require_trailing_commas: true
```
