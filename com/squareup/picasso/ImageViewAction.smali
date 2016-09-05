.class Lcom/squareup/picasso/ImageViewAction;
.super Lcom/squareup/picasso/Action;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field m:Lcom/squareup/picasso/Callback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/Callback;Z)V
    .registers 24

    .prologue
    .line 30
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    if-nez v0, :cond_b

    .line 69
    :cond_a
    :goto_a
    return-void

    .line 60
    :cond_b
    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->g:I

    if-eqz v1, :cond_1e

    .line 61
    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_a

    .line 67
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->b()V

    goto :goto_a

    .line 62
    :cond_1e
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    .line 63
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 9

    .prologue
    .line 36
    if-nez p1, :cond_15

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Attempted to complete action with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 41
    :cond_15
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    if-nez v0, :cond_20

    .line 53
    :cond_1f
    :goto_1f
    return-void

    .line 46
    :cond_20
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    .line 47
    iget-object v2, p0, Lcom/squareup/picasso/ImageViewAction;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v5, v2, Lcom/squareup/picasso/Picasso;->k:Z

    .line 48
    iget-boolean v4, p0, Lcom/squareup/picasso/ImageViewAction;->d:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 50
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_1f

    .line 51
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->a()V

    goto :goto_1f
.end method

.method b()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/squareup/picasso/Action;->b()V

    .line 73
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_a

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->m:Lcom/squareup/picasso/Callback;

    .line 76
    :cond_a
    return-void
.end method
