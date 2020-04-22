import UIKit

class HM3ViewController: UIViewController{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func toRed(_ sender: UIBarButtonItem) {
        performSegueWithIdentifier(identifier: "toRed", sender: nil) { (segue) in
            if let vc = segue.destination as? RedViewController {
                vc.redLabel.text = self.textField.text ?? ""
            }
        }
    }
    @IBAction func toGreen(_ sender: UIBarButtonItem) {
        performSegueWithIdentifier(identifier: "toGreen", sender: nil) { (segue) in
            if let vc = segue.destination as? GreenViewController {
                vc.greenLabel.text = self.textField.text ?? ""
            }
        }
    }
    @IBAction func setImagePressed(_ sender: Any) {
        let pickerView = UIImagePickerController()
        pickerView.delegate = self
        pickerView.allowsEditing = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
private var AssociatedObjectHandle : UInt8 = 0
extension UIView {
   @IBInspectable var identifier: String {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle) as! String
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

extension HM3ViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
}
