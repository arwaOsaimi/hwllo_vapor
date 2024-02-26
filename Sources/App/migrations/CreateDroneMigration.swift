//
//  File.swift
//  
//
//  Created by Arwa Alosaimi on 08/08/1445 AH.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateDroneMigration: AsyncMigration{
  
    func prepare(on database: Database) async throws {
        
        try await database.schema("drones")
            .id()
            .field("name", .string)
            .create()
        

    }
    func revert(on database: FluentKit.Database) async throws {
        try await database.schema("drones")
            .delete()
    }
    
//    func revert(on database: Database) -> EventLoopFuture<Void> {
//        database.schema("UserTable").delete()
//    }
}
