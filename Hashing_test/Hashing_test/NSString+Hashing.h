//
//  NSString+Hashing.h
//  Hashing_test
//
//  Created by Admin on 2017/8/15.
//  Copyright © 2017年 HWW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

enum {
    NJHashTypeMD5,   //MD5加密
    NJHashTypeSHA1,     //安全哈希加密技术
    NJHashTypeSHA256,      //安全散列算法,SHA256加密后的都是一串小写字母和数字组成的字符
};typedef NSUInteger NJHashType;

@interface NSString (Hashing)

-(NSString *)md5;
-(NSString *)sha1;
-(NSString *)sha256;
-(NSString *)hashWithType:(NJHashType)type;

@end
