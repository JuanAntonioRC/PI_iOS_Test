//
//  ViewController.swift
//  8MUSIC
//
//  Created by Juan Antonio Redondo on 05/01/2019.
//  Copyright © 2019 Juan Antonio Redondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //cambiamos el color de la barra de navegación para que encaje con el fondo
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        //quitamos el separador del navegador
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()

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
