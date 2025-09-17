import SwiftUI

@main
struct MenuBarColorPickerApp: App {
    @StateObject private var model = ColorModel()

    init() {
        // Hide color panel at app startup
        DispatchQueue.main.async {
            NSColorPanel.shared.orderOut(nil)
        }
    }

    var body: some Scene {
        // Menu bar icon + popover
        MenuBarExtra("Color Picker", systemImage: "eyedropper.halffull") {
            ContentView()
                .environmentObject(model)
                .frame(width: 340) // popover width
                .padding(.vertical, 8)
                .onReceive(NotificationCenter.default.publisher(for: NSApplication.willTerminateNotification)) { _ in
                    // Also close color panel when app is closing
                    model.closeColorPanel()
                }
        }
        .menuBarExtraStyle(.window) // popover that behaves like a window
    }
}
