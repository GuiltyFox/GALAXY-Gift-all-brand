.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->c()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->d(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 320
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->b(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 396
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 405
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 420
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 116
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 378
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 426
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 387
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 209
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 211
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 212
    new-instance v2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v3}, Lcom/bumptech/glide/Glide;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 214
    :cond_19
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/Transformation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/DrawableRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->d()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->c(I)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 350
    return-object p0
.end method

.method public varargs b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 229
    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 247
    return-object p0
.end method

.method public synthetic c(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->b([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->g()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .registers 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 454
    return-void
.end method

.method f()V
    .registers 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a()Lcom/bumptech/glide/DrawableRequestBuilder;

    .line 459
    return-void
.end method

.method public synthetic g()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method
