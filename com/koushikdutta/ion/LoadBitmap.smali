.class Lcom/koushikdutta/ion/LoadBitmap;
.super Lcom/koushikdutta/ion/LoadBitmapEmitter;
.source "LoadBitmap.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/LoadBitmapEmitter;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/ion/Response",
        "<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;>;"
    }
.end annotation


# instance fields
.field d:I

.field e:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZIIZ)V
    .registers 7

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/koushikdutta/ion/LoadBitmapEmitter;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZZ)V

    .line 23
    iput p4, p0, Lcom/koushikdutta/ion/LoadBitmap;->d:I

    .line 24
    iput p5, p0, Lcom/koushikdutta/ion/LoadBitmap;->e:I

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/koushikdutta/ion/Response",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_6

    .line 30
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 31
    :cond_6
    if-eqz p1, :cond_d

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 90
    :goto_c
    return-void

    .line 35
    :cond_d
    invoke-virtual {p2}, Lcom/koushikdutta/ion/Response;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/ByteBufferList;

    .line 37
    iget-object v1, p0, Lcom/koushikdutta/ion/LoadBitmap;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v2, p0, Lcom/koushikdutta/ion/LoadBitmap;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_23

    .line 38
    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    goto :goto_c

    .line 42
    :cond_23
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/ion/LoadBitmap$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/koushikdutta/ion/LoadBitmap$1;-><init>(Lcom/koushikdutta/ion/LoadBitmap;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/ion/Response;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/koushikdutta/ion/Response;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/LoadBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V

    return-void
.end method
