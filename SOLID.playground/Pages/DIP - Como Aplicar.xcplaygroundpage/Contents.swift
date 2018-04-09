protocol Storage {
    func save(string: String)
}

class Handler {
    let storage: Storage
    init(storage: Storage) {
        self.storage = storage
    }

    func handle(string: String) {
        storage.save(string: string)
    }
}

class FilesystemManager: Storage {
    func save(string: String) {
        // Open a file in read-mode
        // Save the string in this file
        // Close the file
    }
}

class CloudManagerFile: Storage {
    
    func save(string: String) {
        // Connect to the Cloud
        // Execute the query to save the string in a table
        // Close the connection
    }
}
