//
//  ViewControllerC.swift
//  Segueway
//
//  Created by YJ Huang on 2019/4/24.
//  Copyright © 2019 YJ Huang. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var vc2textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK: unwind segueway #2
    /*
     如果不使用button 建立unwind segue，可以於ViewControllerC storyBoard 上的ViewController 圖案直接拉到右邊的Exit,設定segue id = "back",此時需要手動呼叫segue,於 ViewControllerC clicked action 內實作,回傳的資料會於ViewControllerA func unwindSegueTopage1 收到。
     */
    @IBAction func clicked(_ sender: Any) {
        self.performSegue(withIdentifier: "backFromVC2", sender: sender)
    }


}
