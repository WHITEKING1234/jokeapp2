//
//  2 view.swift
//  jokeapp2
//
//  Created by Mac on 9/1/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    private var controller:Jokecontrol!
    private lazy var buttonNext: UIButton = {
        let view = UIButton(type: .system)
        view .backgroundColor = .systemOrange
        view.layer.cornerRadius = 80/2
        view.setTitle("NEXT", for: .normal)
        view.addTarget(self, action: #selector(botonnext), for: .touchUpInside)
        return view
        
    }()
    private lazy var punzlinebutton:UIButton = {
        let view = UIButton(type: .system)
        view .backgroundColor = .systemOrange
        view.layer.cornerRadius = 80/2
        view.addTarget(self, action: #selector(qw1), for: .touchUpInside)
        
        
        return view
    }()
    
    private lazy var lablejoke:UILabel = {
        let view = UILabel()
        view.text = "setup"
        
        view.textColor = .black
        
        return view
    }()
    private lazy var punschlinelable:UILabel = {   let view = UILabel()
        
        view.backgroundColor = .white
        view.textColor = .black
        return view
    }()
    private lazy var fon2:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "op2")
        return view
    }()
    private lazy var arrowfon:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "arrowshape.right.fill")
        view.tintColor = .yellow
        return view
    }()
    private lazy var qwqss:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "questionmark")
        view.tintColor = .yellow
        return view
    }()
    private lazy var textfild:UITextField = {
        let view = UITextField()
        view.backgroundColor =  .yellow
        view.text = "Ваш Ответ"
        view.layer.cornerRadius = 70/2
        view.layer.borderColor = UIColor.systemOrange.cgColor
        view.layer.borderWidth = 5
        return view
        
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller = Jokecontrol(view:self)
        controller.getjoke()
        jokee()
        
        
    }
    func jokee(){
        view.addSubview(fon2)
        fon2.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().offset(50)
            make.height.equalToSuperview()
        }
        view.addSubview(lablejoke)
        lablejoke.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make .top.equalToSuperview().offset(100)
            make.width.equalTo(-200); make.height.equalTo(250)
            make.left.equalToSuperview().offset(120)
            make.right.equalToSuperview().offset(0)
            
        }
        view.addSubview(buttonNext)
        buttonNext.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(100)
            make.bottom.equalToSuperview().offset(-250)
            
            make.width.height.equalTo(100)
            make.right.equalToSuperview()
            make.left.equalToSuperview().offset(300)
        }
        view.addSubview(punschlinelable)
        punschlinelable.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make .top.equalTo(lablejoke.snp.bottom).offset(30)
        }
        view.addSubview(punzlinebutton)
        punzlinebutton.snp.makeConstraints { make in
            
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-250)
            
            make.width.height.equalTo(100)
            
        }
        view.addSubview(arrowfon)
        arrowfon.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(100)
            make.bottom.equalToSuperview().offset(-250)
            
            make.width.height.equalTo(100)
            make.right.equalToSuperview()
            make.left.equalToSuperview().offset(300)
        }
        view.addSubview(qwqss)
        qwqss.snp.makeConstraints { make in
            
            
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-250)
            
            make.width.height.equalTo(100)
        }
        view.addSubview(textfild)
        textfild.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(40)
            make.centerY.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
    }
    public func setjokesetup(){
        lablejoke.text = controller.joke?.setup
    }
    
    @objc func botonnext(){
        controller.getjoke()
        
    }
    @objc func qw1(){
        let ansver = controller?.getjoke()
        if (ansver != nil) == true{
    
            
        }else{
            print("error")
                        let bb = UIAlertController(title: "Oшибка", message: "Данные ввидены не правельно попробуйте еще раз", preferredStyle: .alert)
            let  button2 = UIAlertAction(title: "OK", style:.cancel)
            bb.addAction(button2)
            present(bb, animated: true, completion: nil)
            
        }
    }
}
