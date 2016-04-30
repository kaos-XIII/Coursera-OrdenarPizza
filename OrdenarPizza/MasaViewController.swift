//
//  MasaViewController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 30/4/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var masaPicker: UIPickerView!
    let masas = ["Delgada", "Crujiente", "Gruesa"]
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        masaPicker.delegate = self
        masaPicker.dataSource = self
        masaPicker.selectRow(1, inComponent: 0, animated: true)
        masaPizza = masas[masaPicker.selectedRowInComponent(0)]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return masas[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return masas.count
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        masaPizza = masas[row]
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        if(segue.identifier == "MasaQuesoSegue") {
            
            let siguienteVC = segue.destinationViewController as! QuesoViewController
            
            siguienteVC.tamanoPizza = tamanoPizza
            
            siguienteVC.masaPizza = masaPizza
            print("Masa Pizza: " + masaPizza)
            
            siguienteVC.quesoPizza = quesoPizza
            siguienteVC.ingredientesPizza = ingredientesPizza
            siguienteVC.numIngredientesPizza = numIngredientesPizza
        
        }
    
    }
    
}
