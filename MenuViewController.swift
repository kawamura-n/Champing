import UIKit
import YSCheckBox
import YSRadioButton

class MenuViewController: UIViewController,YSRadioButtonViewControllerDelegate {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var radioButtonContainer: UIView!
    
    var ecologyString = "0"
    var preparationString = "0"
    var timeString = "0"
    
    @IBAction func ecologyUISwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            ecologyString = "1"
        } else {
            ecologyString = "0"
        }
    }
    
    @IBAction func preparationUISwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            preparationString = "1"
        } else {
            preparationString = "0"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
///調理時間　：　 ラジオボタン
        let radio = YSRadioButtonViewController(labels: ["こだわりなし","〜30min","〜60min"])
        radio.delegate = self
        radio.font = UIFont.systemFont(ofSize: 18)
        radio.labelColor = .black
        radio.labelMargin = 0
        radio.lineWidth = 1
        radio.radioHeadFillSize = 0.6
        radio.radioHeadMargin = 5
        radio.radioHeadStroke = .darkGray
        radio.radioHeadFill = .red
        radio.view.frame = radioButtonContainer.bounds
        radioButtonContainer.addSubview(radio.view)
        radio.didMove(toParent: self)
    }
    
    func didYSRadioButtonSelect(no: Int) {
        timeString = String(no)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let menuPos = self.menuView.layer.position
        self.menuView.layer.position.x = 2 * self.menuView.frame.width
   //     self.menuView.layer.position.y = 2*self.menuView.frame.height
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.menuView.layer.position.x = menuPos.x
            self.menuView.layer.position.y = menuPos.y
        }, completion: {bool in})
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches {
            if touch.view?.tag == 1 {
                
                let preNC = self.presentingViewController as! UINavigationController
                let preVC = preNC.viewControllers[preNC.viewControllers.count-1]
                
                if preVC is FavoriteRecipesListViewController {
                    let preVC = preNC.viewControllers[preNC.viewControllers.count-1] as! FavoriteRecipesListViewController
                    preVC.ecologyString = self.ecologyString
                    preVC.preparationString = self.preparationString
                    preVC.timeString = self.timeString
                    preVC.updateView()
                }else{
                    let preVC = preNC.viewControllers[preNC.viewControllers.count-1] as! ResultViewController
                    preVC.ecologyString = self.ecologyString
                    preVC.preparationString = self.preparationString
                    preVC.timeString = self.timeString
                    preVC.updateView()
                }
            
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations:{
                    self.menuView.layer.position.x = 2 * self.menuView.frame.width}, completion:{
                    bool in self.dismiss(animated: true,completion:nil)
                    }
                )
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
