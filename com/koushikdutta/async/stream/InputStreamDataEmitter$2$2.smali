.class Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    iget-object v0, v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;->a:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 104
    return-void
.end method
