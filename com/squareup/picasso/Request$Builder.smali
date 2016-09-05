.class public final Lcom/squareup/picasso/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Bitmap$Config;

.field private o:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .registers 4

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->a:Landroid/net/Uri;

    .line 220
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->b:I

    .line 221
    iput-object p3, p0, Lcom/squareup/picasso/Request$Builder;->n:Landroid/graphics/Bitmap$Config;

    .line 222
    return-void
.end method


# virtual methods
.method public a(II)Lcom/squareup/picasso/Request$Builder;
    .registers 5

    .prologue
    .line 298
    if-gez p1, :cond_b

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_b
    if-gez p2, :cond_16

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_16
    if-nez p2, :cond_23

    if-nez p1, :cond_23

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_23
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->d:I

    .line 308
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->e:I

    .line 309
    return-object p0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->a:Landroid/net/Uri;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->b:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method b()Z
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->d:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->e:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Lcom/squareup/picasso/Request;
    .registers 19

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->g:Z

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->f:Z

    if-eqz v1, :cond_15

    .line 455
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->f:Z

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->d:I

    if-nez v1, :cond_30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->e:I

    if-nez v1, :cond_30

    .line 458
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->g:Z

    if-eqz v1, :cond_4b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->d:I

    if-nez v1, :cond_4b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->e:I

    if-nez v1, :cond_4b

    .line 462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Request$Builder;->o:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_57

    .line 466
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->b:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Request$Builder;->o:Lcom/squareup/picasso/Picasso$Priority;

    .line 468
    :cond_57
    new-instance v1, Lcom/squareup/picasso/Request;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/Request$Builder;->a:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/Request$Builder;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/Request$Builder;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/Request$Builder;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request$Builder;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/picasso/Request$Builder;->e:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/squareup/picasso/Request$Builder;->f:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/squareup/picasso/Request$Builder;->g:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/squareup/picasso/Request$Builder;->h:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/squareup/picasso/Request$Builder;->i:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/Request$Builder;->j:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/picasso/Request$Builder;->k:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/squareup/picasso/Request$Builder;->l:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/picasso/Request$Builder;->n:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/picasso/Request$Builder;->o:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V

    return-object v1
.end method
