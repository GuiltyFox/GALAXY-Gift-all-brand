.class public Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private final b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 56
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    .line 58
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->d:Z

    .line 61
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->e:Z

    .line 101
    new-array v0, p1, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    .line 102
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 109
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    if-lez v0, :cond_23

    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 113
    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    .line 115
    :cond_23
    return-void
.end method

.method protected a([BII)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 126
    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    .line 127
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string/jumbo v1, "0"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->d:Z

    if-nez v0, :cond_d

    .line 143
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a()V

    .line 144
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->d:Z

    .line 147
    :cond_d
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->e:Z

    if-nez v0, :cond_f

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->e:Z

    .line 204
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c()V

    .line 205
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 207
    :cond_f
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a()V

    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 195
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    .line 152
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->e:Z

    if-eqz v0, :cond_d

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 156
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    .line 157
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    array-length v1, v1

    if-ne v0, v1, :cond_24

    .line 158
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a()V

    .line 160
    :cond_24
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->write([BII)V

    .line 169
    return-void
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 177
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->e:Z

    if-eqz v0, :cond_d

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_19

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->a([BII)V

    .line 186
    :goto_18
    return-void

    .line 183
    :cond_19
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->b:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->c:I

    goto :goto_18
.end method
