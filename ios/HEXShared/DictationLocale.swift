import Foundation

enum DictationLocale {
    static let key = "dictation.spokenLocale"

    static var selection: String {
        UserDefaults(suiteName: KeyboardBridge.appGroup)?.string(forKey: key) ?? ""
    }

    static var candidates: [String] {
        let chosen = selection
        return chosen.isEmpty ? Locale.preferredLanguages + [Locale.current.identifier, "en-US"] : [chosen]
    }
}
