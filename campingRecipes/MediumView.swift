import UIKit


class MediumViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var sendMajorNum = String()
    var MediumTag = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        label.text = sendMajorNum
     }
    
    @IBAction func tappedMedium(sender: UIButton){
        switch sender.tag{
        case 0:
            MediumTag = "0"
        case 1:
            MediumTag = "1"
        default:
            print("errer")
        }
        performSegue(withIdentifier: "goResult", sender: nil)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResult" {
            let nextView = segue.destination as! ResultViewController

            nextView.sendMediumNum = MediumTag
            nextView.sendMajorNum = sendMajorNum
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

