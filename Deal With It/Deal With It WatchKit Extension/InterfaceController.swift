import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    enum ButtonState {
        case OutOfDanger, Danger, Exploded
    }
    
    var buttonState = ButtonState.Danger

}
