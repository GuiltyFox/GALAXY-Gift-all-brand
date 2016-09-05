.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:[B

.field protected b:[B

.field protected c:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>([B)V
    .registers 7

    .prologue
    const/16 v4, 0x40

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    :try_start_5
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_3d

    .line 1600
    new-array v0, v4, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    .line 1601
    new-array v0, v4, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    .line 1603
    array-length v0, p1

    .line 1604
    if-le v0, v4, :cond_25

    .line 1606
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1607
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 1608
    array-length v0, p1

    .line 1610
    :cond_25
    const/4 v1, 0x0

    .line 1611
    :goto_26
    if-ge v1, v0, :cond_7a

    .line 1612
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1613
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    aget-byte v3, p1, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1614
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1592
    :catch_3d
    move-exception v0

    .line 1595
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error getting md5 message digest implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1596
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1616
    :goto_5c
    if-ge v0, v4, :cond_6d

    .line 1617
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    .line 1618
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    .line 1619
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1623
    :cond_6d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 1624
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1626
    return-void

    :cond_7a
    move v0, v1

    goto :goto_5c
.end method


# virtual methods
.method a([B)V
    .registers 3

    .prologue
    .line 1637
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1638
    return-void
.end method

.method a()[B
    .registers 4

    .prologue
    .line 1630
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1631
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->b:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1632
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->c:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
