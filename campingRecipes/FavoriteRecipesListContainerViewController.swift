import UIKit
import RealmSwift

class FavoriteRecipesListContainerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goFavoriteListButton(_ sender: Any) {
        print("s")
      //  performSegue(withIdentifier: "goFavoriteRecipesListContainerViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goMediumViewController" {
//            let nextView: MediumViewController = segue.destination as! MediumViewController
//            nextView.sendMajorNum = MajorTag
//        }
    }
    
}
