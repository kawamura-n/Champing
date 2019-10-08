import UIKit
import RealmSwift

class ResultViewController: UIViewController {
    
    var sendMediumNum = String()
    var sendMajorNum = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
/* */
        let realmURL = Realm.Configuration.defaultConfiguration.fileURL!
        let realmURLs = [realmURL, realmURL.appendingPathExtension("lock"), realmURL.appendingPathComponent("management")
        ]


        for URL in realmURLs {
            do {
                try FileManager.default.removeItem(at: URL)
            } catch {
                print("errer : deleteRealmFile")
            }
        }
*/
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
//        let data = RecipesDataModel()
//        data.recipeName = "揚げパン"
//
//        let imageName = UIImage(named: "cooking_onabe")!
//        let image = imageName.pngData()
//        data.image = image
//
//        let  ing1 = Ingredient()
//        ing1.ingredient = "パン"
//        ing1.detail = "一個"
//        data.ingredient1 = ing1
//
//        let ing2 = Ingredient()
//        ing2.ingredient = "砂糖"
//        ing2.detail = "少々"
//        data.ingredient2 = ing2
//
//        data.howToMake1 = "パンを用意します"
//        data.howToMake2 = "パンを潰します"
//        data.howToMake3 = "完成"
//
//        data.major = 2
//        data.medium = 3
//        data.ecology = true
//        data.time = 1
//        data.preparation = false
//
//        let realm = try! Realm()
//        try! realm.write {
//            realm.add(data)
////           realm.deleteAll()
//        }
//        let results = realm.objects(RecipesDataModel.self).filter("preparation == false")
//        for data in results {
//            let image = UIImage(data : data.image)
//            sampleImage.image = image
//        }
    }
//    @IBOutlet weak var imageArea: UIImageView!
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
//        label1.text = sendMajorNum
//        label2.text = sendMediumNum
//     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}


// ctr cmd G

//URL探す
//print(Realm.Configuration.defaultConfiguration.fileURL!)


//ファイル削除
//        let realmURL = Realm.Configuration.defaultConfiguration.fileURL!
//        let realmURLs = [realmURL, realmURL.appendingPathExtension("lock"), realmURL.appendingPathComponent("management")
//        ]
//        for URL in realmURLs {
//            do {
//                try FileManager.default.removeItem(at: URL)
//            } catch {
//                print("handle errer")
//            }
//        }
