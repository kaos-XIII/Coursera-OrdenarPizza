//
//  QuesoViewController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 30/4/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    @IBOutlet weak var quesoSegmented: UISegmentedControl!
    let tamano = ["Mozarela", "Cheddar", "Parmesano", "Sin Queso"]
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        if(segue.identifier == "QuesoIngredientesSegue") {
            
            let siguienteVC = segue.destinationViewController as! IngredientesViewController
            
            siguienteVC.tamanoPizza = tamanoPizza
            siguienteVC.masaPizza = masaPizza
            
            siguienteVC.quesoPizza = quesoPizza
            
            siguienteVC.quesoPizza = tamano[Int(quesoSegmented.selectedSegmentIndex.description)!]
            print("Queso Pizza: " + tamano[Int(quesoSegmented.selectedSegmentIndex.description)!])
            
            siguienteVC.ingredientesPizza = ingredientesPizza
            siguienteVC.numIngredientesPizza = numIngredientesPizza
        
        }
    
    }

}
