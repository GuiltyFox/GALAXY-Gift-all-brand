.class Lcom/koushikdutta/async/FileDataEmitter$1;
.super Ljava/lang/Object;
.source "FileDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/FileDataEmitter;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/FileDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/FileDataEmitter;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_17

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/FileDataEmitter;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Ljava/nio/channels/FileChannel;

    .line 68
    :cond_17
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v0

    if-nez v0, :cond_35

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v0

    if-nez v0, :cond_35

    .line 89
    :cond_34
    :goto_34
    return-void

    .line 75
    :cond_35
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/FileDataEmitter;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_54

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/FileDataEmitter;->b(Ljava/lang/Exception;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_34

    .line 86
    :catch_4d
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/FileDataEmitter;->b(Ljava/lang/Exception;)V

    goto :goto_34

    .line 80
    :cond_54
    :try_start_54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/FileDataEmitter;->l()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_76} :catch_4d

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_34
.end method
