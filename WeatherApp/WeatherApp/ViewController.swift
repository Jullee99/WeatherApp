//
//  ViewController.swift
//  WeatherApp
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "w4")
        return imageView
    }()
    
    private let welcome:UILabel = {
        let label = UILabel()
        label.text = "Welcome to WeatherApp"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    
    
    private let login : UIButton = {
        let button = UIButton()
        button.setTitle("Go to Check Weather", for: .normal)
        button.addTarget(self, action: #selector(goto), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myImageView)
        view.addSubview(welcome)
        view.addSubview(login)
        
        let bckimage = UIImageView(frame: UIScreen.main.bounds)
        bckimage.image = UIImage(named: "w2.jpg")
        bckimage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(bckimage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = .white
        myImageView.frame = CGRect(x: 140, y: view.safeAreaInsets.top + 40, width: 100, height: 100)
        welcome.frame = CGRect(x: 30, y:myImageView.bottom,width: view.width - 60, height: 40)
        login.frame = CGRect(x: 70, y: welcome.bottom + 300, width: view.width / 2 + 40, height: 45)
    }
    
    
    @objc func goto()
    {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

