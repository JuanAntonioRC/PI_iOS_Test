//
//  ViewController.swift
//  8MUSIC
//
//  Created by Juan Antonio Redondo on 05/01/2019.
//  Copyright © 2019 Juan Antonio Redondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func menuButton(_ sender: Any) {
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        revealViewController()?.rightViewRevealWidth = 250
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        //cambiamos el color de la barra de navegación para que encaje con el fondo
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        //quitamos el separador del navegador
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()

    }
    
    func sideMenu(){
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController()?.rightViewRevealWidth = 250
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
