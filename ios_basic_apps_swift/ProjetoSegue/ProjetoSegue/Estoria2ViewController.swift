//
//  Estoria2ViewController.swift
//  ProjetoSegue
//
//  Created by Gustavo Calixto on 10/04/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

import UIKit

class Estoria2ViewController: UIViewController {

    @IBOutlet weak var txtNome: UILabel!
    var nome:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //atualiza o nome da tela de estoria
        txtNome.text = nome
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goTap(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "Estoria2FimSegue", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
