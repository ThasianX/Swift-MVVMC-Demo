import Foundation
import UIKit

class SettingsCoordinator: BaseCoordinator {
    
    private let settingsViewModel: SettingsViewModel
    
    init(settingsViewModel: SettingsViewModel) {
        self.settingsViewModel = settingsViewModel
    }
    
    override func start() {
        let viewController = SettingsViewController.instantiate()
        viewController.viewModel = self.settingsViewModel
        
        self.navigationController.viewControllers = [viewController]
    }
}
