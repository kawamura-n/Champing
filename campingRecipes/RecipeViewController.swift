import UIKit
import RealmSwift
 
class RecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UINavigationControllerDelegate{
    
    var selectedRecipeID: String!
    var ingledientArray: [String] = []
    var detailArray: [String] = []
    var howToMakeArray: [String] = []
    
    var recipes:[[String]] = []
    
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var ingledientTableView: UITableView!
    @IBOutlet weak var howToMakeTableView: UITableView!
    
    var tag:Int = 0
    var cellIdentifier:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        
        ingledientTableView.delegate = self
        ingledientTableView.dataSource = self
        howToMakeTableView.delegate = self
        howToMakeTableView.dataSource = self
        
        let realm = try! Realm()
        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@",selectedRecipeID!)
        
        //画像
        let recipeImage = UIImage(data: RecipesResult[0].image!)
        recipeImageView.image = recipeImage
        
        //レシピ名
        recipeNameLabel.text = RecipesResult[0].recipeName
        recipeNameLabel.textAlignment = NSTextAlignment.center
        
        //材料テーブル
        if let recipeIngledient = RecipesResult[0].ingredient1?.ingredient{
            ingledientArray.append(recipeIngledient)
            detailArray.append(RecipesResult[0].ingredient1!.detail!)
            if let recipeIngledient = RecipesResult[0].ingredient2?.ingredient{
                ingledientArray.append(recipeIngledient)
                detailArray.append(RecipesResult[0].ingredient2!.detail!)
                if let recipeIngledient = RecipesResult[0].ingredient3?.ingredient{
                    ingledientArray.append(recipeIngledient)
                    detailArray.append(RecipesResult[0].ingredient3!.detail!)
                    if let recipeIngledient = RecipesResult[0].ingredient4?.ingredient{
                        ingledientArray.append(recipeIngledient)
                        detailArray.append(RecipesResult[0].ingredient4!.detail!)
                        if let recipeIngledient = RecipesResult[0].ingredient5?.ingredient{
                            ingledientArray.append(recipeIngledient)
                            detailArray.append(RecipesResult[0].ingredient5!.detail!)
                            if let recipeIngledient = RecipesResult[0].ingredient6?.ingredient{
                                ingledientArray.append(recipeIngledient)
                                detailArray.append(RecipesResult[0].ingredient6!.detail!)
                                if let recipeIngledient = RecipesResult[0].ingredient7?.ingredient{
                                    ingledientArray.append(recipeIngledient)
                                    detailArray.append(RecipesResult[0].ingredient7!.detail!)
                                    if let recipeIngledient = RecipesResult[0].ingredient8?.ingredient{
                                        ingledientArray.append(recipeIngledient)
                                        detailArray.append(RecipesResult[0].ingredient8!.detail!)
                                        if let recipeIngledient = RecipesResult[0].ingredient9?.ingredient{
                                             ingledientArray.append(recipeIngledient)
                                             detailArray.append(RecipesResult[0].ingredient9!.detail!)
                                             if let recipeIngledient = RecipesResult[0].ingredient10?.ingredient{
                                                 ingledientArray.append(recipeIngledient)
                                                 detailArray.append(RecipesResult[0].ingredient10!.detail!)
                                                 if let recipeIngledient = RecipesResult[0].ingredient11?.ingredient{
                                                     ingledientArray.append(recipeIngledient)
                                                     detailArray.append(RecipesResult[0].ingredient11!.detail!)
                                                     if let recipeIngledient = RecipesResult[0].ingredient12?.ingredient{
                                                         ingledientArray.append(recipeIngledient)
                                                         detailArray.append(RecipesResult[0].ingredient12!.detail!)
                                                         if let recipeIngledient = RecipesResult[0].ingredient13?.ingredient{
                                                             ingledientArray.append(recipeIngledient)
                                                             detailArray.append(RecipesResult[0].ingredient13!.detail!)
                                                             if let recipeIngledient = RecipesResult[0].ingredient14?.ingredient{
                                                                 ingledientArray.append(recipeIngledient)
                                                                 detailArray.append(RecipesResult[0].ingredient14!.detail!)
                                                                 if let recipeIngledient = RecipesResult[0].ingredient15?.ingredient{
                                                                     ingledientArray.append(recipeIngledient)
                                                                     detailArray.append(RecipesResult[0].ingredient15!.detail!)
                                                                     if let recipeIngledient = RecipesResult[0].ingredient16?.ingredient{
                                                                         ingledientArray.append(recipeIngledient)
                                                                         detailArray.append(RecipesResult[0].ingredient16!.detail!)
                                                                         if let recipeIngledient = RecipesResult[0].ingredient17?.ingredient{
                                                                             ingledientArray.append(recipeIngledient)
                                                                             detailArray.append(RecipesResult[0].ingredient17!.detail!)
                                                                             if let recipeIngledient = RecipesResult[0].ingredient18?.ingredient{
                                                                                 ingledientArray.append(recipeIngledient)
                                                                                 detailArray.append(RecipesResult[0].ingredient18!.detail!)
                                                                                 if let recipeIngledient = RecipesResult[0].ingredient19?.ingredient{
                                                                                      ingledientArray.append(recipeIngledient)
                                                                                      detailArray.append(RecipesResult[0].ingredient19!.detail!)
                                                                                      if let recipeIngledient = RecipesResult[0].ingredient20?.ingredient{
                                                                                          ingledientArray.append(recipeIngledient)
                                                                                          detailArray.append(RecipesResult[0].ingredient20!.detail!)
                                                                                      }
                                                                                 }
                                                                             }
                                                                         }
                                                                     }
                                                                 }
                                                             }
                                                         }
                                                     }
                                                 }
                                             }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        //作り方テーブル
        if var recipeHowToMake : String = RecipesResult[0].howToMake1{
            recipeHowToMake = "1  \(recipeHowToMake)"
            howToMakeArray.append(recipeHowToMake)
            if var recipeHowToMake : String = RecipesResult[0].howToMake2{
                recipeHowToMake = "2  \(recipeHowToMake)"
                howToMakeArray.append(recipeHowToMake)
                if var recipeHowToMake : String = RecipesResult[0].howToMake3{
                    recipeHowToMake = "3  \(recipeHowToMake)"
                    howToMakeArray.append(recipeHowToMake)
                    if var recipeHowToMake : String = RecipesResult[0].howToMake4{
                        recipeHowToMake = "4  \(recipeHowToMake)"
                        howToMakeArray.append(recipeHowToMake)
                        if var recipeHowToMake : String = RecipesResult[0].howToMake5{
                            recipeHowToMake = "5  \(recipeHowToMake)"
                            howToMakeArray.append(recipeHowToMake)
                            if var recipeHowToMake : String = RecipesResult[0].howToMake6{
                                recipeHowToMake = "6  \(recipeHowToMake)"
                                howToMakeArray.append(recipeHowToMake)
                                if var recipeHowToMake : String = RecipesResult[0].howToMake7{
                                    recipeHowToMake = "7  \(recipeHowToMake)"
                                    howToMakeArray.append(recipeHowToMake)
                                    if var recipeHowToMake : String = RecipesResult[0].howToMake8{
                                        recipeHowToMake = "8  \(recipeHowToMake)"
                                        howToMakeArray.append(recipeHowToMake)
                                        if var recipeHowToMake : String = RecipesResult[0].howToMake9{
                                            recipeHowToMake = "9  \(recipeHowToMake)"
                                            howToMakeArray.append(recipeHowToMake)
                                            if var recipeHowToMake : String = RecipesResult[0].howToMake10{
                                                recipeHowToMake = "10  \(recipeHowToMake)"
                                                howToMakeArray.append(recipeHowToMake)
                                                if var recipeHowToMake : String = RecipesResult[0].howToMake1{
                                                    recipeHowToMake = "11  \(recipeHowToMake)"
                                                    howToMakeArray.append(recipeHowToMake)
                                                    if var recipeHowToMake : String = RecipesResult[0].howToMake2{
                                                        recipeHowToMake = "12  \(recipeHowToMake)"
                                                        howToMakeArray.append(recipeHowToMake)
                                                        if var recipeHowToMake : String = RecipesResult[0].howToMake3{
                                                            recipeHowToMake = "13  \(recipeHowToMake)"
                                                            howToMakeArray.append(recipeHowToMake)
                                                            if var recipeHowToMake : String = RecipesResult[0].howToMake4{
                                                                recipeHowToMake = "14  \(recipeHowToMake)"
                                                                howToMakeArray.append(recipeHowToMake)
                                                                if var recipeHowToMake : String = RecipesResult[0].howToMake5{
                                                                    recipeHowToMake = "15  \(recipeHowToMake)"
                                                                    howToMakeArray.append(recipeHowToMake)
                                                                    if var recipeHowToMake : String = RecipesResult[0].howToMake6{
                                                                        recipeHowToMake = "16  \(recipeHowToMake)"
                                                                        howToMakeArray.append(recipeHowToMake)
                                                                        if var recipeHowToMake : String = RecipesResult[0].howToMake7{
                                                                            recipeHowToMake = "17  \(recipeHowToMake)"
                                                                            howToMakeArray.append(recipeHowToMake)
                                                                            if var recipeHowToMake : String = RecipesResult[0].howToMake8{
                                                                                recipeHowToMake = "18  \(recipeHowToMake)"
                                                                                howToMakeArray.append(recipeHowToMake)
                                                                                if var recipeHowToMake : String = RecipesResult[0].howToMake9{
                                                                                    recipeHowToMake = "19  \(recipeHowToMake)"
                                                                                    howToMakeArray.append(recipeHowToMake)
                                                                                    if var recipeHowToMake : String = RecipesResult[0].howToMake10{
                                                                                        recipeHowToMake = "20  \(recipeHowToMake)"
                                                                                        howToMakeArray.append(recipeHowToMake)
                                                                                        if var recipeHowToMake : String = RecipesResult[0].howToMake1{
                                                                                            recipeHowToMake = "21  \(recipeHowToMake)"
                                                                                            howToMakeArray.append(recipeHowToMake)
                                                                                            if var recipeHowToMake : String = RecipesResult[0].howToMake2{
                                                                                                recipeHowToMake = "22  \(recipeHowToMake)"
                                                                                                howToMakeArray.append(recipeHowToMake)
                                                                                                if var recipeHowToMake : String = RecipesResult[0].howToMake3{
                                                                                                    recipeHowToMake = "23  \(recipeHowToMake)"
                                                                                                    howToMakeArray.append(recipeHowToMake)
                                                                                                    if var recipeHowToMake : String = RecipesResult[0].howToMake4{
                                                                                                        recipeHowToMake = "24  \(recipeHowToMake)"
                                                                                                        howToMakeArray.append(recipeHowToMake)
                                                                                                        if var recipeHowToMake : String = RecipesResult[0].howToMake5{
                                                                                                            recipeHowToMake = "25  \(recipeHowToMake)"
                                                                                                            howToMakeArray.append(recipeHowToMake)
                                                                                                            if var recipeHowToMake : String = RecipesResult[0].howToMake6{
                                                                                                                recipeHowToMake = "26  \(recipeHowToMake)"
                                                                                                                howToMakeArray.append(recipeHowToMake)
                                                                                                                if var recipeHowToMake : String = RecipesResult[0].howToMake7{
                                                                                                                    recipeHowToMake = "27  \(recipeHowToMake)"
                                                                                                                    howToMakeArray.append(recipeHowToMake)
                                                                                                                    if var recipeHowToMake : String = RecipesResult[0].howToMake8{
                                                                                                                        recipeHowToMake = "28  \(recipeHowToMake)"
                                                                                                                        howToMakeArray.append(recipeHowToMake)
                                                                                                                        if var recipeHowToMake : String = RecipesResult[0].howToMake9{
                                                                                                                            recipeHowToMake = "29  \(recipeHowToMake)"
                                                                                                                            howToMakeArray.append(recipeHowToMake)
                                                                                                                            if var recipeHowToMake : String = RecipesResult[0].howToMake10{
                                                                                                                                recipeHowToMake = "30  \(recipeHowToMake)"
                                                                                                                                howToMakeArray.append(recipeHowToMake)
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        recipes.append(ingledientArray)
        recipes.append(howToMakeArray)
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let controller = viewController as? FavoriteRecipesListViewController {
            controller.reset()
        }
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goFavoriteContainerViewController" {
            let nextView: SetFavoriteContainerViewController = segue.destination as! SetFavoriteContainerViewController
            nextView.selectedRecipeID = selectedRecipeID
        }
    }
    
    
    func checkTableView(_ tableView: UITableView) -> Void{
        if (tableView.tag == 0) {
            tag = 0
            cellIdentifier = "ingledientCell"
        }else if (tableView.tag == 1) {
            tag = 1
            cellIdentifier = "howToMakeCell"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkTableView(tableView)
        return recipes[tag].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        checkTableView(tableView)
        let cell :UITableViewCell = tableView.dequeueReusableCell(withIdentifier:  cellIdentifier, for:indexPath as IndexPath)
        cell.textLabel?.text = recipes[tag][indexPath.row]
        cell.detailTextLabel?.text = detailArray[indexPath.row]
        
        ingledientTableView.tableFooterView = UIView()
        howToMakeTableView.tableFooterView = UIView()

        return cell
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
}
