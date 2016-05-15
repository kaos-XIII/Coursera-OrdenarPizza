//
//  InterfaceController.swift
//  OrdenarPizzaWatch Extension
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var Image: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        Image.setImageNamed("Pizza")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
        
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        
        if (segueIdentifier == "EmpezarSegue") {
         
            return ["tamanoPizza": "",
                    "masaPizza": "",
                    "quesoPizza": "",
                    "ingredientesPizza": [],
                    "numIngredientesPizza": ""]
            
        }
        else {
            
            return ["tamanoPizza": "",
                    "masaPizza": "",
                    "quesoPizza": "",
                    "ingredientesPizza": [],
                    "numIngredientesPizza": ""]
        
        }
        
    }
    
}
