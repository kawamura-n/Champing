import UIKit

class MajorViewController: UIViewController {
    var MajorTag = String()
    
    @IBOutlet weak var dustlabel: UILabel!
    @IBOutlet weak var ingledientlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
        
    }
    
    @IBAction func tappedMajor(sender: UIButton){
        switch sender.tag{
        case 0:
            MajorTag = "0"
        case 1:
            MajorTag = "1"
        default:
            print("errer")
        }
        performSegue(withIdentifier: "goMedium", sender: nil)
   }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goMedium" {
            let nextView = segue.destination as! MediumViewController
            nextView.sendMajorNum = MajorTag
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
}

