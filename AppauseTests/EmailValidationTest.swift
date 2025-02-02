//
//  EmailValidationTest.swift
//  AppauseTests
//
//  Created by Huy Tran on 10/1/24.
//

import XCTest
@testable import Appause

final class EmailValidationTest: XCTestCase
{
    
    func testEmailValidation()
    {
        // test emails
        let emails = ["test@example.com ", "22334@student.sanjuan.edu","aaaaaa@sanjuan.edu","222.222@sanjuan.edu","123456@sanjuan.edu","h.t@sanjuan.edu","h1.t2@sanjuan.edu","h1.t2@sanjuan.edu.ph","John.Cena@sanjuan.edu"]
        let valid = Validate()
        
        // loop through email array
        print("\n")
        for email in emails
        {
            let check = valid.validateEmailTeacher(email)
            if (check == false)
            {
                print(email + " is invalid email\n")
                XCTAssertFalse(check)
            }
            else
            {
                print(email + " is valid email\n")
                XCTAssertTrue(check)
            }
        }
    }
}
