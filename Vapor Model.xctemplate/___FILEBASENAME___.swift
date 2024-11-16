import Fluent
import Foundation
import struct Foundation.UUID

// TODO: Move this file into the Models folder
final class ___VARIABLE_productName:identifier___: Model, @unchecked Sendable {
    static let schema = "___VARIABLE_schema___"

    @ID(custom: "___VARIABLE_schema____id")
    var id: UUID?

    init() { }

    init(id: UUID? = nil) {
        self.id = id
    }

    func toDTO() -> ___VARIABLE_productName:identifier___DTO {
        .init(id: self.id)
    }
}
