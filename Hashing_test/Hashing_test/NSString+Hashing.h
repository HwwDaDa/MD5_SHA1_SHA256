//
//  NSString+Hashing.h
//  Hashing_test
//
//  Created by Admin on 2017/8/15.
//  Copyright © 2017年 HWW. All rights reserved.
//
/*
 * 安全散列算法（英语：Secure Hash Algorithm，缩写为SHA）是一个密码散列函数家族，是FIPS所认证的安全散列算法。SHA家族的五个算法，分别是SHA-1、SHA-224、SHA-256、SHA-384，和SHA-512，SHA1曾经被认为是MD5的后继者，但是SHA-1现在被密码学家开始怀疑，这是因为SHA-0的破解。以后就出现了众多的SHA系列的加密算法
 *

 */

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
