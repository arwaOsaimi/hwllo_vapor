//
//  File.swift
//  
//
//  Created by Arwa Alosaimi on 08/08/1445 AH.
//

import Fluent

struct CreateFlight: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("todos")
            .id()
            .field("title", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("todos").delete()
    }
}
