import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    enum ButtonState {
        case OutOfDanger, Danger, Exploded
    }
    
    var buttonState = ButtonState.Danger
    
    @IBOutlet weak var dangerButton: WKInterfaceButton!
    
    @IBAction func dangerTapped() {
        presentAlertControllerWithTitle("Danger!",
            message: "What will you do?",
            preferredStyle: .Alert,
            actions: alertActions())
    }
    
    func alertActions() -> [WKAlertAction] {
        return [
            WKAlertAction.init(title: "Deal with it", style: .Default) {self.buttonState = .OutOfDanger},
            WKAlertAction.init(title: "Ignore it", style: .Cancel) {self.buttonState = .Danger},
            WKAlertAction.init(title: "Explode it", style: .Destructive) {self.buttonState = .Exploded}
        ]
    }
    
    override func willActivate() {
        super.willActivate()
        updateButton()
    }
    
    func updateButton() {
        switch buttonState {
        case .OutOfDanger: outOfDanger()
        case .Danger: danger()
        case .Exploded: exploded()
        }
    }
    
    func outOfDanger() {
        dangerButton.setTitle("Phew")
        dangerButton.setEnabled(false)
    }
    
    func danger() {
        dangerButton.setTitle("DANGER!")
        dangerButton.setEnabled(true)
    }
    
    func exploded() {
        dangerButton.setTitle("BOOM!")
        dangerButton.setBackgroundColor(.redColor())
        dangerButton.setEnabled(false)
    }

}
