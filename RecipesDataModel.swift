import Foundation
import RealmSwift

class RecipesDataModel: Object {
    
    @objc dynamic var recipeID: String = NSUUID().uuidString
    
    @objc dynamic var recipeName: String = ""
    @objc dynamic var image: Data!
    
    @objc dynamic var ingredient1: Ingredient?
    @objc dynamic var ingredient2: Ingredient?
    @objc dynamic var ingredient3: Ingredient?
    @objc dynamic var ingredient4: Ingredient?
    @objc dynamic var ingredient5: Ingredient?
    @objc dynamic var ingredient6: Ingredient?
    @objc dynamic var ingredient7: Ingredient?
    @objc dynamic var ingredient8: Ingredient?
    @objc dynamic var ingredient9: Ingredient?
    @objc dynamic var ingredient10: Ingredient?
    @objc dynamic var ingredient11: Ingredient?
    @objc dynamic var ingredient12: Ingredient?
    @objc dynamic var ingredient13: Ingredient?
    @objc dynamic var ingredient14: Ingredient?
    @objc dynamic var ingredient15: Ingredient?
    @objc dynamic var ingredient16: Ingredient?
    @objc dynamic var ingredient17: Ingredient?
    @objc dynamic var ingredient18: Ingredient?
    @objc dynamic var ingredient19: Ingredient?
    @objc dynamic var ingredient20: Ingredient?
    
    @objc dynamic var howToMake1: String?
    @objc dynamic var howToMake2: String?
    @objc dynamic var howToMake3: String?
    @objc dynamic var howToMake4: String?
    @objc dynamic var howToMake5: String?
    @objc dynamic var howToMake6: String?
    @objc dynamic var howToMake7: String?
    @objc dynamic var howToMake8: String?
    @objc dynamic var howToMake9: String?
    @objc dynamic var howToMake10: String?
    @objc dynamic var howToMake11: String?
    @objc dynamic var howToMake12: String?
    @objc dynamic var howToMake13: String?
    @objc dynamic var howToMake14: String?
    @objc dynamic var howToMake15: String?
    @objc dynamic var howToMake16: String?
    @objc dynamic var howToMake17: String?
    @objc dynamic var howToMake18: String?
    @objc dynamic var howToMake19: String?
    @objc dynamic var howToMake20: String?
    @objc dynamic var howToMake21: String?
    @objc dynamic var howToMake22: String?
    @objc dynamic var howToMake23: String?
    @objc dynamic var howToMake24: String?
    @objc dynamic var howToMake25: String?
    @objc dynamic var howToMake26: String?
    @objc dynamic var howToMake27: String?
    @objc dynamic var howToMake28: String?
    @objc dynamic var howToMake29: String?
    @objc dynamic var howToMake30: String?
    
    
    @objc dynamic var major: Int = 0
    @objc dynamic var medium: Int = 0
    @objc dynamic var ecology: Bool = false
    @objc dynamic var time: Int = 0
    @objc dynamic var preparation: Bool = false
    @objc dynamic var favorite: Bool = false
    @objc dynamic var : Bool = false
    
    override static func primaryKey() -> String? {
      return "recipeID"
    }
    
}
