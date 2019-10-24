import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
    }

    @IBAction func goMajorViewButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goMajorViewController", sender: nil)
    }
    
    @IBAction func goAddRecipe(_ sender: UIButton) {
        performSegue(withIdentifier: "goAddRecipeViewController", sender: nil)
    }
    
    
    @IBAction func goFavoriteRecipesListViewButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goFavoriteRecipesListViewController", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
}
