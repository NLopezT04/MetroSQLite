//
//  Util.swift
//  DemoProject
//
//  Created by Krupa-iMac on 24/07/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

import UIKit

class Util: NSObject {
    
    class func getPath(_ fileName: String) -> String {
        
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = documentsURL.appendingPathComponent(fileName)
        
        return fileURL.path
    }
    
    class func copyFile(_ fileName: NSString) {
        let dbPath: String = getPath(fileName as String)
        let fileManager = FileManager.default
        if !fileManager.fileExists(atPath: dbPath) {
            
            let documentsURL = Bundle.main.resourceURL
            let fromPath = documentsURL!.appendingPathComponent(fileName as String)
            
            var error : NSError?
            do {
                try fileManager.copyItem(atPath: fromPath.path, toPath: dbPath)
            } catch let error1 as NSError {
                error = error1
            }
            if (error != nil) {
                print("Error en la copia de la BD")
            }
            else {
                print("Copiada de la BD satisfactoriamente")
            }
//            let alert: UIAlertView = UIAlertView()
//            if (error != nil) {
//                alert.title = "Error Occured"
//                alert.message = error?.localizedDescription
//            } else {
//                alert.title = "Successfully Copy"
//                alert.message = "Your database copy successfully"
//            }
//            alert.delegate = nil
//            alert.addButtonWithTitle("Ok")
//            alert.show()

        
        }
    }

   
}
