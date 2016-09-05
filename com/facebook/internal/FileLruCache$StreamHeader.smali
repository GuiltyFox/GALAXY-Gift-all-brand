.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 419
    if-eqz v2, :cond_a

    move-object v0, v1

    .line 468
    :goto_9
    return-object v0

    :cond_a
    move v2, v0

    move v3, v0

    .line 424
    :goto_c
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2a

    .line 425
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 426
    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    .line 427
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readHeader: stream.read returned -1 while reading header size"

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 429
    goto :goto_9

    .line 431
    :cond_22
    shl-int/lit8 v3, v3, 0x8

    .line 432
    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 435
    :cond_2a
    new-array v2, v3, [B

    .line 437
    :goto_2c
    array-length v3, v2

    if-ge v0, v3, :cond_67

    .line 438
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 439
    const/4 v4, 0x1

    if-ge v3, v4, :cond_65

    .line 440
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v4, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readHeader: stream.read stopped at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " when expected "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 445
    goto :goto_9

    .line 447
    :cond_65
    add-int/2addr v0, v3

    .line 448
    goto :goto_2c

    .line 450
    :cond_67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 452
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 454
    :try_start_71
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 455
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_9f

    .line 456
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readHeader: expected JSONObject, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 460
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 461
    goto/16 :goto_9

    .line 463
    :cond_9f
    check-cast v0, Lorg/json/JSONObject;
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_a1} :catch_a3

    goto/16 :goto_9

    .line 464
    :catch_a3
    move-exception v0

    .line 465
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 405
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 409
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 410
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 411
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 412
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 414
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 415
    return-void
.end method
