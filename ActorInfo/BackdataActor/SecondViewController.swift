//
//  SecondViewController.swift
//  BackdataActor
//
//  Created by Mac on 18/04/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var actornameTF:UITextField!
    @IBOutlet weak var filmnameTF:UITextField!
    
    weak var delegateSV:Actordatapassingprotocol?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationController?.title = "SecondviewContoller"
        // Do any additional setup after loading the view.
    }
    @IBAction func Popbutton()
    {
        let name = self.actornameTF.text
        let name1 = self.filmnameTF.text
        delegateSV?.Passdata(actorname: name, filmname:name1)
        
        self.navigationController?.popViewController(animated: true)
    }
    

}
