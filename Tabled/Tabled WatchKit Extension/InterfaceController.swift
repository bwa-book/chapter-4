import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var listTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        updateTableitems()
    }
    
    func updateTableitems() {
        let listOfThings = [
            "Apple",
            "Banana",
            "Pear",
            "Orange",
            "Lemon",
            "Guava",
            "Melon",
            "Starfruit",
            "Grape"
        ]
        let numberOfThings = listOfThings.count
        
        listTable.setNumberOfRows(numberOfThings, withRowType: "RowController")
        
        for i in 0 ..< numberOfThings {
            let rowController = listTable.rowControllerAtIndex(i) as! RowController
            rowController.listLabel.setText(listOfThings[i])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let rowController = listTable.rowControllerAtIndex(rowIndex) as! RowController
        rowController.listLabel.setTextColor(UIColor.redColor())
    }
}
