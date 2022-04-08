//
//  UITestPracticeUITests.swift
//  UITestPracticeUITests
//
//  Created by Wataru Miyakoshi on 2022/04/09.
//

import XCTest


class UITestPracticeUITests: XCTestCase {
    override func setUp() {
        continueAfterFailure = false // これを設定することで、テスト途中にFailureが発生すると、直ちに次のテストに移る。
    }
    
    func test() {
        let app = XCUIApplication()
        app.launch() // XCUIApplicationはinitを実行してインスタンス化する必要がある。
        
//        let userName = app.textFields["login_name_textfield"]
//        let password = app.textFields["login_password_textfield"]
        let button = app.buttons["login_login_button"]
//        XCTAssert(userName.exists)
//        XCTAssert(password.exists)
        XCTAssert(button.exists)
        
//        userName.tap()
//        userName.typeText("iwomm")
//        password.tap()
//        password.typeText("iwomm")
        
//        XCTAssert(password.exists)
        
        // ログインボタンをタップ
        button.tap()
        
        // 画面遷移したら、UITableViewが存在するはず。
        let top = app.tables["top_root_view"]
        XCTAssert(top.exists)
    }
}
