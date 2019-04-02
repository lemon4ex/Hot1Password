//
//  Hot1Password.m
//  Hot1Password
//
//  Created by h4ck on 2019/4/3.
//  Copyright (c) 2019年 猿码工作室（https://ymlab.net）. All rights reserved.
//

#import "Hot1Password.h"
#import <CaptainHook/CaptainHook.h>
#import <StoreKit/StoreKit.h>

//CHDeclareClass(OPAppStore)
//CHMethod1(BOOL, OPAppStore, isProductPurchased, id, arg1){
//    return YES;
//}
//
//CHDeclareClass(SKPaymentTransaction)
//CHMethod0(NSInteger, SKPaymentTransaction, transactionState){
//    return 1;
//}
//
////CHDeclareClass(SKPayment)
////CHMethod0(NSString *, SKPayment, productIdentifier){
////    return @"com.agilebits.pro_mobile.5";
////}
//
//CHDeclareClass(OPAppStoreReceipt)
//CHMethod3(BOOL, OPAppStoreReceipt, verifyWithBundleIdentifier, id, arg1, bundleVersion, id, arg2, guidDataOrNil, id, arg3){
//    return YES;
//}
//
//CHDeclareClass(OPOldBloatedAppDelegate)
//CHMethod0(void, OPOldBloatedAppDelegate, startB5SubscriptionMonitors){
//
//}
//
//CHDeclareClass(B5AppleSubscriptionMonitor)
//CHMethod0(NSInteger, B5AppleSubscriptionMonitor, state)
//{
//    return 1;
//}
//
//CHDeclareClass(OPApplicationCustomer)
//CHMethod0(NSInteger, OPApplicationCustomer, licenseStatus){
//    return 1;
//}

CHDeclareClass(B5UserAccount)
CHMethod0(BOOL, B5UserAccount, isFrozen){
    return NO;
}

CHMethod0(BOOL, B5UserAccount, isSuspended){
    return NO;
}

CHMethod0(BOOL, B5UserAccount, isTrialing){
    return YES;
}

//CHMethod0(NSString *, B5UserAccount, accountState){
//    NSString *state = CHSuper0(B5UserAccount, accountState);
//    NSLog(@"Now account state is %@",state);
//    return state;
//}

CHConstructor // code block that runs immediately upon load
{
    NSLog(@"++++++++ Hot1Password loaded ++++++++");
    CHLoadLateClass(B5UserAccount);
    CHHook0(B5UserAccount, isFrozen);
    CHHook0(B5UserAccount, isSuspended);
    CHHook0(B5UserAccount, isTrialing);
//
//    CHHook0(B5UserAccount, accountState);
    
//    CHLoadLateClass(OPAppStore);
//    CHHook1(OPAppStore, isProductPurchased);
//
//    CHLoadLateClass(SKPaymentTransaction);
//    CHHook0(SKPaymentTransaction, transactionState);
    
//    CHLoadLateClass(SKPayment);
//    CHHook0(SKPayment, productIdentifier);
    
//    CHLoadLateClass(OPAppStoreReceipt);
//    CHHook3(OPAppStoreReceipt, verifyWithBundleIdentifier,bundleVersion,guidDataOrNil);
//
//    CHLoadLateClass(B5AppleSubscriptionMonitor);
//    CHHook0(B5AppleSubscriptionMonitor, state);
//
//    CHLoadLateClass(OPOldBloatedAppDelegate);
//    CHHook0(OPOldBloatedAppDelegate, startB5SubscriptionMonitors);
}
