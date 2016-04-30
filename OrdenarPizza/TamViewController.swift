//
//  TamViewController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 30/4/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import UIKit

class TamViewController: UIViewController {
    
    @IBOutlet weak var TamSegmented: UISegmentedControl!
    let tamano = ["Pequeña", "Mediana", "Grande", "Familiar"]
    
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
    
        if(segue.identifier == "TamMasaSegue") {
            
            let siguienteVC = segue.destinationViewController as! MasaViewController
            
            siguienteVC.tamanoPizza = tamano[Int(TamSegmented.selectedSegmentIndex.description)!]
            print("Tamaño Pizza: " + tamano[Int(TamSegmented.selectedSegmentIndex.description)!])
            
            siguienteVC.masaPizza = masaPizza
            siguienteVC.quesoPizza = quesoPizza
            siguienteVC.ingredientesPizza = ingredientesPizza
            siguienteVC.numIngredientesPizza = numIngredientesPizza
            
            
        }
    
    }

}
