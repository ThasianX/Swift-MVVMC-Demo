import Swinject
import SwinjectAutoregistration

extension Container {
    
    /*
     BackendRestClient <- AlertDispatcher, HttpClient
     DataManager
     TranslationsService <- DataManager, BackendRestClient
     SessionService <- DataManager, BackendRestClient, TranslationsService
     */
    
    func registerServices() {
        // AlertDispatcher doesn't require any dependencies. AlertDispatcher is a class.
        self.autoregister(AlertDispatcher.self, initializer: AlertDispatcher.init).inObjectScope(.container)
        
        // HttpClientMock doesn't require any dependencies. HttpClient is a protocol and HttpClient is its implementation
        self.autoregister(HttpClient.self, initializer: HttpClientMock.init).inObjectScope(.container)
        
        // BackendRestClient requires an HttpClient and AlertDispatcher as dependencies. BackendRestClient is a class.
        self.autoregister(BackendRestClient.self, initializer: BackendRestClient.init).inObjectScope(.container)
        
        // UserDataManager doesn't require any dependencies. DataManager is a protocol and UserDataManager is its implementation
        self.autoregister(DataManager.self, initializer: UserDataManager.init).inObjectScope(.container)
        
        // TranslationsService requires a DataManager and BackendRestClient as dependencies. TranslationsService is a class.
        self.autoregister(TranslationsService.self, initializer: TranslationsService.init).inObjectScope(.container)
        
        // SessionService requires a DataManager, BackendRestClient, and TranslationsService as dependencies. SessionService is a class.
        self.autoregister(SessionService.self, initializer: SessionService.init).inObjectScope(.container)
    }
}
