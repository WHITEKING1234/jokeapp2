//
//  ViewController.swift
//  jokeapp2
//
//  Created by Mac on 9/1/23.
//

import UIKit
import SnapKit

class ViewController1: UIViewController {
    
    public lazy var  fon :UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "op3")
        return view
    }()
    
    //         private lazy var buttongo:UIButton = {
    //            let view = UIButton(type: .system)
    //            view.backgroundColor = .white
    //            view.setTitle("GO", for: .normal)
    //            view.addTarget(self, action: #selector(buttongo), for: .touchUpInside)
    //            return view
    var buttongo = UIButton(type: .system)
    
    
    
    private lazy var imagrego:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "arrowshape.right.fill")
        view.tintColor = .yellow
        return view
    }()
    
    private lazy var lablewelcome:UILabel = {
       let view = UILabel()
        view.text = "Jokes IT"
        view.textColor = .white
        return view
    }()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupsub()
    }
    func setupsub(){
        view.backgroundColor = .systemOrange
                view.addSubview(fon)
        fon.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.width.equalToSuperview()
        }
       
                buttongo.backgroundColor = .white
       
        buttongo.addTarget(self, action: #selector(butongo), for: .touchUpInside)
        buttongo.backgroundColor = .orange
        buttongo.layer.cornerRadius = 50/2
        view.addSubview(buttongo)
        buttongo.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(300)
            make.right.equalToSuperview()
            make.left.equalToSuperview()
           
            make.width.height.equalTo(700)
        }
        view.addSubview(imagrego)
        imagrego.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(250)
            make.right.equalToSuperview().offset(-20)
            make.width.height.equalTo(400)
        }
        view.addSubview(lablewelcome)
        lablewelcome.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.height.height.equalTo(100)
        }
    }
    @objc func butongo(){
        let ansver2 = ViewController()
        navigationController?.pushViewController(ansver2,animated: true)
        
    }
    
    //}
    //        button.setTitle("OREO", for: .normal)
    //        button.setTitleColor(.white, for: .normal)
    //        button.setTitleColor(.white, for: .normal)
    //        button.addTarget(self, action: #selector(button2), for: .touchUpInside)
    //        view.addSubview(button)
    //        button.snp.makeConstraints { make in
    //            make.centerX.equalToSuperview()
    //            make.top.equalTo(view.snp.top).offset(190)
    //            make.bottom.equalTo(view.snp.bottom).offset(-600)
    //            make.width.equalTo(150)
    //            make.height.equalTo(1)
    //        }
    //
    //    }
    //    @objc func button2(){
    //        let ansver2 = Viewjoke()
    //        navigationController?.pushViewController(ansver2,animated: true)
    //    }
    //
    //}
    //
   
}
