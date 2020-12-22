//
//  UtilManager.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import UIKit

class UtilManager {
    public static let shared = UtilManager()
    
    public func saveResults(_ results: [Result], for searchTerm: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(results) {
            UserDefaults.standard.set(encoded, forKey: Global.RESULTS_PREF + searchTerm.lowercased())
            UserDefaults.standard.synchronize()
        }
    }
    
    public func loadResults(for searchTerm: String) -> [Result] {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: Global.RESULTS_PREF + searchTerm.lowercased()),
            let results = try? decoder.decode([Result].self, from: data) {
            return results
        }
        
        return []
    }
    
    public func showAlert(msg: String)
    {
        let alert = UIAlertController(title: "", message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        if let vc = UIApplication.getTopViewController() {
            DispatchQueue.main.async {
                vc.present(alert, animated: true, completion: nil)
            }
        }
    }
}
