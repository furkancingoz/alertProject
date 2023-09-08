//
//  ViewController.swift
//  alertProject
//
//  Created by Furkan Cingöz on 4.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func kayitOlTiklandi(_ sender: UIButton) {
        
        /* let alert = UIAlertController(title: "UYARI !", message: "Kullanıcı adı bulunamadı", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         alert.addAction(okButton)
         self.present(alert, animated: true)
         */
        /*
         if usernameText.text == "" {
                     let alert = UIAlertController(title: "UYARI !", message: "Kullanıcı adı bulunamadı", preferredStyle: UIAlertController.Style.alert)
                     let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                     alert.addAction(okButton)
                     self.present(alert, animated: true)
                 } else if passwordText.text == "" {
                     let alert = UIAlertController(title: "UYARI !", message: "Şifre bulunamadı", preferredStyle: UIAlertController.Style.alert)
                     let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                     alert.addAction(okButton)
                     self.present(alert, animated: true)
                 } else if  passwordText.text != password2Text.text {
                     let alert = UIAlertController(title: "UYARI !", message: "Şifreler eşleşmiyor", preferredStyle: UIAlertController.Style.alert)
                     let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                     alert.addAction(okButton)
                     self.present(alert, animated: true)
                 } else {
                     let alert = UIAlertController(title: "KAYIT OLUNDU !", message: "Başarıyla kayıt edildi", preferredStyle: UIAlertController.Style.alert)
                     let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                     alert.addAction(okButton)
                     self.present(alert, animated: true)
                 }
         */
        
       // YUKARIDAKİ ŞEKİLDE UZUN UZUN DA YAZABİLİRSENİZ AMA FONKSİYON HALİNE GETİRİP INPUT İSTEYEREK DAHA KISA HIZLI EFEKTİF HALE GETİRDİK
        
        if usernameText.text == "" {
           makeAlert(titelInput: "HATA !", messageInput: "Kullanıcı adı bulunamadı")
        } else if passwordText.text == "" {
            makeAlert(titelInput: "HATA !", messageInput: "Şifre giriniz")
        } else if  passwordText.text != password2Text.text {
            makeAlert(titelInput: "HATA !", messageInput: "Şifreler eşleşmiyor")
        } else {
            makeAlert(titelInput: "BAŞARILI !", messageInput: "Başarıyla kayıt olundu")
        }
    }
    
    func makeAlert(titelInput: String, messageInput: String) {
        let alert = UIAlertController(title: titelInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

