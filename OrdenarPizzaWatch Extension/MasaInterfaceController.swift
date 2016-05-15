//
//  MasaInterfaceController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    let masas = ["Delgada", "Crujiente", "Gruesa"]
    var masaSelect: Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.

        tamanoPizza = ((context as! NSDictionary)["tamanoPizza"] as? String)!
        masaPizza = ((context as! NSDictionary)["masaPizza"] as? String)!
        quesoPizza = ((context as! NSDictionary)["quesoPizza"] as? String)!
        ingredientesPizza = ((context as! NSDictionary)["ingredientesPizza"] as? [String])!
        numIngredientesPizza = ((context as! NSDictionary)["numIngredientesPizza"] as? Int)!

        masaPicker.setSelectedItemIndex(0)
        let item1 = WKPickerItem()
        item1.title = masas[0]
        
        let item2 = WKPickerItem()
        item2.title = masas[1]
        
        let item3 = WKPickerItem()
        item3.title = masas[2]
        
        let array = [item1, item2, item3]
        
        masaPicker.setItems(array)
        
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
    
        masaSelect = value
        
        print(masaSelect)
        
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        
        if (segueIdentifier == "MasaQuesoSegue") {
            
            return ["tamanoPizza": tamanoPizza,
                    "masaPizza": masas[masaSelect],
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
