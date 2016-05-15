//
//  TamInterfaceController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class TamInterfaceController: WKInterfaceController {

    @IBOutlet var TamPicker: WKInterfacePicker!

    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0

    let tamano = ["Pequeña", "Mediana", "Grande", "Familiar"]
    var tamSelect: Int = 0;
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        TamPicker.setSelectedItemIndex(0)
        let item1 = WKPickerItem()
        item1.title = tamano[0]
        
        let item2 = WKPickerItem()
        item2.title = tamano[1]
        
        let item3 = WKPickerItem()
        item3.title = tamano[2]

        let item4 = WKPickerItem()
        item4.title = tamano[3]
        
        let array = [item1, item2, item3, item4]
        
        TamPicker.setItems(array)

        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func PickerAction(value: Int) {
    
        tamSelect = value
        
        print(tamSelect)
        
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        
        if (segueIdentifier == "TamMasaSeque") {
            
            return ["tamanoPizza": tamano[tamSelect],
                    "masaPizza": masaPizza,
                    "quesoPizza": quesoPizza,
                    "ingredientesPizza": ingredientesPizza,
                    "numIngredientesPizza": numIngredientesPizza]
            
        }
        else {
            
            return ["tamanoPizza": "",
                    "masaPizza": "",
                    "quesoPizza": "",
                    "ingredientesPizza": "",
                    "numIngredientesPizza": ""]
            
        }
        
    }
    
}
