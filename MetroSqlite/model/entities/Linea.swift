//
//  Linea.swift
//  MetroSqlite
//
//  Created by Nestor Lopez on 01/02/2019.
//  Copyright © 2019 Nestor Lopez. All rights reserved.
//

import UIKit

class Linea: NSObject {
    var id:Int32 = Int32()
    var nombre: String = String()
    var color: String = String()
    var inicioFin: String = String()
    
    func toString() -> String {
        return "id:\(id), nombre:\(nombre), color: \(color), inifin: \(inicioFin)"
    }

}
