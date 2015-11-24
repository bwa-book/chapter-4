import WatchKit

class RowController: NSObject {
    @IBOutlet weak var listLabel: WKInterfaceLabel! {
        didSet(oldValue) {
            listLabel.setTextColor(UIColor.greenColor())
        }
    }
}
