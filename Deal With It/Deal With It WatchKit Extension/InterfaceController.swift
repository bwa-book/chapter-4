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

}
