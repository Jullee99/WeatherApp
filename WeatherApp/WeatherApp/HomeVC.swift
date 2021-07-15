//
//  HomeVC.swift
//  WeatherApp
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    public var name = ""
    
    private let weatherLbl:UILabel = {
        let label = UILabel()
        label.text = "Here Check The Weather!!"
        label.textAlignment = .center
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    private let cityTextField: UITextField = {
        let city = UITextField()
        city.textAlignment = .center
        city.autocapitalizationType = .none
        city.placeholder = "Enter City Name"
        city.layer.cornerRadius = 30
        city.borderStyle = .roundedRect
        city.autocorrectionType = .no
        return city
    } ()
    
    
    private let Searchbtn : UIButton = {
        let con = UIButton()
        
        con.setTitle("Search", for: .normal)
        con.addTarget(self, action: #selector(nextscreen), for: .touchUpInside)
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 20
        con.backgroundColor = .black
        return con
        
        
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Weather"
        
        let bckimage = UIImageView(frame: UIScreen.main.bounds)
        bckimage.image = UIImage(named: "w2.jpg")
        bckimage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(bckimage, at: 0)

        view.addSubview(weatherLbl)
        view.addSubview(cityTextField)
        view.addSubview(Searchbtn)
        name = cityTextField.text!
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        weatherLbl.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 150, width: view.width - 60, height: 60)
        cityTextField.frame = CGRect(x: 40, y: weatherLbl.bottom + 70, width: view.width - 80, height: 50)
        Searchbtn.frame = CGRect(x: 40, y: cityTextField.bottom + 20, width: view.width - 80, height: 50)
    }
    
    @objc func nextscreen(){
        
        UserDefaults.standard.set(cityTextField.text, forKey: "name")
        let vc = WeatherVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
