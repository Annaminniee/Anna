//
//  MemoDetailViewController.swift
//  MyColorMemoApp
//
//  Created by 菊地原杏菜 on 2023/06/22.
//

import UIKit
import RealmSwift

class MemoDetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    var memoData = MemoDataModel()
    
    var dataFormat: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy年MM月dd日"
        return dateFormatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayData()
        setDoneButton()
        textView.delegate = self
    }
    
    func configure(memo: MemoDataModel) {
        memoData.text = memo.text
        memoData.recordData = memo.recordData
    }
    
    func displayData() {
        textView.text = memoData.text
        navigationItem.title = dataFormat.string(from: memoData.recordData)
    }
    
    @objc func tapDoneButton() {
        view.endEditing(true)
    }
    
    func setDoneButton() {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        let commitButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(tapDoneButton))
        toolbar.items = [commitButton]
        textView.inputAccessoryView = toolbar
    }
    
    func saveData(with text: String) {
        let realm = try! Realm()
        try! realm.write {
            memoData.text = text
            memoData.recordData = Date()
            realm.add(memoData)
        }
        print("text: \(memoData.text), recordDate: \(memoData.recordData)")
    }
}

extension MemoDetailViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        let updatedText = textView.text ?? ""
        saveData(with: updatedText)
    }
}
