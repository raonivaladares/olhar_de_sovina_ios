
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldQuantityProduct01: UITextField!
    @IBOutlet weak var textFieldPriceProduct01: UITextField!
    @IBOutlet weak var textFieldQuantityProduct02: UITextField!
    @IBOutlet weak var textFieldPriceProduct02: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func message(viewController: UIViewController, message: String) {
        let alert = UIAlertController(title: "Atention", message: "\(message)", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "ok", style: .Default) { _ in })
        viewController.presentViewController(alert, animated: true){}
    }

    @IBAction func touchButtonCompare(sender: UIButton) {
        
        
        
        if textFieldQuantityProduct01.text!.isEmpty {
            self .message(self, message: "Product 1 empty field: Quantity")
        } else if textFieldPriceProduct01.text!.isEmpty {
            self .message(self, message: "Product 1 empty field: Price")
        } else if textFieldQuantityProduct02.text!.isEmpty {
            self .message(self, message: "Product 2 empty field: Quantity")
        } else if textFieldPriceProduct02.text!.isEmpty {
            self .message(self, message: "Product 2 empty field: Price")
        } else {
            
            let quantityProduct01 = Double(textFieldQuantityProduct01.text!)!
            let priceProduct01 = Double(textFieldPriceProduct01.text!)!
            let quantityProduct02 = Double(textFieldQuantityProduct02.text!)!
            let priceProduct02 = Double(textFieldPriceProduct02.text!)!
            let result = (quantityProduct02 * priceProduct01) / quantityProduct01
            
            if(priceProduct02 > result) {
                
            } else if (priceProduct02 < result) {
                
            } else {
                
            }
        }
        
    }

}

