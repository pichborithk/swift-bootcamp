// A singleton is a design pattern that restricts the instantiation of a class to one single instance. It is commonly used to provide a global point of access to a shared resource or to manage global states within an application.

// In Swift, you can create a singleton by defining a static constant or variable that holds the single instance of the class and by ensuring that the initializer of the class is private to prevent the creation of additional instances.

// Here's an example of creating a singleton in Swift:

import Foundation

class SingletonExample {
    
    // Static constant to hold the single instance of the class
    static let shared = SingletonExample()
    
    // Private initializer to prevent the creation of additional instances
    private init() {
        // Initialization code here
    }
    
    func someMethod() {
        print("Singleton method called")
    }
}

// Usage
let singletonInstance = SingletonExample.shared
singletonInstance.someMethod()  // Output: Singleton method called

// Singleton with Lazy Initialization:
// You can also use lazy initialization to create a singleton instance only when it's accessed for the first time:

class LazySingletonExample {
    
    // Static constant to hold the single instance of the class
    static let shared: LazySingletonExample = {
        let instance = LazySingletonExample()
        // Initialization code here
        return instance
    }()
    
    // Private initializer to prevent the creation of additional instances
    private init() {
        // Initialization code here
    }
    
    func someMethod() {
        print("Singleton method called")
    }
}

// Usage
let lazySingletonInstance = LazySingletonExample.shared
lazySingletonInstance.someMethod()  // Output: Singleton method called

// Thread-Safe Singleton:
// If your singleton needs to be thread-safe (i.e., to prevent multiple threads from creating multiple instances), you can use dispatch_once (Objective-C) or dispatch_once_t (Swift 3 and earlier). However, since Swift 4, lazy initialization with static let is thread-safe by default:

class ThreadSafeSingleton {
    
    static let shared = ThreadSafeSingleton()
    
    private init() {
        // Initialization code here
    }
    
    func someMethod() {
        print("Thread-safe singleton method called")
    }
}
