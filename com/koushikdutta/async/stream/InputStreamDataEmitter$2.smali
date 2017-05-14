.class Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v0

    if-nez v0, :cond_23

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$1;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->c()Z

    move-result v0

    if-nez v0, :cond_23

    .line 112
    :cond_22
    :goto_22
    return-void

    .line 91
    :cond_23
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget v0, v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->e:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_54

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_22

    .line 109
    :catch_4d
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    goto :goto_22

    .line 97
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    mul-int/lit8 v3, v2, 0x2

    iput v3, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->e:I

    .line 98
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->l()Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_81} :catch_4d

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_22
.end method
