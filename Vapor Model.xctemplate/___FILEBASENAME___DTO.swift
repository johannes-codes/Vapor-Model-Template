import Fluent
import Vapor

// TODO: Move this file into the DTO folder
struct ___VARIABLE_productName:identifier___DTO: Content {
    var id: UUID?

    func toModel() -> ___VARIABLE_productName:identifier___ {
        var model = ___VARIABLE_productName:identifier___()

        // Direct assignments for non-optional properties
        model.id = id

        // Helper function to assign optional values
        func assignOptionalValue<T>(_ value: T?, to keyPath: WritableKeyPath<___VARIABLE_productName:identifier___, T>) {
            if let value = value {
                model[keyPath: keyPath] = value
            }
        }

        // Assign optional properties using the helper function
        // assignOptionalValue(userName, to: \.userName)

        return model
    }
}
