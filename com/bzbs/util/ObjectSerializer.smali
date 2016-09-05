.class public Lcom/bzbs/util/ObjectSerializer;
.super Ljava/lang/Object;
.source "ObjectSerializer.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 33
    :goto_9
    return-object v0

    .line 31
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/bzbs/util/ObjectSerializer;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1d

    move-result-object v0

    goto :goto_9

    .line 34
    :catch_1d
    move-exception v0

    .line 36
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static a(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 15
    if-nez p0, :cond_6

    const-string/jumbo v0, ""

    .line 21
    :goto_5
    return-object v0

    .line 17
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/ObjectSerializer;->a([B)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_5

    .line 22
    :catch_1f
    move-exception v0

    .line 24
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_22

    .line 44
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 48
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 53
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 55
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v2, v2, -0x61

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 56
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 57
    div-int/lit8 v3, v0, 0x2

    aget-byte v4, v1, v3

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 53
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 59
    :cond_2f
    return-object v1
.end method
