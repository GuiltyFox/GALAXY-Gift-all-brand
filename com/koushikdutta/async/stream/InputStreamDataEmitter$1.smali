.class Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->b:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->a:Ljava/lang/Exception;

    .line 62
    :try_start_2
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->b:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_17

    .line 67
    :goto_9
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->b:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v1, :cond_16

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->b:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->h:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 69
    :cond_16
    return-void

    .line 64
    :catch_17
    move-exception v0

    goto :goto_9
.end method
