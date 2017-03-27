//
//  ViewController.swift
//  AppBasico
//
//  Created by Gustavo Calixto on 27/03/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbMensagem: UILabel!
    @IBOutlet weak var txtMensagem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doTextChange(_ sender: Any) {
        //programe o evento de toque no botão aqui!
        lbMensagem.text = txtMensagem.text
        
    }

}

