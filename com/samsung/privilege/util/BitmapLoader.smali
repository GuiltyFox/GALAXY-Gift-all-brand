.class public Lcom/samsung/privilege/util/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInt([BI)I
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .prologue
    .line 169
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 170
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 169
    or-int/2addr v0, v1

    .line 171
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 169
    or-int/2addr v0, v1

    .line 172
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 169
    or-int/2addr v0, v1

    return v0
.end method

.method private static bytesToShort([BI)S
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .prologue
    .line 183
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 184
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 183
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static readBuffer(Ljava/io/InputStream;[B)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "bytesRead":I
    array-length v1, p1

    .line 197
    .local v1, "bytesToRead":I
    :goto_2
    if-gtz v1, :cond_5

    .line 202
    return-void

    .line 198
    :cond_5
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 199
    .local v2, "read":I
    add-int/2addr v0, v2

    .line 200
    sub-int/2addr v1, v2

    goto :goto_2
.end method
