---
trigger: always_on
---

### Logging
* **Package:** Use the `logging` package.
* **Levels:**
    * Use `warning` for errors caught in `try-catch` blocks.
    * Use `severe` for errors caught in the root zone.
* **Format:** Log messages must follow this format:
  `Time(ms) | Severity | Class | Method | Message | Error | StackTrace`
* **Implementation:**

  ```dart
  import 'package:logging/logging.dart';

  final _log = Logger('MyClass');

  // ... inside MyClass
  void myMethod() {
    try {
      // ... code
    } catch (e, s) {
      _log.warning('Failed to do something', e, s);
    }
  }
  ```
