.class Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/gifdecoder/GifHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 3

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 140
    if-nez v0, :cond_10

    .line 141
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    .line 143
    :cond_10
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->a([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
    .registers 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
