.class public Lcom/koushikdutta/async/util/StreamUtility;
.super Ljava/lang/Object;
.source "StreamUtility.java"


# direct methods
.method public static varargs a([Ljava/io/Closeable;)V
    .registers 4

    .prologue
    .line 93
    if-nez p0, :cond_3

    .line 104
    :cond_2
    return-void

    .line 95
    :cond_3
    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    .line 96
    if-eqz v2, :cond_e

    .line 98
    :try_start_b
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11

    .line 95
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 99
    :catch_11
    move-exception v2

    goto :goto_e
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 6

    .prologue
    .line 48
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 50
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 54
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 56
    :cond_1a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
