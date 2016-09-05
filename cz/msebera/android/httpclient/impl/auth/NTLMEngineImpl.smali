.class final Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/auth/NTLMEngine;


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static final c:[B


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_2
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_28

    move-result-object v0

    .line 80
    :goto_9
    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    .line 93
    const-string/jumbo v0, "NTLMSSP"

    const-string/jumbo v1, "ASCII"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 94
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c:[B

    .line 95
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c:[B

    array-length v0, v0

    aput-byte v3, v1, v0

    .line 97
    return-void

    .line 78
    :catch_28
    move-exception v1

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string/jumbo v0, "ASCII"

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b:Ljava/lang/String;

    return-void
.end method

.method static a(II)I
    .registers 4

    .prologue
    .line 1409
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static a(III)I
    .registers 5

    .prologue
    .line 1397
    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a([BI)Ljava/security/Key;
    .registers 3

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 820
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_36

    .line 821
    aget-byte v2, p0, v0

    .line 822
    ushr-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v4, v2, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    .line 824
    :goto_20
    if-eqz v2, :cond_2e

    .line 825
    aget-byte v2, p0, v0

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 820
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    move v2, v1

    .line 822
    goto :goto_20

    .line 827
    :cond_2e
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    goto :goto_29

    .line 830
    :cond_36
    return-void
.end method

.method static a([BII)V
    .registers 5

    .prologue
    .line 1390
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 1391
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1392
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1393
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1394
    return-void
.end method

.method static synthetic a()[B
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->h(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a([B[B)[B
    .registers 3

    .prologue
    .line 538
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 539
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 540
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a()[B

    move-result-object v0

    return-object v0
.end method

.method static a([B[B[B)[B
    .registers 8

    .prologue
    .line 579
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 580
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 581
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 582
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 584
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 585
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d([B[B)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    return-object v0

    .line 587
    :catch_21
    move-exception v0

    .line 588
    instance-of v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    if-eqz v1, :cond_29

    .line 589
    check-cast v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    throw v0

    .line 591
    :cond_29
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b(III)I
    .registers 5

    .prologue
    .line 1401
    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic b([BI)I
    .registers 3

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d([BI)I

    move-result v0

    return v0
.end method

.method static synthetic b()[B
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->e()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->i(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static b([B[B)[B
    .registers 6

    .prologue
    .line 547
    :try_start_0
    const-string/jumbo v0, "RC4"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 548
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "RC4"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 549
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    .line 550
    :catch_18
    move-exception v0

    .line 551
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b([B[B[B)[B
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->e([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static c(III)I
    .registers 4

    .prologue
    .line 1405
    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()[B
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c:[B

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7

    .prologue
    .line 656
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 658
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 659
    if-eqz p0, :cond_27

    .line 660
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 662
    :cond_27
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a()[B
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    return-object v0

    .line 663
    :catch_2c
    move-exception v0

    .line 664
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c([BI)[B
    .registers 3

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->f([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c([B[B)[B
    .registers 3

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c([B[B[B)[B
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static d([BI)I
    .registers 4

    .prologue
    .line 210
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_e

    .line 211
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for DWORD"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()[B
    .registers 3

    .prologue
    .line 238
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_d

    .line 239
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "Random generator not available"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_d
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 242
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 243
    :try_start_14
    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 244
    monitor-exit v1

    .line 245
    return-object v0

    .line 244
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7

    .prologue
    .line 677
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 679
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 680
    if-eqz p0, :cond_21

    .line 681
    const-string/jumbo v1, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 683
    :cond_21
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a()[B
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v0

    return-object v0

    .line 684
    :catch_26
    move-exception v0

    .line 685
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d([B[B)[B
    .registers 9

    .prologue
    .line 701
    const/16 v0, 0x15

    :try_start_2
    new-array v0, v0, [B

    .line 702
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v1

    .line 704
    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v2

    .line 705
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v0

    .line 706
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 707
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 708
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 709
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 710
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 711
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 712
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 713
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 714
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v4, 0x8

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_56

    .line 717
    return-object v3

    .line 718
    :catch_56
    move-exception v0

    .line 719
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d([B[B[B)[B
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 739
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    .line 740
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 741
    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a([B)V

    .line 742
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a()[B

    move-result-object v0

    .line 743
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 744
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    return-object v1
.end method

.method private static e([BI)I
    .registers 4

    .prologue
    .line 218
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_e

    .line 219
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for WORD"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_e
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    if-nez p0, :cond_4

    .line 190
    const/4 p0, 0x0

    .line 196
    :cond_3
    :goto_3
    return-object p0

    .line 192
    :cond_4
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 193
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static e()[B
    .registers 3

    .prologue
    .line 250
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_d

    .line 251
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "Random generator not available"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_d
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 254
    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 255
    :try_start_14
    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 256
    monitor-exit v1

    .line 257
    return-object v0

    .line 256
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static e([B[B[B)[B
    .registers 10

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 761
    new-array v0, v3, [B

    fill-array-data v0, :array_52

    .line 762
    new-array v1, v3, [B

    fill-array-data v1, :array_58

    .line 763
    new-array v2, v3, [B

    fill-array-data v2, :array_5e

    .line 764
    new-array v3, v3, [B

    fill-array-data v3, :array_64

    .line 765
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, p1

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 768
    array-length v5, v0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    array-length v0, v0

    add-int/2addr v0, v6

    .line 770
    array-length v5, v1

    invoke-static {v1, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    array-length v1, v1

    add-int/2addr v0, v1

    .line 772
    array-length v1, p2

    invoke-static {p2, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    array-length v1, p2

    add-int/2addr v0, v1

    .line 774
    const/16 v1, 0x8

    invoke-static {p0, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    add-int/lit8 v0, v0, 0x8

    .line 776
    array-length v1, v2

    invoke-static {v2, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    array-length v1, v2

    add-int/2addr v0, v1

    .line 778
    array-length v1, p1

    invoke-static {p1, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    array-length v1, p1

    add-int/2addr v0, v1

    .line 780
    array-length v1, v3

    invoke-static {v3, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    array-length v1, v3

    add-int/2addr v0, v1

    .line 782
    return-object v4

    .line 761
    nop

    :array_52
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 762
    :array_58
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 763
    :array_5e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 764
    :array_64
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f([BI)[B
    .registers 6

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->e([BI)I

    move-result v0

    .line 226
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d([BI)I

    move-result v1

    .line 227
    array-length v2, p0

    add-int v3, v1, v0

    if-ge v2, v3, :cond_18

    .line 228
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM authentication - buffer too small for data item"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_18
    new-array v2, v0, [B

    .line 232
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    return-object v2
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g([BI)Ljava/security/Key;
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 798
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 799
    const/4 v1, 0x7

    invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 801
    aget-byte v2, v0, v3

    aput-byte v2, v1, v3

    .line 802
    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x7

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 803
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 804
    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 805
    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 806
    const/4 v2, 0x5

    aget-byte v3, v0, v7

    shl-int/lit8 v3, v3, 0x3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 807
    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 808
    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 809
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([B)V

    .line 810
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static h(Ljava/lang/String;)[B
    .registers 7

    .prologue
    .line 606
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 607
    array-length v1, v0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 608
    const/16 v2, 0xe

    new-array v2, v2, [B

    .line 609
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v0

    .line 611
    const/4 v1, 0x7

    invoke-static {v2, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->g([BI)Ljava/security/Key;

    move-result-object v1

    .line 612
    const-string/jumbo v2, "KGS!@#$%"

    const-string/jumbo v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 613
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 614
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 615
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 616
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 617
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 618
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 619
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 621
    return-object v2

    .line 622
    :catch_5c
    move-exception v0

    .line 623
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static i(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 638
    :try_start_0
    const-string/jumbo v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 639
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 640
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a([B)V

    .line 641
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a()[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    .line 642
    :catch_14
    move-exception v0

    .line 643
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1650
    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 1659
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;

    invoke-direct {v0, p5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;-><init>(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->c()[B

    move-result-object v5

    .line 1666
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->f()I

    move-result v6

    .line 1667
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->d()Ljava/lang/String;

    move-result-object v7

    .line 1668
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->e()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    .line 1660
    invoke-virtual/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)Ljava/lang/String;
    .registers 18

    .prologue
    .line 168
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    .line 169
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;

    invoke-direct {v0, p2, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
