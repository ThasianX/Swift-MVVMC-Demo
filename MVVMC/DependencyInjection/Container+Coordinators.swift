import Swinject

extension Container {
    
    /*
     AppCoordinator <- SessionService
     SignInCoordinator <- SignInViewModel
     DrawerMenuCoordinator <- SessionService, DrawerMenuViewModel
     DashboardCoordinator <- DataManager, DashboardViewModel
     OnBoardingCoordinator <- DataManager, SetNameViewModel, SetOptionsViewModel
     SettingsCoordinator <- SettingsViewModel
     */
    
    func registerCoordinators() {
        self.autoregister(AppCoordinator.self, initializer: AppCoordinator.init)
        self.autoregister(SignInCoordinator.self, initializer: SignInCoordinator.init)
        self.autoregister(DrawerMenuCoordinator.self, initializer: DrawerMenuCoordinator.init)
        self.autoregister(DashboardCoordinator.self, initializer: DashboardCoordinator.init)
        self.autoregister(OnBoardingCoordinator.self, initializer: OnBoardingCoordinator.init)
        self.autoregister(SettingsCoordinator.self, initializer: SettingsCoordinator.init)
    }
}
