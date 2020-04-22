import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var greenLabel: UILabel!
    var greenText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLabel.text = greenText
    }
}
