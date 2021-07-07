
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redColorLight: UIButton!
    @IBOutlet weak var yellowColorLight: UIButton!
    @IBOutlet weak var greenColorLight: UIButton!
    @IBOutlet weak var startNextButtonProperty: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLight.alpha = 0.3
        redColorLight.layer.cornerRadius = 65
        yellowColorLight.alpha = 0.3
        yellowColorLight.layer.cornerRadius = 65
        greenColorLight.alpha = 0.3
        greenColorLight.layer.cornerRadius = 65
        startNextButtonProperty.layer.cornerRadius = 15
    }

    @IBAction func startNextButtonPressed() {
        startNextButtonProperty.setTitle("NEXT", for: .normal)
        
        let redColor = round(redColorLight.alpha * 10) / 10
        let yellowColor = round(yellowColorLight.alpha * 10) / 10
        let greenColor = round(greenColorLight.alpha * 10) / 10
//        возможно есть более красивое преобразование к нужному формату?
        
        switch redColor {
        case 1 where yellowColor == 0.3 && greenColor == 0.3:
            redColorLight.alpha = 0.3
            yellowColorLight.alpha = 1
            greenColorLight.alpha = 0.3
        case 0.3 where yellowColor == 1 && greenColor == 0.3:
            redColorLight.alpha = 0.3
            yellowColorLight.alpha = 0.3
            greenColorLight.alpha = 1
        case 0.3 where yellowColor == 0.3 && greenColor == 1:
            redColorLight.alpha = 1
            yellowColorLight.alpha = 0.3
            greenColorLight.alpha = 0.3
        default:
            redColorLight.alpha = 1
        }
    }
    
}

