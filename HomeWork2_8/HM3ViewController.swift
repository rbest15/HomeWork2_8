import UIKit

class HM3ViewController: UIViewController{
    
    let picker = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func selectButtonPressed(_ sender: Any) {
        picker.allowsEditing = true
        self.present(picker, animated: true)
    }
    
    @IBAction func toRed(_ sender: UIBarButtonItem) {
        performSegueWithIdentifier(identifier: "toRed", sender: nil) { (segue) in
            if let vc = segue.destination as? RedViewController {
                vc.redText = self.textField.text ?? ""
            }
        }
    }
    @IBAction func toGreen(_ sender: UIBarButtonItem) {
        performSegueWithIdentifier(identifier: "toGreen", sender: nil) { (segue) in
            if let vc = segue.destination as? GreenViewController {
                vc.greenText = self.textField.text ?? ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
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

extension HM3ViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else{ return }
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
}
