//
//  ViewModel.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 18.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import RxSwift
import RxCocoa


class ViewModel {
  var dataArray = Observable.of(1,2,3,4,5,6,7,9,10)
  var tapper = BehaviorSubject<String>(value: "Top")
  var disposeBag = DisposeBag()
  
  func setupBinding() {
    
    tapper.subscribe(onNext: {
      value in
      print (value)
    }, onCompleted: {
      print ("Tapper completed")
      }).disposed(by: disposeBag)
  }
  
  
}
