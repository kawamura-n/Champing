import UIKit
import RealmSwift

class SetFavoriteContainerViewController: UIViewController {
    
    @IBOutlet var imageButton : UIButton!
    
    var selectedRecipeID = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
           let results = realm.objects(RecipesDataModel.self).filter("recipeID == %@",selectedRecipeID).first
           if(results!.favorite == true){
               try! realm.write {
                   imageButton.setImage(UIImage(named: "cooking_onabe"), for: .normal)
               }
           }else{
               try! realm.write {
                       imageButton.setImage(UIImage(named: "takibi"), for: .normal)
               }
           }
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
}
