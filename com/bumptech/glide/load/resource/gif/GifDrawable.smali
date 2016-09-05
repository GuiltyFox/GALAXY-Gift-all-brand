.class public Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

.field private final d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .registers 8

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:I

    .line 85
    if-nez p1, :cond_1b

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1b
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    .line 90
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    iget v5, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a(Lcom/bumptech/glide/load/Transformation;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->a:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v2, v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    iget-object v3, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->c:Landroid/content/Context;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v5, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->e:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget v6, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->f:I

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v7, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->g:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v8, v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    .line 82
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:I

    .line 141
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c()V

    .line 171
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 172
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->c()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 177
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 183
    :cond_c
    :goto_c
    return-void

    .line 178
    :cond_d
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Z

    if-nez v0, :cond_c

    .line 179
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Z

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->a()V

    .line 181
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    goto :goto_c
.end method

.method private j()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Z

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b()V

    .line 188
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 306
    if-gtz p1, :cond_10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    if-eqz p1, :cond_10

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_10
    if-nez p1, :cond_1b

    .line 312
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->e()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:I

    .line 316
    :goto_1a
    return-void

    .line 314
    :cond_1b
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:I

    goto :goto_1a
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_13

    .line 263
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 264
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h()V

    .line 277
    :cond_12
    :goto_12
    return-void

    .line 268
    :cond_13
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->invalidateSelf()V

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_26

    .line 271
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:I

    .line 274
    :cond_26
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k:I

    if-lt v0, v1, :cond_12

    .line 275
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    goto :goto_12
.end method

.method public c()Lcom/bumptech/glide/load/Transformation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->d:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    if-eqz v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 233
    :cond_5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:Z

    if-eqz v0, :cond_1f

    .line 234
    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:Z

    .line 238
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_30

    .line 240
    :goto_27
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 239
    :cond_30
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    goto :goto_27
.end method

.method public e()I
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->c()I

    move-result v0

    return v0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(Landroid/graphics/Bitmap;)Z

    .line 290
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->c()V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->b()V

    .line 292
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c:Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 256
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->l:Z

    .line 225
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 251
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    .line 193
    if-nez p1, :cond_c

    .line 194
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j()V

    .line 198
    :cond_7
    :goto_7
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 195
    :cond_c
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Z

    if-eqz v0, :cond_7

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i()V

    goto :goto_7
.end method

.method public start()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Z

    .line 146
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g()V

    .line 147
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i:Z

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i()V

    .line 150
    :cond_d
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->g:Z

    .line 155
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->j()V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->h()V

    .line 164
    :cond_f
    return-void
.end method
