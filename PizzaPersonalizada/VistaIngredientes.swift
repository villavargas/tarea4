//
//  VistaIngredientes.swift
//  PizzaPersonalizada
//
//  Created by Luis Alejandro Villa Vargas on 03/04/16.
//  Copyright © 2016 Luis Alejandro Villa Vargas. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate  {
    
   
    @IBOutlet weak var ingredientes3: UIPickerView!
  
    @IBOutlet weak var ingredientes1: UIPickerView!
    
    @IBOutlet weak var ingredientes2: UIPickerView!
    @IBOutlet weak var ingredienteText3: UILabel!
    @IBOutlet weak var ingredienteText2: UILabel!
    var tamañoYMasaYQueso:String = ""
    var ingre1Select:String = "Jamón"
    var ingre2Select:String = ""
    var ingre3Select:String = ""
    
  //  @IBOutlet weak var ingredienteText: UILabel!
    let ingrList = ["Jamón", "Pepperoni", "Pavo", "Salchicha"]
    let ingr2 = ["Ninguno","Aceituna", "Piña"]
    let ingr3 = ["Ninguno", "Cebolla", "Pimiento"]
   /* let ingr4 = ["Ninguno", "Pimiento"]
    let ingr5 = ["Ninguno", "Piña"]*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientes1.dataSource = self
        ingredientes1.delegate = self
        
        ingredientes2.dataSource = self
        ingredientes2.delegate = self
        
        ingredientes3.dataSource = self
        ingredientes3.delegate = self
        
       /* ingredientes4.dataSource = self
        ingredientes4.delegate = self
        
        ingredientes5.dataSource = self
        ingredientes5.delegate = self
        */
       
       // ingredienteText.text = "Jamón"
    }
    
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let res = ingre1Select + ", " + ingre2Select + ", " +
    ingre3Select
    let siguienteVista = segue.destinationViewController as! VistaResultados
    siguienteVista.tamañoResult = res + ", " + tamañoYMasaYQueso
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
       
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var ingr:Int = 0
        if (pickerView == ingredientes1) {
            ingr = ingrList.count
        }
        if (pickerView == ingredientes2) {
            ingr = ingr2.count
        }
        if (pickerView == ingredientes3) {
            ingr = ingr3.count
        }
        
        return ingr

    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var ingrs:String = ""
        if (pickerView == ingredientes1) {
            ingrs = ingrList[row]
        }
        if (pickerView == ingredientes2) {
            ingrs = ingr2[row]
        }
        if (pickerView == ingredientes3) {
            ingrs = ingr3[row]
        }
        
        return ingrs

    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView == ingredientes1) {
            ingre1Select = ingrList[row]
        }
        if (pickerView == ingredientes2) {
            ingre2Select = ingr2[row]
        }
        if (pickerView == ingredientes3) {
            ingre3Select = ingr3[row]
        }

    }
    


}
  