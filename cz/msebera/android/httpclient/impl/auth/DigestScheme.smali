.class public Lcz/msebera/android/httpclient/impl/auth/DigestScheme;
.super Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final a:[C


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b:Z

    .line 108
    return-void
.end method

.method static a([B)Ljava/lang/String;
    .registers 8

    .prologue
    .line 454
    array-length v1, p0

    .line 455
    mul-int/lit8 v0, v1, 0x2

    new-array v2, v0, [C

    .line 456
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_27

    .line 457
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 458
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 459
    mul-int/lit8 v5, v0, 0x2

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a:[C

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    .line 460
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a:[C

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 463
    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private b(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .registers 25

    .prologue
    .line 248
    const-string/jumbo v2, "uri"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    const-string/jumbo v2, "realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    const-string/jumbo v2, "nonce"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 251
    const-string/jumbo v2, "opaque"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    const-string/jumbo v2, "methodname"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 253
    const-string/jumbo v2, "algorithm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    if-nez v2, :cond_3b

    .line 256
    const-string/jumbo v2, "MD5"

    .line 259
    :cond_3b
    new-instance v11, Ljava/util/HashSet;

    const/16 v3, 0x8

    invoke-direct {v11, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    const/4 v3, -0x1

    .line 261
    const-string/jumbo v4, "qop"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    if-eqz v5, :cond_a7

    .line 263
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v12, ","

    invoke-direct {v4, v5, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_56
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 265
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 266
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 268
    :cond_6e
    move-object/from16 v0, p2

    instance-of v4, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_9c

    const-string/jumbo v4, "auth-int"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 269
    const/4 v3, 0x1

    :cond_7e
    :goto_7e
    move v4, v3

    .line 277
    :goto_7f
    const/4 v3, -0x1

    if-ne v4, v3, :cond_a9

    .line 278
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "None of the qop methods is supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_9c
    const-string/jumbo v4, "auth"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 271
    const/4 v3, 0x2

    goto :goto_7e

    .line 274
    :cond_a7
    const/4 v4, 0x0

    goto :goto_7f

    .line 281
    :cond_a9
    const-string/jumbo v3, "charset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    if-nez v3, :cond_b7

    .line 283
    const-string/jumbo v3, "ISO-8859-1"

    .line 287
    :cond_b7
    const-string/jumbo v5, "MD5-sess"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_465

    .line 288
    const-string/jumbo v5, "MD5"

    .line 293
    :goto_c3
    :try_start_c3
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_c6
    .catch Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_c3 .. :try_end_c6} :catch_2f8

    move-result-object v12

    .line 298
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->a()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    .line 299
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->b()Ljava/lang/String;

    move-result-object v5

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->c:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_313

    .line 302
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->d:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->d:J

    .line 308
    :goto_e9
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0x100

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    new-instance v15, Ljava/util/Formatter;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 310
    const-string/jumbo v16, "%08x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->d:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    invoke-virtual {v15}, Ljava/util/Formatter;->close()V

    .line 312
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_12e

    .line 315
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->f()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    .line 318
    :cond_12e
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->f:Ljava/lang/String;

    .line 319
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    .line 321
    const-string/jumbo v16, "MD5-sess"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_324

    .line 327
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 328
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 330
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->f:Ljava/lang/String;

    .line 340
    :goto_1ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->f:Ljava/lang/String;

    invoke-static {v5, v3}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v16

    .line 342
    const/4 v5, 0x2

    if-ne v4, v5, :cond_350

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    .line 376
    :goto_1db
    move-object/from16 v0, p0

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    invoke-static {v5, v3}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 381
    if-nez v4, :cond_3fd

    .line 382
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :goto_20e
    invoke-static {v3}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 395
    new-instance v5, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v10, 0x80

    invoke-direct {v5, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e()Z

    move-result v10

    if-eqz v10, :cond_44c

    .line 397
    const-string/jumbo v10, "Proxy-Authorization"

    invoke-virtual {v5, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 401
    :goto_22d
    const-string/jumbo v10, ": Digest "

    invoke-virtual {v5, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 403
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    new-instance v11, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v12, "username"

    invoke-direct {v11, v12, v13}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v11, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v12, "realm"

    invoke-direct {v11, v12, v7}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v7, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v11, "nonce"

    invoke-direct {v7, v11, v8}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v7, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v8, "uri"

    invoke-direct {v7, v8, v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v6, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v7, "response"

    invoke-direct {v6, v7, v3}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    if-eqz v4, :cond_29e

    .line 411
    new-instance v6, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v7, "qop"

    const/4 v3, 0x1

    if-ne v4, v3, :cond_454

    const-string/jumbo v3, "auth-int"

    :goto_27e
    invoke-direct {v6, v7, v3}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v4, "nc"

    invoke-direct {v3, v4, v15}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v4, "cnonce"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_29e
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v4, "algorithm"

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    if-eqz v9, :cond_2b6

    .line 418
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string/jumbo v3, "opaque"

    invoke-direct {v2, v3, v9}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2b6
    const/4 v2, 0x0

    move v3, v2

    :goto_2b8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_45f

    .line 422
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 423
    if-lez v3, :cond_2cc

    .line 424
    const-string/jumbo v4, ", "

    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 426
    :cond_2cc
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->a()Ljava/lang/String;

    move-result-object v4

    .line 427
    const-string/jumbo v6, "nc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2eb

    const-string/jumbo v6, "qop"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2eb

    const-string/jumbo v6, "algorithm"

    .line 428
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_459

    :cond_2eb
    const/4 v4, 0x1

    .line 429
    :goto_2ec
    sget-object v6, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    if-nez v4, :cond_45c

    const/4 v4, 0x1

    :goto_2f1
    invoke-virtual {v6, v5, v2, v4}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 421
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2b8

    .line 294
    :catch_2f8
    move-exception v2

    .line 295
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsuppported digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_313
    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->d:J

    .line 305
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p0

    iput-object v8, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->c:Ljava/lang/String;

    goto/16 :goto_e9

    .line 335
    :cond_324
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 336
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->f:Ljava/lang/String;

    goto/16 :goto_1ad

    .line 345
    :cond_350
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e0

    .line 347
    const/4 v5, 0x0

    .line 348
    move-object/from16 v0, p2

    instance-of v0, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move/from16 v17, v0

    if-eqz v17, :cond_362

    .line 349
    check-cast p2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v5

    .line 351
    :cond_362
    if-eqz v5, :cond_39a

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v17

    if-nez v17, :cond_39a

    .line 353
    const-string/jumbo v4, "auth"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_391

    .line 354
    const/4 v4, 0x2

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    goto/16 :goto_1db

    .line 357
    :cond_391
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string/jumbo v3, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_39a
    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;

    invoke-direct {v11, v12}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    .line 363
    if-eqz v5, :cond_3a4

    .line 364
    :try_start_3a1
    invoke-interface {v5, v11}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 366
    :cond_3a4
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->close()V
    :try_end_3a7
    .catch Ljava/io/IOException; {:try_start_3a1 .. :try_end_3a7} :catch_3d6

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->a()[B

    move-result-object v10

    invoke-static {v10}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    goto/16 :goto_1db

    .line 367
    :catch_3d6
    move-exception v2

    .line 368
    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string/jumbo v4, "I/O error reading entity content"

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 373
    :cond_3e0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->g:Ljava/lang/String;

    goto/16 :goto_1db

    .line 386
    :cond_3fd
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->e:Ljava/lang/String;

    .line 388
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v3, 0x1

    if-ne v4, v3, :cond_448

    const-string/jumbo v3, "auth-int"

    :goto_435
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    .line 389
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_20e

    .line 388
    :cond_448
    const-string/jumbo v3, "auth"

    goto :goto_435

    .line 399
    :cond_44c
    const-string/jumbo v10, "Authorization"

    invoke-virtual {v5, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto/16 :goto_22d

    .line 411
    :cond_454
    const-string/jumbo v3, "auth"

    goto/16 :goto_27e

    .line 428
    :cond_459
    const/4 v4, 0x0

    goto/16 :goto_2ec

    .line 429
    :cond_45c
    const/4 v4, 0x0

    goto/16 :goto_2f1

    .line 431
    :cond_45f
    new-instance v2, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v2, v5}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v2

    :cond_465
    move-object v5, v2

    goto/16 :goto_c3
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 4

    .prologue
    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 231
    :catch_5
    move-exception v0

    .line 232
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 473
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 474
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 475
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 476
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .registers 7

    .prologue
    .line 209
    const-string/jumbo v0, "Credentials"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 212
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string/jumbo v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1e
    const-string/jumbo v0, "nonce"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    .line 215
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string/jumbo v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_30
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "methodname"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v0, "charset"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-nez v0, :cond_6b

    .line 222
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "charset"

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6b
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    const-string/jumbo v0, "digest"

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b:Z

    .line 140
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 149
    const-string/jumbo v0, "stale"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_11
    return v0

    :cond_12
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b:Z

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    const-string/jumbo v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", nonce="

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", nc="

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
