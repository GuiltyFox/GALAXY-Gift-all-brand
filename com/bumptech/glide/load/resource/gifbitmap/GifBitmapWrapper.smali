.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
.super Ljava/lang/Object;
.source "GifBitmapWrapper.java"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_10
    if-nez p1, :cond_1d

    if-nez p2, :cond_1d

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1d
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b:Lcom/bumptech/glide/load/engine/Resource;

    .line 24
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->a:Lcom/bumptech/glide/load/engine/Resource;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->c()I

    move-result v0

    .line 34
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->a:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->c()I

    move-result v0

    goto :goto_a
.end method

.method public b()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->b:Lcom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->a:Lcom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method
