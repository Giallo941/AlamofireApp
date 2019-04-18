//
//  ViewController.swift
//  AlamofireApp
//
//  Created by Gianmarco Cotellessa on 17/04/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak private var txtResponse: UILabel!
    @IBOutlet weak private var loader: UIActivityIndicatorView!
    
    let mainFacade = MainFacade()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loader.startAnimating()
        
        mainFacade.dataUser { (id, error) in
            guard id != nil else {
                self.txtResponse.text = error
                self.hideLoader()
                return
            }
            self.txtResponse.text = String(id!)
            self.hideLoader()
        }
    }
    
    private func hideLoader() {
        self.loader.stopAnimating()
        self.loader.alpha = 0
    }

}

