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

}
