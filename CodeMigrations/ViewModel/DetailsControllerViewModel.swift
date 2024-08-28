//
//  DetailsControllerViewModel.swift
//  CodeMigrations
//
//  Created by Sumit on 26/08/24.
//

import Foundation
 
 class DetailsControllerViewModel {
 
     var detailsControllerModel:[DetailsControllerModel] = []
     
     private let title:String = "Esquire"
     private let des:String = "This is particularly helpful when common names are given to protocols. For example, the word transaction could feasibly be used to mean an animation transaction, a bank transaction, and a database transaction all in the same app."
     private let imgString:String = "Bg_image_One"
     private let count  = 1...15
     
     init() {
        for number in count {
            detailsControllerModel.append(DetailsControllerModel(title: title, describtions: des, rowCount: "0\(number)", img:imgString))
         }
     }
 }
