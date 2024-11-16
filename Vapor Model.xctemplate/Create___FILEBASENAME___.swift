import Fluent

// TODO: Move this file into the Migrations folder
struct Create___VARIABLE_productName:identifier___: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("___VARIABLE_schema___")
            .field("___VARIABLE_schema____id", .uuid, .identifier(auto: true))
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("___VARIABLE_schema___").delete()
    }
}
