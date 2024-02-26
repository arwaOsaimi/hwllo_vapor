//
//  File.swift
//  
//
//  Created by Arwa Alosaimi on 08/08/1445 AH.
//

import Foundation
import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "todos"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    init()  {}
    
    init (id: UUID? = nil, title: String){
        self.id = id
        self.title = title
        
    }
}
