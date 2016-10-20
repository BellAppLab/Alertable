import UIKit

class ViewController: UIViewController {

    @IBAction func alertPressed(_ sender: AnyObject) {        
        self.alert(this: Alert("Alert this!"))
    }

}

