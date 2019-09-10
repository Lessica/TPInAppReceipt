//
// Created by Marcelo Schroeder on 2/2/17.
// Copyright (c) 2019 Pavel Tikhonenko. All rights reserved.
//

import XCTest
@testable import TPInAppReceipt

class InAppReceiptTests: XCTestCase
{
    override func setUp()
    {
        
    }
    
    func testCrash()
    {
        let r = Data(base64Encoded:  "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")!
        
        let receipt = try! InAppReceipt(receiptData: r)
        try! receipt.verifyHash()
        print(receipt)
    }
    
//    func testActiveAutoRenewableSubscriptionPurchasesWithoutCancellation()
//    {
//
////        // Given
////        let purchase1 = InAppPurchase(webOrderLineItemID: 1, originalPurchaseDateString: "2017-02-01T07:03:18Z", purchaseDateString: "2017-02-01T07:03:16Z", subscriptionExpirationDateString: "2017-02-01T07:06:16Z", cancellationDateString: "")
////        let /Users/tikhop/Work/TPInAppReceipt/TPInAppReceiptTests/InAppReceiptTests.swiftpurchase2 = InAppPurchase(webOrderLineItemID: 2, originalPurchaseDateString: "2017-02-01T21:26:12Z", purchaseDateString: "2017-02-01T21:26:11Z", subscriptionExpirationDateString: "2017-02-01T21:29:11Z", cancellationDateString: "")
////        let purchase3 = InAppPurchase(webOrderLineItemID: 3, originalPurchaseDateString: "2017-02-01T21:28:41Z", purchaseDateString: "2017-02-01T21:29:11Z", subscriptionExpirationDateString: "2017-02-01T21:32:11Z", cancellationDateString: "")
////        let receiptPayload: InAppReceiptPayload = InAppReceiptPayload(purchases: [purchase1, purchase2, purchase3])
////
////        // When
////        let receipt = InAppReceipt(pkcs7: try! PKCS7WrapperMock())
////
////        // Then
////        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:03:15Z").dateFromISO8601!))
////        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:03:16Z").dateFromISO8601!))
////        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:04:16Z").dateFromISO8601!))
////        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:06:15Z").dateFromISO8601!))
////        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:06:16Z").dateFromISO8601!))
////        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:06:17Z").dateFromISO8601!))
////        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T21:27:11Z").dateFromISO8601!))
////        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T21:30:11Z").dateFromISO8601!))
////        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T21:32:11Z").dateFromISO8601!))
//
//    }
//
//    func testEmptyAutoRenewableSubscriptionExpirationDate()
//    {
//
//        // Given
//        let purchase1 = InAppPurchase(webOrderLineItemID: 1, originalPurchaseDateString: "2017-02-01T07:03:18Z", purchaseDateString: "2017-02-01T07:03:16Z", subscriptionExpirationDateString: "", cancellationDateString: "")
//
//        XCTAssertNil(purchase1.subscriptionExpirationDate)
//    }
//
//    func testActiveAutoRenewableSubscriptionPurchasesWithCancellation() {
//
//        // Given
//        let purchase1 = InAppPurchase(webOrderLineItemID: 1, originalPurchaseDateString: "2017-02-01T07:03:18Z", purchaseDateString: "2017-02-01T07:03:16Z", subscriptionExpirationDateString: "2017-02-01T07:06:16Z", cancellationDateString: "")
//        let purchase2 = InAppPurchase(webOrderLineItemID: 2, originalPurchaseDateString: "2017-02-01T21:26:12Z", purchaseDateString: "2017-02-01T21:26:11Z", subscriptionExpirationDateString: "2017-02-01T21:29:11Z", cancellationDateString: "2017-02-01T21:27:11Z")
//        let purchase3 = InAppPurchase(webOrderLineItemID: 3, originalPurchaseDateString: "2017-02-01T21:28:41Z", purchaseDateString: "2017-02-01T21:29:11Z", subscriptionExpirationDateString: "2017-02-01T21:32:11Z", cancellationDateString: "")
//        let receiptPayload: InAppReceiptPayload = InAppReceiptPayload(purchases: [purchase1, purchase2, purchase3])
//
//        // When
//        let receipt = InAppReceipt(payload: receiptPayload)
//
//        // Then
//        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:04:16Z").dateFromISO8601!))
//        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T21:28:11Z").dateFromISO8601!))
//        XCTAssertNotNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T21:30:11Z").dateFromISO8601!))
//
//    }
//
//    func testActiveAutoRenewableSubscriptionPurchasesWhenProductIdentifierDoesNotMatch() {
//
//        // Given
//        let purchase1 = InAppPurchase(webOrderLineItemID: 1, originalPurchaseDateString: "2017-02-01T07:03:18Z", purchaseDateString: "2017-02-01T07:03:16Z", subscriptionExpirationDateString: "2017-02-01T07:06:16Z", cancellationDateString: "")
//        let receiptPayload: InAppReceiptPayload = InAppReceiptPayload(purchases: [purchase1])
//
//        // When
//        let receipt = InAppReceipt(payload: receiptPayload)
//
//        // Then
//        XCTAssertNil(receipt.activeAutoRenewableSubscriptionPurchases(ofProductIdentifier: "test-product-identifier-does-not-match", forDate: String("2017-02-01T07:04:16Z").dateFromISO8601!))
//
//    }
//
//    func testHasActiveAutoRenewableSubscription() {
//
//        // Given
//        let purchase1 = InAppPurchase(webOrderLineItemID: 1, originalPurchaseDateString: "2017-02-01T07:03:18Z", purchaseDateString: "2017-02-01T07:03:16Z", subscriptionExpirationDateString: "2017-02-01T07:06:16Z", cancellationDateString: "")
//        let receiptPayload: InAppReceiptPayload = InAppReceiptPayload(purchases: [purchase1])
//
//        // When
//        let receipt = InAppReceipt(payload: receiptPayload)
//
//        // Then
//        XCTAssertFalse(receipt.hasActiveAutoRenewableSubscription(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:03:15Z").dateFromISO8601!))
//        XCTAssertTrue(receipt.hasActiveAutoRenewableSubscription(ofProductIdentifier: "test-product-identifier", forDate: String("2017-02-01T07:03:16Z").dateFromISO8601!))
//
//    }
//
}
//
//fileprivate extension InAppPurchase
//{
//    init(webOrderLineItemID: Int, originalPurchaseDateString: String, purchaseDateString: String, subscriptionExpirationDateString: String, cancellationDateString: String)
//    {
//        self.init()
//
//        self.productIdentifier = "test-product-identifier"
//        self.transactionIdentifier = "test-transaction-identifier"
//        self.originalTransactionIdentifier = originalPurchaseDateString
//        self.purchaseDateString = purchaseDateString
//        self.originalPurchaseDateString = ""
//        self.subscriptionExpirationDateString = subscriptionExpirationDateString
//        self.cancellationDateString = cancellationDateString
//        self.webOrderLineItemID = webOrderLineItemID
//        self.quantity = 1
//    }
//}
//
//fileprivate extension InAppReceipt
//{
//    init(payload: InAppReceiptPayload)
//    {
//        self.init(pkcs7: try! PKCS7WrapperMock(), payload: payload)
//    }
//}
//
//fileprivate extension InAppReceiptPayload
//{
//    init(purchases: [InAppPurchase])
//    {
//        self.init(bundleIdentifier: "test-bundle-identifier", appVersion: "", originalAppVersion: "", purchases: purchases, expirationDate: "", bundleIdentifierData: Data(), opaqueValue: Data(), receiptHash: Data(), creationDate: "")
//    }
//}
//
//
//fileprivate class PKCS7WrapperMock: PKCS7Wrapper
//{
//    init() throws
//    {
//        try super.init(receipt: Data(base64Encoded: "MCcGCSqGSIb3DQEHAqAaMBgCAQExADALBgkqhkiG9w0BBwGgAKEAMQA=")!)
//    }
//
//}
//
//fileprivate extension Date
//{
//    static let iso8601Formatter: DateFormatter =
//    {
//        let formatter = DateFormatter()
//        formatter.calendar = Calendar(identifier: .iso8601)
//        formatter.locale = Locale(identifier: "en_US_POSIX")
//        formatter.timeZone = TimeZone(secondsFromGMT: 0)
//        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
//        return formatter
//    }()
//
//    var iso8601: String
//    {
//        return Date.iso8601Formatter.string(from: self)
//    }
//}
//
//fileprivate extension String
//{
//    var dateFromISO8601: Date?
//    {
//        return Date.iso8601Formatter.date(from: self)
//    }
//}
