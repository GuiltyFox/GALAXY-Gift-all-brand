.class public final Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "Buffer capacity"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 56
    new-array v0, p1, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    .line 57
    return-void
.end method

.method private c(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 61
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    .line 174
    return-void
.end method

.method public a(I)V
    .registers 6

    .prologue
    .line 103
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 104
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 105
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c(I)V

    .line 107
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 108
    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    .line 109
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 5

    .prologue
    .line 163
    if-nez p1, :cond_3

    .line 167
    :goto_2
    return-void

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([CII)V

    goto :goto_2
.end method

.method public a([BII)V
    .registers 7

    .prologue
    .line 78
    if-nez p1, :cond_3

    .line 94
    :cond_2
    :goto_2
    return-void

    .line 81
    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_44

    .line 83
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_44
    if-eqz p3, :cond_2

    .line 88
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    add-int/2addr v0, p3

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_51

    .line 90
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c(I)V

    .line 92
    :cond_51
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    goto :goto_2
.end method

.method public a([CII)V
    .registers 8

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 145
    :cond_2
    :goto_2
    return-void

    .line 129
    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_44

    .line 131
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_44
    if-eqz p3, :cond_2

    .line 136
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    .line 137
    add-int v1, v0, p3

    .line 138
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_52

    .line 139
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->c(I)V

    .line 141
    :cond_52
    :goto_52
    if-ge v0, v1, :cond_60

    .line 142
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    aget-char v3, p1, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 141
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 144
    :cond_60
    iput v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    goto :goto_2
.end method

.method public b(I)I
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public b()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 182
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    new-array v0, v0, [B

    .line 183
    iget v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    if-lez v1, :cond_10

    .line 184
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_10
    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v0, v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    return v0
.end method

.method public e()[B
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 286
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
