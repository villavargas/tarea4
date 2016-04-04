//
//  VistaQueso.swift
//  PizzaPersonalizada
//
//  Created by Luis Alejandro Villa Vargas on 03/04/16.
//  Copyright © 2016 Luis Alejandro Villa Vargas. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var tipoQueso: UIPickerView!
    @IBOutlet weak var queso: UILabel!
    let tiposDeQueso = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var tamañoYMasa:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipoQueso.dataSource = self
        tipoQueso.delegate = self
        queso.text = "Sin queso"
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let res = self.queso.text!
    let siguienteVista = segue.destinationViewController as! VistaIngredientes
    siguienteVista.tamañoYMasaYQueso = res + ", " + tamañoYMasa
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposDeQueso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposDeQueso[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        queso.text = tiposDeQueso[row]
    }



}
