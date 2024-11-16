import Vapor

// TODO: Move this file into the Controllers folder
struct ___VARIABLE_productName:identifier___Controller: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let ___VARIABLE_productNameLowercased___s = routes.grouped("api", "___VARIABLE_schema___")
        ___VARIABLE_productNameLowercased___s.get(use: index)
        ___VARIABLE_productNameLowercased___s.post(use: create)
        ___VARIABLE_productNameLowercased___s.group(":___VARIABLE_queryName___") { ___VARIABLE_productNameLowercased___ in
            ___VARIABLE_productNameLowercased___.get(use: show)
            ___VARIABLE_productNameLowercased___.delete(use: delete)
            ___VARIABLE_productNameLowercased___.put(use: update)
        }
    }

    /// GET /api/___VARIABLE_schema___
    @Sendable
    func index(req: Request) async throws -> [___VARIABLE_productName:identifier___DTO] {
        try await ___VARIABLE_productName:identifier___.query(on: req.db).all().map { $0.toDTO() }
    }

    /// POST /api/___VARIABLE_schema___
    @Sendable
    func create(req: Request) async throws -> ___VARIABLE_productName:identifier___DTO {
        let model = try req.content.decode(___VARIABLE_productName:identifier___DTO.self).toModel()
        try await model.save(on: req.db)
        return model.toDTO()
    }

    /// GET /api/___VARIABLE_schema___/:___VARIABLE_queryName___
    @Sendable
    func show(req: Request) async throws -> ___VARIABLE_productName:identifier___DTO {
        guard let model = try await ___VARIABLE_productName:identifier___.find(req.parameters.get("___VARIABLE_queryName___"), on: req.db) else {
            throw Abort(.notFound)
        }
        return model.toDTO()
    }

    /// DELETE /api/___VARIABLE_schema___/:___VARIABLE_queryName___
    @Sendable
    func delete(req: Request) async throws -> HTTPStatus {
        guard let model = try await ___VARIABLE_productName:identifier___.find(req.parameters.get("___VARIABLE_queryName___"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await model.delete(on: req.db)
        return .noContent
    }

    /// PUT /api/___VARIABLE_schema___/:___VARIABLE_queryName___
    @Sendable
    func update(req: Request) async throws -> ___VARIABLE_productName:identifier___DTO {
        guard let model = try await ___VARIABLE_productName:identifier___.find(req.parameters.get("___VARIABLE_queryName___"), on: req.db) else {
            throw Abort(.notFound)
        }
        let updatedModel = try req.content.decode(___VARIABLE_productName:identifier___DTO.self)
        // model.<#propertieName#> = updatedModel.<#propertieName#>
        try await model.update(on: req.db)
        return model.toDTO()
    }
}
