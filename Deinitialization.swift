//Deinitialization
/* In Swift, deinitialization is the process of performing cleanup just before an object’s memory is deallocated. 
Deinitializers are specifically defined for classes and are called automatically when an instance's reference count drops to zero. 
Structures and enumerations don’t require deinitializers as they are value types and are automatically cleaned up.
*/

//It takes no parameters and cannot be called directly; it is automatically  triggered by the system.
class FileHandler {
    var fileName: String

    init(fileName: String) {
        self.fileName = fileName
        print("\(fileName) is opened.")
    }

    deinit {
        print("\(fileName) is closed.")
    }
}

if true {
    let file = FileHandler(fileName: "example.txt")
    //Output: example.txt is opened.
}
//Output: example.txt is closed. (Deinitializer is called here.)

/*Memory management: Used for tasks such as closing a file or terminating a network connection when a class instance is no longer needed.
Releasing external resources: For example, disconnecting from a database.
*/
class DatabaseConnection {
    var connectionID: Int
    
    init(connectionID: Int) {
        self.connectionID = connectionID
        print("Connection \(connectionID) is established.")
    }
    
    deinit {
        print("Connection \(connectionID) is terminated.")
    }
}

var dbConnection: DatabaseConnection? = DatabaseConnection(connectionID: 42)
// Output: Connection 42 is established.

dbConnection = nil
// Output: Connection 42 is terminated. (Deinitializer is triggered)

//Deinitializers are only available for classes; they are not supported for structures or enumerations.
