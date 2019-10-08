import Foundation
import RealmSwift

class RecipesDataModel: Object {
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
    
    @objc dynamic var howToMake1: String = ""
    @objc dynamic var howToMake2: String?
    @objc dynamic var howToMake3: String?
    @objc dynamic var howToMake4: String?
    @objc dynamic var howToMake5: String?
    @objc dynamic var howToMake6: String?
    @objc dynamic var howToMake7: String?
    @objc dynamic var howToMake8: String?
    @objc dynamic var howToMake9: String?
    @objc dynamic var howToMake10: String?
    
    @objc dynamic var major: Int = 0
    @objc dynamic var medium: Int = 0
    @objc dynamic var ecology: Bool = false
    @objc dynamic var time: Int = 0
    @objc dynamic var preparation: Bool = false
    @objc dynamic var favorite: Bool = false
}
