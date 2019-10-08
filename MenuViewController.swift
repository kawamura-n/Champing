import UIKit
import YSCheckBox
import YSRadioButton

class MenuViewController: UIViewController,YSRadioButtonViewControllerDelegate {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var radioButtonContainer: UIView!
    
    var dustString : String = "0"
    
    @IBAction func dustUISwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            dustString = "1"
        } else {
            dustString = "0"
        }
        print(dustString)
    }
    
    var ingledientString : String = "0"
    
    @IBAction func ingledientUISwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            ingledientString = "1"
        } else {
            ingledientString = "0"
        }
        print(ingledientString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
///調理時間　：　 ラジオボタン
        let radio = YSRadioButtonViewController(labels: ["~30min","~60min","60min~"])
        radio.delegate = self
        radio.font = UIFont.systemFont(ofSize: 18)
        radio.labelColor = .black
        radio.labelMargin = 0
        radio.lineWidth = 1
        radio.radioHeadFillSize = 0.6
        radio.radioHeadMargin = 5
        radio.radioHeadStroke = .darkGray
        radio.radioHeadFill = .red

        addChild(radio)
        radio.view.frame = radioButtonContainer.bounds
        radioButtonContainer.addSubview(radio.view)
        radio.didMove(toParent: self)
          
        // Do any additional setup after loading the view.
    }
    
    func didYSRadioButtonSelect(no: Int) {
        print(no)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let menuPos = self.menuView.layer.position
        self.menuView.layer.position.x = 2 * self.menuView.frame.width
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {self.menuView.layer.position.x = menuPos.x
        }, completion: {bool in})
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches {
            if touch.view?.tag == 1 {
//            let preVC = self.presentingViewController as! MajorViewController
//                preVC.dustString = self.dustString
                
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: { self.menuView.layer.position.x = 2 * self.menuView.frame.width}, completion: { bool in self.dismiss(animated: true,completion:nil)
                    }
                )
            }
        }
    }
    

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
