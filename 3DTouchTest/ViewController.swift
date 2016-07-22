//
//  ViewController.swift
//  3DTouchTest
//
//  Created by 成璐飞 on 16/7/22.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if traitCollection.forceTouchCapability == .Available {
            registerForPreviewingWithDelegate(self, sourceView: view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let previewVC = storyboard.instantiateViewControllerWithIdentifier("preview")
        return previewVC
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        print(viewControllerToCommit.classForCoder)
//        showViewController(viewControllerToCommit, sender: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let commitVC = storyboard.instantiateViewControllerWithIdentifier("commit")
        showViewController(commitVC, sender: self)
    }
}
