//
//  jole.controller.swift
//  jokeapp2
//
//  Created by Mac on 9/1/23.
//

import Foundation
class Jokecontrol{
    var joke:joke? = nil
    private weak var view:ViewController!
    private var model:Jokemodel?
    init(view:ViewController){
        self.view = view
        self.model = Jokemodel(conrtoller: self)
    }
    public func getjoke(){
        model?.getjoke()
        view.setjokesetup()
        
    }
}
