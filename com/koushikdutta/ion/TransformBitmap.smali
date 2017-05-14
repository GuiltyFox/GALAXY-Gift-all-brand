.class Lcom/koushikdutta/ion/TransformBitmap;
.super Lcom/koushikdutta/ion/BitmapCallback;
.source "TransformBitmap.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/BitmapCallback;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/ion/BitmapCallback;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 36
    iput-object p4, p0, Lcom/koushikdutta/ion/TransformBitmap;->d:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lcom/koushikdutta/ion/TransformBitmap;->f:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/koushikdutta/ion/TransformBitmap;->e:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 12
    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/TransformBitmap;->b(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 5

    .prologue
    .line 43
    if-eqz p1, :cond_7

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/TransformBitmap;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 88
    :cond_6
    :goto_6
    return-void

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/ion/TransformBitmap;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/TransformBitmap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 53
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/TransformBitmap$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/ion/TransformBitmap$1;-><init>(Lcom/koushikdutta/ion/TransformBitmap;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
