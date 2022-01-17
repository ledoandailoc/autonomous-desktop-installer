import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    override func applicationDidFinishLaunching(_ notification: Notification) {
        NSApplication.shared.setActivationPolicy(.regular)
    }

    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        NSApplication.shared.setActivationPolicy(.prohibited)
        return false
    }
    
    override func applicationWillTerminate(_ notification: Notification) {
        NSApplication.shared.setActivationPolicy(.prohibited)
    }
    
}
