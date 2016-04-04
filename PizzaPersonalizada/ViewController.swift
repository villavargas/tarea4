//
//  ViewController.swift
//  PizzaPersonalizada
//
//  Created by Luis Alejandro Villa Vargas on 02/04/16.
//  Copyright © 2016 Luis Alejandro Villa Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{

    @IBOutlet weak var tamaño: UIPickerView!
    @IBOutlet weak var select: UILabel!
    let tamañosDiferentes = ["Chica","Mediana","Grande"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        tamaño.dataSource = self
        tamaño.delegate = self
        select.text = "Chica"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let res = self.select.text!
        let siguienteVista = segue.destinationViewController as! VistaMasa
        siguienteVista.tamañoMasa = res
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamañosDiferentes.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamañosDiferentes[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        select.text = tamañosDiferentes[row]
    }

}

