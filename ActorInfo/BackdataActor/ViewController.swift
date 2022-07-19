//
//  ViewController.swift
//  BackdataActor
//
//  Created by Mac on 18/04/22.
//

import UIKit

class ViewController: UIViewController,Actordatapassingprotocol {
    
    
    @IBOutlet weak var nameActor:UILabel!
    @IBOutlet weak var filmName:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "FirstViewcontroller"
       // self.navigationController?.titlebar = "FirstViewcontroller"
    }

@IBAction func Pushbutton()
    {
      guard  let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        else
        {
            return
        }
        
        secondVC.delegateSV = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
        func Passdata(actorname: String?, filmname: String?)
         {
             self.nameActor.text = actorname
             self.filmName.text = actorname


          }
      
}
    
    
    
    


