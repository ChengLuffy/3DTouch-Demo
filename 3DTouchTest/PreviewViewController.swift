//
//  PreviewViewController.swift
//  3DTouchTest
//
//  Created by 成璐飞 on 16/7/22.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(PreviewViewController.dismiss))
        view.addGestureRecognizer(tap)
    }
    
    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func previewActionItems() -> [UIPreviewActionItem] {
        let item1 = UIPreviewAction.init(title: "item1", style: .Default) { (_, _) in
            print("item1 did clicked")
        }
        return [item1]
    }

}
