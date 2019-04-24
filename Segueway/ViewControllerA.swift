//
//  ViewController.swift
//  Segueway
//
//  Created by YJ Huang on 2019/4/24.
//  Copyright © 2019 YJ Huang. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {
    var  messageFormPage2 : String = ""
    @IBOutlet weak var recivedMsgLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    /*
     ## 注意
     如果segue type選costum，請提供自定義的sugue class
     <Make sure that in your storyboard the segue type is not set to custom. If you set it to custom you'll need to provide your own custom segue class.>
     //https://stackoverflow.com/questions/32309909/perform-segue-with-identifier-wont-work-in-swift-2
     ##
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toVC1":
            let vc1 = segue.destination as! ViewControllerB
            /*此時的ui尚未init完成，不可直接assign value to uicomponent,請於viewDidLoad 時assign
             page2.page1MsgLabel.text = self.inputTextField.text ?? "" //carsh
             */
            vc1.messageFormPage1 = self.inputTextField.text ?? ""
        case "toVC3":
            let vc3 = segue.destination as! ViewControllerD
            vc3.delegate = self
        default:
            return
            }
    }
    
    //MARK: unwind segueway #1
    //MARK: unwind segueway #2
    @IBAction func unwindSegueTopage1(_ segue : UIStoryboardSegue) {
        
        switch segue.identifier {
        case "backFromVC1":
            let vc1 = segue.source as! ViewControllerB
            self.recivedMsgLabel.text = vc1.inputTextField.text
        case "backFromVC2":
            let vc2 = segue.source as! ViewControllerC
            self.recivedMsgLabel.text = vc2.vc2textField.text
        default:
            self.recivedMsgLabel.text = ""
        }
    }
}

//MARK: Protocol
extension ViewControllerA : SendMessageBack {
    func sendMessage(message: String) {
        guard message == ""  else {
            self.recivedMsgLabel.text = message
            return
        }
    }
}
