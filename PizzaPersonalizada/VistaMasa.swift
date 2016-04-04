//
//  VistaMasa.swift
//  PizzaPersonalizada
//
//  Created by Luis Alejandro Villa Vargas on 03/04/16.
//  Copyright © 2016 Luis Alejandro Villa Vargas. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var tipoMasa: UIPickerView!
    let tiposDeMasa = ["Delgada","Crujiente","Gruesa"]
    var tamañoMasa:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipoMasa.dataSource = self
        tipoMasa.delegate = self
        masa.text = "Delgada"
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let res = self.masa.text!
        let siguienteVista = segue.destinationViewController as! VistaQueso
        siguienteVista.tamañoYMasa = res + ", " + tamañoMasa
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposDeMasa.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposDeMasa[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masa.text = tiposDeMasa[row]
    }



}
