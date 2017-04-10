//
//  ViewController.swift
//  ProjetoSegue
//
//  Created by Gustavo Calixto on 09/04/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goEstoria1(_ sender: Any) {
        
        //executa segue baseado em identificador
        performSegue(withIdentifier: "Estoria1Segue", sender: nil)
        
    }
    @IBAction func goEstoria2(_ sender: Any) {
        //executa segue baseado em identificador
        performSegue(withIdentifier: "Estoria2Segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier!{
            case "Estoria1Segue":
                let objDestinoEst1 = segue.destination as! Estoria1ViewController
                objDestinoEst1.nome = txtNome.text!
            
            case "Estoria2Segue":
                let objDestinoEst2 = segue.destination as! Estoria2ViewController
                objDestinoEst2.nome = txtNome.text!
            default: return;
        }
    }
}

