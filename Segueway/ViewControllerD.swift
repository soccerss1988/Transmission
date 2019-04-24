//
//  ViewControllerD.swift
//  Segueway
//
//  Created by YJ Huang on 2019/4/24.
//  Copyright © 2019 YJ Huang. All rights reserved.
//

import UIKit
protocol SendMessageBack : AnyObject {
    func sendMessage(message : String);
}
class ViewControllerD: UIViewController {
    weak var delegate : SendMessageBack?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func prepareforDelegate(sender: UIButton) {
        delegate?.sendMessage(message: "message from ViewControllerD")
        self.dismiss(animated: true, completion: nil)
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
