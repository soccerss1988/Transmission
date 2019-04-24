//
//  ViewControllerB.swift
//  Segueway
//
//  Created by YJ Huang on 2019/4/24.
//  Copyright © 2019 YJ Huang. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {
    var messageFormPage1 : String = ""
    @IBOutlet weak var page1MsgLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.page1MsgLabel.text = messageFormPage1
        // Do any additional setup after loading the view.
    }
    
    //MARK: unwind segueway #1
    /*
     1.請不要在 ViewControllerB 上拉一個按鈕，然後再拉回去ViewControllerA的方式來返回Page1，此作法會在建立一個新的ViewControllerA，而不是返回原本的ViewControllerA。
     2.於需要返回的頁面設定好unwind segue,於要返回的頁面上建立按鈕，並將按鈕連結 ViewControllerB storyBoard 上的Exit,此時可以選擇func unwindSegueTopage1，
     以及設定 id = "back"
     */
    @IBAction func buttonClicked(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
}
