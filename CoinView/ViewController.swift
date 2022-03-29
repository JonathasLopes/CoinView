//
//  ViewController.swift
//  CoinView
//
//  Created by Jonathas Lopes on 21/03/22.
//

import UIKit


class MyTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController() {
        let home = UINavigationController(rootViewController: Home())
        let myCoins = UINavigationController(rootViewController: MyCoins())
        let trends = UINavigationController(rootViewController: Trends())
        
        self.setViewControllers([trends, home, myCoins], animated: false)
        self.tabBar.backgroundColor = UIColor(red: 14/255, green: 37/255, blue: 43/255, alpha: 0.5)
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = .white
        self.tabBar.tintColor = UIColor(red: 220/255, green: 185/255, blue: 4/255, alpha: 1.0)
        
        guard let items = tabBar.items else{return}
        
        items[0].title = "Trends"
        items[0].image = UIImage(systemName: "chart.line.uptrend.xyaxis")
        
        items[1].title = "Home"
        items[1].image = UIImage(named: "Icon-2")?.withRenderingMode(.alwaysOriginal)
        items[1].selectedImage = UIImage(named: "Icon")?.withRenderingMode(.alwaysOriginal)
        
        items[2].title = "MyCoins"
        items[2].image = UIImage(systemName: "bitcoinsign.circle")
    }
}


class Home: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
    }
}

class MyCoins: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "MyCoins"
    }
}

class Trends: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Trends"
    }
}

