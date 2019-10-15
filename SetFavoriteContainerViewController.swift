import UIKit
import RealmSwift

class SetFavoriteContainerViewController: UIViewController {
    
    @IBOutlet var imageButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
     
    @IBAction func SetFavoriteButton(_ sender: UIButton) {
        let realm = try! Realm()
        let results = realm.objects(RecipesDataModel.self).filter("recipeID == %@",selectedRecipeID).first
        if(results!.favorite == false){
            try! realm.write {
                results?.favorite = true
                imageButton.setImage(UIImage(named: "cooking_onabe"), for: .normal)
            }
        }else{
            try! realm.write {
                    results?.favorite = false
                    imageButton.setImage(UIImage(named: "takibi"), for: .normal)
            }
        }
    }
    var selectedRecipeID = String()
}
