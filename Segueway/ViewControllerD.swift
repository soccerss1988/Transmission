//
//  ViewControllerD.swift
//  Segueway
//
//  Created by YJ Huang on 2019/4/24.
//  Copyright © 2019 YJ Huang. All rights reserved.
//

import UIKit

//MARK: Protocol
protocol SendMessageBack : AnyObject {
    func sendMessage(message : String);
}

//define struct for noti userInfo dictory key
struct NotificationInfo {
    static let viewcontroller = "viewcontroller"
    static let message = "message"
}

class ViewControllerD: UIViewController {
    weak var delegate : SendMessageBack?
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func prepareforDelegate(sender: UIButton) {
        delegate?.sendMessage(message: "message from ViewControllerD")
        self.dissmissCurrentController()
    }
    
    
    //MARK: post notification
    @IBAction func sendmessageWithNotification(sender: UIButton) {
        
        
        NotificationCenter.default.post(name: .noti_sendMessage, object: "message", userInfo: [NotificationInfo.viewcontroller:  "ViewControllerD",NotificationInfo.message: self.inputTextField.text ?? ""])
        self.dissmissCurrentController()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK Extensions

//more clearer noti name
extension Notification.Name {
    static let noti_sendMessage = Notification.Name("NOTI_SEND_MESSAGE")
}

extension UIViewController {
    func dissmissCurrentController() {
        self.dismiss(animated: true, completion: nil)
    }
}
