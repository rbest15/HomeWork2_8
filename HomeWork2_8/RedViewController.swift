import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    var redText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.text = redText
    }

}
