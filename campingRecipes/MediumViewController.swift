import UIKit


class MediumViewController: UIViewController, UINavigationControllerDelegate{
    
    var sendMajorNum = String()
    var MediumTag = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
    }
    
    @IBAction func goFavoriteRecipesButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goFavoriteRecipesListViewController", sender: nil)
    }
    
    @IBAction func tappedMedium(sender: UIButton){
        switch sender.tag{
        case 0:
            MediumTag = "0"
        case 1:
            MediumTag = "1"
        case 2:
            MediumTag = "2"
        case 3:
            MediumTag = "3"
        default:
            print("errer")
        }
        performSegue(withIdentifier: "goResultViewController", sender: nil)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goResultViewController" {
            let nextView: ResultViewController = segue.destination as! ResultViewController

            nextView.sendMediumNum = MediumTag
            nextView.sendMajorNum = sendMajorNum
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
