//
//  VistaResultados.swift
//  PizzaPersonalizada
//
//  Created by Luis Alejandro Villa Vargas on 02/04/16.
//  Copyright © 2016 Luis Alejandro Villa Vargas. All rights reserved.
//

import UIKit

class VistaResultados: UIViewController {
    
    @IBOutlet weak var resultadoPizza: UILabel!
    var tamañoResult:String = ""
    

    
    override func viewWillAppear(animated: Bool) {
               resultadoPizza.text = tamañoResult
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
