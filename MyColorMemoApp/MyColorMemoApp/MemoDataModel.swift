//
//  MemoDataModel.swift
//  MyColorMemoApp
//
//  Created by 菊地原杏菜 on 2023/06/21.
//

import Foundation
import RealmSwift

class MemoDataModel: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var text: String = ""
    @objc dynamic var recordData: Date = Date()
}
