.class Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/util/Allocator;

.field final b:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V
    .registers 4

    .prologue
    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/Allocator;->c(I)Lcom/koushikdutta/async/util/Allocator;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->a:Lcom/koushikdutta/async/util/Allocator;

    .line 163
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    const/4 v8, 0x0

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-boolean v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Z

    if-eqz v0, :cond_a

    .line 226
    :goto_9
    return-void

    .line 170
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Z

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->k()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 179
    :cond_27
    sget-object v2, Lcom/koushikdutta/async/ByteBufferList;->g:Ljava/nio/ByteBuffer;

    .line 181
    :cond_29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v0

    if-lez v0, :cond_3d

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 184
    :cond_3d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 185
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v3, v3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v3

    .line 190
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->a:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 191
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v5, v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v2, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 192
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v7, v7, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v7, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V

    .line 193
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->a:Lcom/koushikdutta/async/util/Allocator;

    iget-object v6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v6, v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/koushikdutta/async/util/Allocator;->a(J)V

    .line 195
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v6, :cond_ae

    .line 196
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->a:Lcom/koushikdutta/async/util/Allocator;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->a:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4}, Lcom/koushikdutta/async/util/Allocator;->b()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/util/Allocator;->c(I)Lcom/koushikdutta/async/util/Allocator;

    move v0, v1

    .line 210
    :cond_85
    :goto_85
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 211
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ne v4, v0, :cond_29

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->p:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-ne v3, v0, :cond_29

    .line 212
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)V

    .line 217
    :cond_a3
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->e()V
    :try_end_a8
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a8} :catch_d3
    .catchall {:try_start_a .. :try_end_a8} :catchall_e2

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean v8, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Z

    goto/16 :goto_9

    .line 199
    :cond_ae
    :try_start_ae
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v6, :cond_85

    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)V

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v0

    if-le v0, v9, :cond_a3

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->k()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)V

    .line 208
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->g:Ljava/nio/ByteBuffer;
    :try_end_d0
    .catch Ljavax/net/ssl/SSLException; {:try_start_ae .. :try_end_d0} :catch_d3
    .catchall {:try_start_ae .. :try_end_d0} :catchall_e2

    move-object v2, v0

    move v0, v1

    goto :goto_85

    .line 219
    :catch_d3
    move-exception v0

    .line 220
    :try_start_d4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 221
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_e2

    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean v8, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Z

    goto/16 :goto_9

    :catchall_e2
    move-exception v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean v8, v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Z

    throw v0
.end method
