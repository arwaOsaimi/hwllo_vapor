//
//  File.swift
//  
//
//  Created by Arwa Alosaimi on 08/08/1445 AH.
//

import Foundation
import Fluent
import Vapor

final class Drone: Model, Content{
    static let schema = "Drone"
    
    @ID /*(key: .id)*/
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    init()  {
        
    }
    
    init (id: UUID? = nil, name: String){
        self.id = id
        self.name = name
    }

}
