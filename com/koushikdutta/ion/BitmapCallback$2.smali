.class Lcom/koushikdutta/ion/BitmapCallback$2;
.super Ljava/lang/Object;
.source "BitmapCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/koushikdutta/ion/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapCallback;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 105
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iput-object p3, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->a:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    .line 109
    if-nez v0, :cond_45

    .line 111
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->a:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->b:Ljava/lang/Exception;

    iput-object v1, v0, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->f:Ljava/lang/Exception;

    .line 113
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->b:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_83

    .line 114
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    move-object v1, v0

    .line 122
    :goto_29
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v2, v2, Lcom/koushikdutta/ion/BitmapCallback;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/HashList;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_67

    .line 124
    :cond_3f
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapCallback;->b()V

    .line 132
    :goto_44
    return-void

    .line 115
    :cond_45
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/BitmapCallback;->a()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 116
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    move-object v1, v0

    goto :goto_29

    .line 119
    :cond_5a
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapCallback;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    move-object v1, v0

    goto :goto_29

    .line 128
    :cond_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/future/FutureCallback;

    .line 129
    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->b:Ljava/lang/Exception;

    invoke-interface {v0, v3, v1}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_6b

    .line 131
    :cond_7d
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapCallback$2;->c:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapCallback;->b()V

    goto :goto_44

    :cond_83
    move-object v1, v0

    goto :goto_29
.end method
