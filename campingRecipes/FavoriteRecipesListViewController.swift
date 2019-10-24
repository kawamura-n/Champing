import UIKit
import RealmSwift

class FavoriteRecipesListViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate  {
            
    @IBOutlet var collectionView: UICollectionView!
        
    @IBAction func goMenuViewButton(_ sender: Any) {
        performSegue(withIdentifier: "goMenuViewController", sender: nil)
    }
    
    var ecologyString : String!
    var timeString : String!
    var preparationString : String!
    
    var sendMajorNum = String()
    var intSendMajorNum : Int!
    var sendMediumNum = String()
    var intSendMediumNum : Int!
    
    var arrayRecipesImage: [Data] = []
    var arrayRecipesName: [String] = []
    var arrayRecipesID: [String] = []
    var arrayDetailRecipeID: [String] = []
    
    var selectedRecipeID : String!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = UIColor.init(red: 240/255, green: 248/255, blue: 255/255, alpha: 90/100)
     }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        
        arrayRecipesID = []
        arrayRecipesName = []
        arrayRecipesImage = []
        
        let realm = try! Realm()
        let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true")
        for data in categoryResults {
            let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
            arrayRecipesID.append(data.recipeID)
            arrayRecipesImage.append(RecipesResult[0].image)
            arrayRecipesName.append(RecipesResult[0].recipeName)
        }
        
        collectionView.reloadData()
    }
    
    func reset(){
        arrayRecipesID = []
        arrayRecipesName = []
        arrayRecipesImage = []
         
        let realm = try! Realm()
        let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true")
        for data in categoryResults {
            let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
            arrayRecipesID.append(data.recipeID)
            arrayRecipesImage.append(RecipesResult[0].image)
            arrayRecipesName.append(RecipesResult[0].recipeName)
        }
         
        collectionView.reloadData()
        
    }
    
    func updateView(){

        print("s")
        var ecologyBool :Bool
        var preparationBool :Bool
        arrayRecipesID = []
        arrayRecipesName = []
        arrayRecipesImage = []

        if(ecologyString == "0"){
            ecologyBool = false
        }else{
            ecologyBool = true
        }

        let timeInt = Int(timeString)!

        if(preparationString == "0"){
            preparationBool = false
        }else{
            preparationBool = true
        }

        let realm = try! Realm()

        if(ecologyBool == false){
            if(timeInt == 0){
                if(preparationBool == false){

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true")
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }else{

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && preparation == %@",preparationBool)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }

            }else if(timeInt == 1 || timeInt == 2){
                if(preparationBool == false){

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && time == %@",timeInt)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }
                    
                }else{

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && time == %@ && preparation == %@",timeInt,preparationBool)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }

            }

        }else{

            if(timeInt == 0){
                if(preparationBool == false){

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && ecology == %@",ecologyBool)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }else{

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && ecology == %@ && preparation == %@",ecologyBool,preparationBool)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }
            }else if(timeInt == 1 || timeInt == 2){
                if(preparationBool == false){

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && ecology == %@ && time == %@",ecologyBool,timeInt)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }else{

                    let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true && ecology == %@ && time == %@ && preparation == %@",ecologyBool,timeInt,preparationBool)
                    for data in categoryResults {
                        let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
                        arrayRecipesID.append(data.recipeID)
                        arrayRecipesImage.append(RecipesResult[0].image)
                        arrayRecipesName.append(RecipesResult[0].recipeName)
                    }

                }
            }
        }
        collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 48, left: 24, bottom: 48, right: 24)
        layout.itemSize = CGSize(width: view.frame.size.width/2-48, height:
            view.frame.size.width/2-48)
        layout.minimumLineSpacing = 50
        collectionView.collectionViewLayout = layout
 
        //URL取得
        print(Realm.Configuration.defaultConfiguration.fileURL!)
     
        
        let data = RecipesDataModel()
        data.recipeName = "パン"

        let imageName = UIImage(named: "cooking_onabe")!
        let image = imageName.pngData()
        data.image = image

        let  ing1 = Ingredient()
        ing1.ingredient = "パン"
        ing1.detail = "一個"
        data.ingredient1 = ing1

        let ing2 = Ingredient()
        ing2.ingredient = "砂糖"
        ing2.detail = "少々"
        data.ingredient2 = ing2

        data.howToMake1 = "パンを用意します"
        data.howToMake2 = "パンを潰します"
        data.howToMake3 = "完成"

        data.major = 2
        data.medium = 3
        data.ecology = true
        data.time = 1
        data.preparation = false
        
        
        let realm = try! Realm()
        try! realm.write {
            // realm.add(data)
            // realm.deleteAll()
        }
        
        let categoryResults = realm.objects(RecipesDataModel.self).filter("favorite == true")
        for data in categoryResults {
            let RecipesResult = realm.objects(RecipesDataModel.self).filter("recipeID == %@", data.recipeID)
            arrayRecipesID.append(data.recipeID)
            arrayRecipesImage.append(RecipesResult[0].image)
            arrayRecipesName.append(RecipesResult[0].recipeName)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayRecipesID.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteRecipeImageCell", for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView

        let cellImage = UIImage(data: arrayRecipesImage[indexPath.row])
        imageView.image = cellImage

        let label = cell.contentView.viewWithTag(2) as! UILabel
        label.text = arrayRecipesName[indexPath.row]
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedRecipeID = arrayRecipesID[indexPath.row]
        if selectedRecipeID != nil{
            performSegue(withIdentifier: "goRecipeViewController", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "goRecipeViewController"){
            let nextView: RecipeViewController = (segue.destination as? RecipeViewController)!
            nextView.selectedRecipeID = selectedRecipeID
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
