//
//  ViewController.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 13.09.2019.
//  Copyright © 2019 Roman Guseynov. All rights reserved.
//

import UIKit
import RxSwift

class RootViewController: UIViewController {
  
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    let viewModel = ViewModel()
    //      viewModel.fetchData()
    
    viewModel.dataArray.observeOn(SerialDispatchQueueScheduler(internalSerialQueueName: "Queue")).subscribe({
      value in
      sleep(1)
      print (value)
      }).disposed(by: disposeBag)
    
    let button = UIButton(frame: CGRect(x: 10, y: 50, width: 100, height: 100))
    button.setTitle("TAP", for: .normal)
    self.view.addSubview(button)
   
    self.view.backgroundColor = .white
    print ("binding")
    button.setTitleColor(.black, for: .normal)
    button.rx.tap.bind(onNext: {
      val in
      viewModel.tapper.onNext("TAP TAP MAFAKA")
      }).disposed(by: disposeBag)
     viewModel.setupBinding()
  }
  
  
  
}

