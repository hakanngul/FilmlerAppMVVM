//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by Hakan GÜL on 2.08.2025.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    
    func filmleriYukle() {
        frepo.filmlyeriYukle()
    }
}
