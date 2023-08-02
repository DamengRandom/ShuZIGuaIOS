//
//  EmailHelper.swift
//  prewords
//
//  Created by Damon Wu on 1/8/2023.
//

import UIKit
import MessageUI

class EmailHelper: UIViewController, MFMailComposeViewControllerDelegate {
    let emailTitle = "Email title"
    let emailBody = "Email body \n\n This si body part \n\n footer .."
    let toEmails = ["damonwu0605@gmail.com"]
    let fromEmail = "damonwu0605@gmail.com"
    
    let images: [UIImage] = [
        UIImage(named: "shuzigua-logo")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showEmailComposer(emailTitle, emailBody, toEmails, fromEmail, images)
    }
    
    private func showEmailComposer(
        _ subject: String,
        _ body: String,
        _ toEmails: [String],
        _ fromEmail: String,
        _ images: [UIImage]
    ) {
        guard MFMailComposeViewController.canSendMail() else {
            print("Send email failed .."); return
        }
        
        let composer = MFMailComposeViewController()
        
        composer.mailComposeDelegate = self
        
        composer.setSubject(subject)
        composer.setMessageBody(body, isHTML: false)
        composer.setToRecipients(toEmails)
        composer.setPreferredSendingEmailAddress(fromEmail)
        
        for image in images {
            let fileName = Int.random(in: 0...100000).description + ".jpeg"
            let imageData = image.jpegData(compressionQuality: 1)!
            
            composer.addAttachmentData(imageData, mimeType: "image/jpg", fileName: fileName)
        }
        
        present(composer, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let error = error {
            print("DEBUG print: didFinishWithError", error)
        }
        
        controller.dismiss(animated: true, completion: nil)
    }
}
