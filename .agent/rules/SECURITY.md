# Security Best Practices

## API Keys Management
*   **Client-Side Keys:** Acknowledge that API keys stored in the mobile application code (e.g., Firebase options) are **publicly visible** to anyone who decompiles the app.
*   **Restrictions:** Rely on **server-side restrictions** (Referrer for Web, Bundle ID/SHA-1 for Android/iOS) in the Google Cloud/Service Console to protect these keys.
*   **Repository:** Do **not** commit sensitive keys that have no restriction capabilities to the version control system. Use `.env` files (e.g., `flutter_dotenv`) and add them to `.gitignore`.

## Secure Storage
*   **Tokens & Secrets:** Never store sensitive data (Authentication tokens, PII, refresh tokens) in `SharedPreferences`, `Hive` (without encryption), or local files.
*   **Implementation:** Use the `flutter_secure_storage` package to store sensitive data.
    *   **iOS:** Uses Keychain.
    *   **Android:** Uses EncryptedSharedPreferences (Keystore).
    *   **Web:** **Warning:** There is no truly secure storage in the browser. Use strict HTTP-only cookies if possible, or `flutter_secure_storage` (which uses LocalStorage) with the understanding of the risks (XSS).

## Code Obfuscation
*   **Release Builds:** Always build release versions with obfuscation enabled to make reverse engineering more difficult.
    ```bash
    flutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>
    flutter build ipa --obfuscate --split-debug-info=/<project-name>/<directory>
    ```

## Network Security
*   **HTTPS:** Ensure all network requests use `https://`.
*   **Certificate Pinning:** For high-security applications, implement certificate pinning to prevent Man-in-the-Middle (MitM) attacks, using packages like `http_certificate_pinning`.

## Logging
*   **Sensitive Data:** Carefully review logging statements. **Never** log sensitive headers (Authorization), passwords, or user tokens.
*   **Production:** Disable verbose logging in production builds.

## Git & Version Control
*   **Ignore Files:** Ensure `.env`, `*.jks`, `*.keystore`, `GoogleService-Info.plist` (if containing secrets), and `firebase_options.dart` (if using strict secret separation, though often committed for Firebase) are reviewed before committing.
*   **Secret Scanning:** Use automated tools (like GitHub Secret Scanning) to detect accidentally committed secrets.
