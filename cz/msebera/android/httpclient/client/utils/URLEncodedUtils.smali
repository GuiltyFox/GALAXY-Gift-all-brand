.class public Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# static fields
.field private static final a:[C

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;

.field private static final f:Ljava/util/BitSet;

.field private static final g:Ljava/util/BitSet;

.field private static final h:Ljava/util/BitSet;

.field private static final i:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x2c

    const/16 v6, 0x2b

    const/16 v5, 0x26

    const/16 v4, 0x24

    const/16 v3, 0x100

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_1a8

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a:[C

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->b:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    .line 363
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    .line 366
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e:Ljava/util/BitSet;

    .line 369
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    .line 372
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->g:Ljava/util/BitSet;

    .line 382
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    .line 389
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->i:Ljava/util/BitSet;

    .line 394
    const/16 v0, 0x61

    :goto_69
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_75

    .line 395
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 397
    :cond_75
    const/16 v0, 0x41

    :goto_77
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_83

    .line 398
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 401
    :cond_83
    const/16 v0, 0x30

    :goto_85
    const/16 v1, 0x39

    if-gt v0, v1, :cond_91

    .line 402
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 404
    :cond_91
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 405
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 406
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 407
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 408
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->i:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 409
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 410
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 411
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 412
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 413
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 415
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 416
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 417
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 418
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 419
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 420
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 421
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 423
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 424
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 427
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 428
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 429
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 430
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 431
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 432
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 433
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 434
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 435
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 436
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 438
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 439
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 440
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 441
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 442
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 443
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    .line 444
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 445
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 446
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 447
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 448
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 449
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 451
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->g:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->h:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 452
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->g:Ljava/util/BitSet;

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->c:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 453
    return-void

    .line 202
    nop

    :array_1a8
    .array-data 2
        0x26s
        0x3bs
    .end array-data
.end method

.method public static a(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;C",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/NameValuePair;

    .line 337
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 340
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_2e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz v0, :cond_9

    .line 344
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 348
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 317
    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 565
    if-nez p0, :cond_4

    .line 566
    const/4 v0, 0x0

    .line 568
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_12

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_a
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->i:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_12
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v4, 0x10

    .line 462
    if-nez p0, :cond_6

    .line 463
    const/4 v0, 0x0

    .line 481
    :goto_5
    return-object v0

    .line 465
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 467
    :goto_f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 468
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 469
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 470
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 471
    :cond_26
    if-eqz p3, :cond_32

    const/16 v3, 0x20

    if-ne v2, v3, :cond_32

    .line 472
    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 474
    :cond_32
    const-string/jumbo v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 476
    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 481
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x10

    const/4 v6, -0x1

    .line 496
    if-nez p0, :cond_9

    .line 497
    const/4 v0, 0x0

    .line 522
    :goto_8
    return-object v0

    .line 499
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 500
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 501
    :goto_15
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 502
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 503
    if-ne v2, v8, :cond_50

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_50

    .line 504
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 505
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    .line 506
    invoke-static {v2, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 507
    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 508
    if-eq v4, v6, :cond_44

    if-eq v5, v6, :cond_44

    .line 509
    shl-int/lit8 v2, v4, 0x4

    add-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 511
    :cond_44
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 512
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    int-to-byte v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 515
    :cond_50
    if-eqz p2, :cond_5c

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_5c

    .line 516
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 518
    :cond_5c
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 521
    :cond_61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 522
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;C",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/NameValuePair;

    .line 290
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 293
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_2e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    if-eqz v0, :cond_9

    .line 297
    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 301
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a:[C

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "[C)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    if-nez p0, :cond_7

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 256
    :cond_6
    return-object v0

    .line 243
    :cond_7
    sget-object v1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 244
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 245
    invoke-virtual {v2, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :cond_24
    :goto_24
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->c()Z

    move-result v4

    if-nez v4, :cond_6

    .line 249
    invoke-virtual {v1, v2, v3, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v4

    .line 250
    invoke-interface {v4}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_24

    .line 251
    new-instance v5, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 252
    invoke-interface {v4}, Lcz/msebera/android/httpclient/NameValuePair;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-interface {v4}, Lcz/msebera/android/httpclient/NameValuePair;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method static b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 599
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->e:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 612
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->g:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 625
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->f:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 547
    if-nez p0, :cond_4

    .line 548
    const/4 v0, 0x0

    .line 550
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_c

    :goto_6
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    goto :goto_6
.end method

.method private static f(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 583
    if-nez p0, :cond_4

    .line 584
    const/4 v0, 0x0

    .line 586
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_e

    :goto_6
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->i:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_e
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->a:Ljava/nio/charset/Charset;

    goto :goto_6
.end method
