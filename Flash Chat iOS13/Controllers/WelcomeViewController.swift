//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        guard let controller = self.storyboard?.instantiateViewController(identifier: K.registerViewController) as? RegisterViewController else {return}
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let controller = self.storyboard?.instantiateViewController(identifier: K.loginViewController) as? LoginViewController else {return}
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
