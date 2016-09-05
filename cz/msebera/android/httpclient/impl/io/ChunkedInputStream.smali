.class public Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private final b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:[Lcz/msebera/android/httpclient/Header;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    .line 85
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    .line 87
    new-array v0, v1, [Lcz/msebera/android/httpclient/Header;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->h:[Lcz/msebera/android/httpclient/Header;

    .line 96
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 97
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    .line 98
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    .line 100
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    .line 207
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    if-gez v0, :cond_13

    .line 208
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string/jumbo v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_13
    const/4 v0, 0x2

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    .line 212
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    if-nez v0, :cond_23

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    .line 214
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c()V

    .line 216
    :cond_23
    return-void
.end method

.method private b()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 224
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    .line 225
    packed-switch v1, :pswitch_data_6c

    .line 254
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_10
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 228
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    .line 229
    if-ne v1, v3, :cond_20

    .line 249
    :cond_1f
    :goto_1f
    return v0

    .line 232
    :cond_20
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->d()Z

    move-result v1

    if-nez v1, :cond_31

    .line 233
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string/jumbo v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_31
    const/4 v1, 0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    .line 239
    :pswitch_34
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a()V

    .line 240
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    .line 241
    if-eq v1, v3, :cond_1f

    .line 244
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c(I)I

    move-result v0

    .line 245
    if-gez v0, :cond_53

    .line 246
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v0

    .line 249
    :cond_53
    :try_start_53
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->b:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5f} :catch_61

    move-result v0

    goto :goto_1f

    .line 250
    :catch_61
    move-exception v0

    .line 251
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string/jumbo v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method private c()V
    .registers 5

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 265
    invoke-static {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->h:[Lcz/msebera/android/httpclient/Header;
    :try_end_b
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_b} :catch_c

    .line 272
    return-void

    .line 266
    :catch_c
    move-exception v0

    .line 267
    new-instance v1, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 270
    throw v1
.end method


# virtual methods
.method public available()I
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v0, v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v0, :cond_18

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    check-cast v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/BufferInfo;->e()I

    move-result v0

    .line 106
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 282
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    if-nez v0, :cond_17

    .line 284
    :try_start_5
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    if-nez v0, :cond_13

    .line 286
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 287
    :cond_d
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([B)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_18

    move-result v1

    if-gez v1, :cond_d

    .line 291
    :cond_13
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    .line 292
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    .line 295
    :cond_17
    return-void

    .line 291
    :catchall_18
    move-exception v0

    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    .line 292
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    throw v0
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 126
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    if-eqz v1, :cond_e

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_e
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    if-eqz v1, :cond_13

    .line 145
    :cond_12
    :goto_12
    return v0

    .line 132
    :cond_13
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    .line 133
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a()V

    .line 134
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    if-nez v1, :cond_12

    .line 138
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a()I

    move-result v1

    .line 139
    if-eq v1, v0, :cond_36

    .line 140
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    .line 141
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    if-lt v0, v2, :cond_36

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    :cond_36
    move v0, v1

    .line 145
    goto :goto_12
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 161
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->g:Z

    if-eqz v1, :cond_e

    .line 162
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_e
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    if-eqz v1, :cond_13

    .line 180
    :cond_12
    :goto_12
    return v0

    .line 168
    :cond_13
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    .line 169
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a()V

    .line 170
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    if-nez v1, :cond_12

    .line 174
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a([BII)I

    move-result v1

    .line 175
    if-eq v1, v0, :cond_40

    .line 176
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    .line 177
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    if-lt v0, v2, :cond_3e

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->c:I

    :cond_3e
    move v0, v1

    .line 180
    goto :goto_12

    .line 182
    :cond_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->f:Z

    .line 183
    new-instance v0, Lcz/msebera/android/httpclient/TruncatedChunkException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Truncated chunk ( expected size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; actual size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
