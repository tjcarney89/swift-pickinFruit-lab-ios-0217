//
//  ViewControllerSpec.swift
//  PickinFruit
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
import Foundation
import Quick
import Nimble
import KIF

@testable import PickinFruit

class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        
        
        let tester = KIFUITestActor(inFile: #file, atLine: #line, delegate: self)
        
        describe("fruit slot machine") {
            
            it("should say 'TRY AGAIN' when you do not get three of the same fruit across the spinner") {
                
                let appDelegate = UIApplication.shared.delegate
                let vc = appDelegate!.window!?.rootViewController as! ViewController
                
                vc.fruitsArray = "abcdefghijklmnopqrstuvwxyz".characters.map({ return String($0) })
                
                vc.fruitPicker.reloadAllComponents()
                
                tester?.tapView(withAccessibilityLabel: Constants.SPIN_BUTTON)
                
                expect(vc.resultLabel.text).to(equal("TRY AGAIN"))

            }
            
            it("should say 'WINNER!' when you do get three of the same fruit across the spinner") {
                
                let appDelegate = UIApplication.shared.delegate
                let vc = appDelegate!.window!?.rootViewController as! ViewController
                
                vc.fruitsArray = ["a"]
                
                vc.fruitPicker.reloadAllComponents()
            
                tester?.tapView(withAccessibilityLabel: Constants.SPIN_BUTTON)
                
                expect(vc.resultLabel.text).to(equal("WINNER!"))
                
            }
                
        }
            
    }

}

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}




