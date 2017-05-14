.class public Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
.super Ljava/lang/Object;
.source "AsyncSpdyConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# instance fields
.field a:J

.field b:Lcom/koushikdutta/async/callback/WritableCallback;

.field final c:I

.field d:Lcom/koushikdutta/async/callback/CompletedCallback;

.field e:Lcom/koushikdutta/async/callback/CompletedCallback;

.field f:Lcom/koushikdutta/async/callback/DataCallback;

.field g:Lcom/koushikdutta/async/ByteBufferList;

.field h:Lcom/koushikdutta/async/future/SimpleFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Z

.field j:I

.field k:Z

.field l:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->l:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    .line 103
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->g:Lcom/koushikdutta/async/ByteBufferList;

    .line 104
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->i:Z

    .line 202
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->l:Lcom/koushikdutta/async/ByteBufferList;

    .line 131
    iput p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c:I

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->l:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ZILcom/koushikdutta/async/ByteBufferList;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 249
    return-void

    .line 246
    :catch_d
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method a(I)V
    .registers 6

    .prologue
    .line 117
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->j:I

    .line 118
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->j:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->j:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/Settings;->d(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_24

    .line 120
    :try_start_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c:I

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->j:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(IJ)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_2a

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->j:I

    .line 127
    :cond_24
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(I)V

    .line 128
    return-void

    .line 122
    :catch_2a
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    .line 141
    iget-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    .line 142
    iget-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_18

    cmp-long v0, v0, v4

    if-gtz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->b:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-static {v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 144
    :cond_18
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-wide v2, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 206
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    if-nez v0, :cond_16

    .line 224
    :goto_15
    return-void

    .line 210
    :cond_16
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 211
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->l:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 212
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "wtf"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 213
    :cond_2d
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->l:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 214
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->l:Lcom/koushikdutta/async/ByteBufferList;

    .line 218
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->d:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v2, 0x0

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c:I

    invoke-interface {v1, v2, v3, p1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->a(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 219
    iget-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J

    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->a:J
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_15

    .line 221
    :catch_46
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->d:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 254
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->f:Lcom/koushikdutta/async/callback/DataCallback;

    .line 154
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->b:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 229
    return-void
.end method

.method public a(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public b()Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    return-object v0
.end method

.method public b(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->e:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 190
    return-void
.end method

.method public c()Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->h:Lcom/koushikdutta/async/future/SimpleFuture;

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->i:Z

    .line 180
    return-void
.end method

.method public d_()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->f:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public e()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    .line 136
    :goto_9
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-boolean v3, v3, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->h:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    .line 135
    goto :goto_9

    :cond_12
    move v1, v2

    .line 136
    goto :goto_f
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->b:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public h()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->e:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->i:Z

    return v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->k:Z

    .line 170
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->k:Z

    .line 175
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->k:Z

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->m:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method
