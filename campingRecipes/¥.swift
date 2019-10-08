//
//  RecipeDataModel.swift
//  campingRecipes
//
//  Created by 河村直 on 2019/09/29.
//  Copyright © 2019 hanamakehanamakes. All rights reserved.
//

import Foundation
import RealmSwift
class DataModel: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var sex: String = ""
    @objc dynamic var age: Int = 0
}
