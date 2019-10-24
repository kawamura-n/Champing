import UIKit

class MajorViewController: UIViewController {
    var MajorTag = String()
    
    @IBOutlet weak var dustlabel: UILabel!
    @IBOutlet weak var ingledientlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
    }
    
    @IBAction func goFavoriteRecipesButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goFavoriteRecipesListViewController", sender: nil)
    }
    
    @IBAction func tappedMajor(sender: UIButton){
        switch sender.tag{
        case 0:
            MajorTag = "0"
        case 1:
            MajorTag = "1"
        case 2:
            MajorTag = "2"
        case 3:
            MajorTag = "3"
        case 4:
            MajorTag = "4"
        case 5:
            MajorTag = "5"
        default:
            print("errer")
        }
        performSegue(withIdentifier: "goMediumViewController", sender: nil)
   }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goMediumViewController" {
            let nextView: MediumViewController = segue.destination as! MediumViewController
            nextView.sendMajorNum = MajorTag
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
}
