.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lcom/squareup/picasso/RequestHandler;


# instance fields
.field final a:I

.field final b:Lcom/squareup/picasso/Picasso;

.field final c:Lcom/squareup/picasso/Dispatcher;

.field final d:Lcom/squareup/picasso/Cache;

.field final e:Lcom/squareup/picasso/Stats;

.field final f:Ljava/lang/String;

.field final g:Lcom/squareup/picasso/Request;

.field final h:I

.field i:I

.field final j:Lcom/squareup/picasso/RequestHandler;

.field k:Lcom/squareup/picasso/Action;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field o:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->t:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->u:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->w:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .registers 8

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->a:I

    .line 94
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    .line 95
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    .line 96
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->d:Lcom/squareup/picasso/Cache;

    .line 97
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->e:Lcom/squareup/picasso/Stats;

    .line 98
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    .line 99
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->f:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    .line 101
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->k()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 102
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->h()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->h:I

    .line 103
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->i()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->i:I

    .line 104
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->j:Lcom/squareup/picasso/RequestHandler;

    .line 105
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->a()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->r:I

    .line 106
    return-void
.end method

.method static a(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 19

    .prologue
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 489
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/squareup/picasso/Request;->l:Z

    .line 491
    const/4 v9, 0x0

    .line 492
    const/4 v6, 0x0

    .line 496
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->f()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 499
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/Request;->h:I

    .line 500
    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/picasso/Request;->i:I

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/picasso/Request;->m:F

    .line 503
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3b

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/Request;->p:Z

    if-eqz v3, :cond_85

    .line 505
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/Request;->n:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/squareup/picasso/Request;->o:F

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 511
    :cond_3b
    :goto_3b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->j:Z

    if-eqz v2, :cond_9e

    .line 512
    int-to-float v2, v12

    int-to-float v3, v8

    div-float v3, v2, v3

    .line 513
    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 515
    cmpl-float v4, v3, v2

    if-lez v4, :cond_89

    .line 516
    int-to-float v4, v5

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 517
    sub-int v2, v5, v4

    div-int/lit8 v6, v2, 0x2

    .line 520
    int-to-float v2, v13

    int-to-float v10, v4

    div-float/2addr v2, v10

    move v10, v9

    move v9, v6

    move v6, v8

    .line 528
    :goto_5f
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->a(ZIIII)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 529
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_68
    move v5, v6

    move v3, v10

    move v6, v4

    move v4, v9

    .line 553
    :goto_6c
    if-eqz p2, :cond_74

    .line 554
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 557
    :cond_74
    const/4 v8, 0x1

    move-object/from16 v2, p1

    .line 558
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_84

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 p1, v2

    .line 564
    :cond_84
    return-object p1

    .line 507
    :cond_85
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_3b

    .line 522
    :cond_89
    int-to-float v4, v8

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 523
    sub-int v3, v8, v4

    div-int/lit8 v9, v3, 0x2

    .line 525
    int-to-float v3, v12

    int-to-float v10, v4

    div-float/2addr v3, v10

    move v10, v9

    move v9, v6

    move v6, v4

    move v4, v5

    .line 526
    goto :goto_5f

    .line 531
    :cond_9e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->k:Z

    if-eqz v2, :cond_be

    .line 532
    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    .line 533
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    .line 534
    cmpg-float v4, v2, v3

    if-gez v4, :cond_bc

    .line 535
    :goto_ae
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->a(ZIIII)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 536
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b7
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    .line 538
    goto :goto_6c

    :cond_bc
    move v2, v3

    .line 534
    goto :goto_ae

    .line 538
    :cond_be
    if-nez v12, :cond_c2

    if-eqz v13, :cond_da

    :cond_c2
    if-ne v12, v8, :cond_c6

    if-eq v13, v5, :cond_da

    .line 543
    :cond_c6
    if-eqz v12, :cond_df

    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    move v3, v2

    .line 545
    :goto_cc
    if-eqz v13, :cond_e4

    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 547
    :goto_d1
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->a(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 548
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_da
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    goto :goto_6c

    .line 543
    :cond_df
    int-to-float v2, v13

    int-to-float v3, v5

    div-float/2addr v2, v3

    move v3, v2

    goto :goto_cc

    .line 545
    :cond_e4
    int-to-float v2, v12

    int-to-float v4, v8

    div-float/2addr v2, v4

    goto :goto_d1
.end method

.method static a(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 114
    new-instance v0, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/MarkableInputStream;->a(I)J

    move-result-wide v2

    .line 119
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->c(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/squareup/picasso/RequestHandler;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->c(Ljava/io/InputStream;)Z

    move-result v5

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->a(J)V

    .line 126
    if-eqz v5, :cond_35

    .line 127
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 128
    if-eqz v4, :cond_2f

    .line 129
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v2, p1, Lcom/squareup/picasso/Request;->h:I

    iget v3, p1, Lcom/squareup/picasso/Request;->i:I

    invoke-static {v2, v3, v1, p1}, Lcom/squareup/picasso/RequestHandler;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 133
    :cond_2f
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :cond_34
    return-object v0

    .line 135
    :cond_35
    if-eqz v4, :cond_44

    .line 136
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v4, p1, Lcom/squareup/picasso/Request;->h:I

    iget v5, p1, Lcom/squareup/picasso/Request;->i:I

    invoke-static {v4, v5, v1, p1}, Lcom/squareup/picasso/RequestHandler;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->a(J)V

    .line 142
    :cond_44
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    if-nez v0, :cond_34

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_8
    if-ge v3, v4, :cond_a1

    .line 426
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 429
    :try_start_10
    invoke-interface {v0, v2}, Lcom/squareup/picasso/Transformation;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_13} :catch_5a

    move-result-object p1

    .line 440
    if-nez p1, :cond_73

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transformation "

    .line 442
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned null after "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 448
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 430
    :catch_5a
    move-exception v2

    .line 431
    sget-object v3, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v4, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v4, v0, v2}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 483
    :goto_66
    return-object v0

    .line 450
    :cond_67
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v3, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v3, v2}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 455
    goto :goto_66

    .line 458
    :cond_73
    if-ne p1, v2, :cond_87

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 459
    sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v3, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {v3, v0}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 466
    goto :goto_66

    .line 470
    :cond_87
    if-eq p1, v2, :cond_9b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_9b

    .line 471
    sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v3, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {v3, v0}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 478
    goto :goto_66

    .line 425
    :cond_9b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_8

    :cond_a1
    move-object v0, v2

    .line 483
    goto :goto_66
.end method

.method static a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .registers 12

    .prologue
    .line 409
    invoke-virtual {p4}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->a()Ljava/util/List;

    move-result-object v2

    .line 414
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_d
    if-ge v0, v3, :cond_29

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/RequestHandler;

    .line 416
    invoke-virtual {v6, v1}, Lcom/squareup/picasso/RequestHandler;->a(Lcom/squareup/picasso/Request;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 417
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    .line 421
    :goto_25
    return-object v0

    .line 414
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 421
    :cond_29
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    sget-object v6, Lcom/squareup/picasso/BitmapHunter;->w:Lcom/squareup/picasso/RequestHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    goto :goto_25
.end method

.method static a(Lcom/squareup/picasso/Request;)V
    .registers 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->c()Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 402
    const-string/jumbo v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private static a(ZIIII)Z
    .registers 6

    .prologue
    .line 569
    if-eqz p0, :cond_6

    if-gt p1, p3, :cond_6

    if-le p2, p4, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private o()Lcom/squareup/picasso/Picasso$Priority;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->a:Lcom/squareup/picasso/Picasso$Priority;

    .line 308
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v1

    .line 309
    :goto_11
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    if-nez v4, :cond_17

    if-eqz v0, :cond_1d

    .line 312
    :cond_17
    :goto_17
    if-nez v1, :cond_1f

    move-object v1, v3

    .line 330
    :cond_1a
    return-object v1

    :cond_1b
    move v0, v2

    .line 308
    goto :goto_11

    :cond_1d
    move v1, v2

    .line 309
    goto :goto_17

    .line 316
    :cond_1f
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    if-eqz v1, :cond_4f

    .line 317
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    invoke-virtual {v1}, Lcom/squareup/picasso/Action;->k()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    .line 320
    :goto_29
    if-eqz v0, :cond_1a

    .line 322
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_31
    if-ge v2, v3, :cond_1a

    .line 323
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->k()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_4d

    .line 322
    :goto_49
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_31

    :cond_4d
    move-object v0, v1

    goto :goto_49

    :cond_4f
    move-object v1, v3

    goto :goto_29
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->h:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 194
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->d:Lcom/squareup/picasso/Cache;

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_35

    .line 196
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->e:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->a()V

    .line 197
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 198
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_34

    .line 199
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_34
    :goto_34
    return-object v0

    .line 205
    :cond_35
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->r:I

    if-nez v1, :cond_f2

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->c:Lcom/squareup/picasso/NetworkPolicy;

    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->d:I

    :goto_3f
    iput v1, v2, Lcom/squareup/picasso/Request;->c:I

    .line 206
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->j:Lcom/squareup/picasso/RequestHandler;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestHandler;->a(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_6c

    .line 208
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->c()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 209
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->d()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->q:I

    .line 211
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_6c

    .line 215
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :try_start_63
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-static {v1, v0}, Lcom/squareup/picasso/BitmapHunter;->a(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_f6

    move-result-object v0

    .line 219
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->a(Ljava/io/InputStream;)V

    .line 224
    :cond_6c
    if-eqz v0, :cond_34

    .line 225
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_83

    .line 226
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_83
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->e:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->a(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->e()Z

    move-result v1

    if-nez v1, :cond_94

    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->q:I

    if-eqz v1, :cond_34

    .line 230
    :cond_94
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_97
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->f()Z

    move-result v2

    if-nez v2, :cond_a3

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->q:I

    if-eqz v2, :cond_c0

    .line 232
    :cond_a3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->q:I

    invoke-static {v2, v0, v3}, Lcom/squareup/picasso/BitmapHunter;->a(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v2, :cond_c0

    .line 234
    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_c0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->g()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 238
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    iget-object v2, v2, Lcom/squareup/picasso/Request;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v2, :cond_e8

    .line 240
    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_97 .. :try_end_e9} :catchall_fb

    .line 244
    if-eqz v0, :cond_34

    .line 245
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->e:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_34

    .line 205
    :cond_f2
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->i:I

    goto/16 :goto_3f

    .line 219
    :catchall_f6
    move-exception v0

    invoke-static {v1}, Lcom/squareup/picasso/Utils;->a(Ljava/io/InputStream;)V

    throw v0

    .line 243
    :catchall_fb
    move-exception v0

    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v0
.end method

.method a(Lcom/squareup/picasso/Action;)V
    .registers 6

    .prologue
    .line 254
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    .line 255
    iget-object v1, p1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    .line 257
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    if-nez v2, :cond_40

    .line 258
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    .line 259
    if-eqz v0, :cond_2a

    .line 260
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 261
    :cond_1a
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to empty hunter"

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_2a
    :goto_2a
    return-void

    .line 263
    :cond_2b
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 269
    :cond_40
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    if-nez v2, :cond_4c

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    .line 273
    :cond_4c
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-eqz v0, :cond_67

    .line 276
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_67
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->k()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_2a

    .line 281
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    goto :goto_2a
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->r:I

    if-lez v1, :cond_9

    const/4 v1, 0x1

    .line 346
    :goto_6
    if-nez v1, :cond_b

    .line 350
    :goto_8
    return v0

    :cond_9
    move v1, v0

    .line 345
    goto :goto_6

    .line 349
    :cond_b
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->r:I

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->j:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/RequestHandler;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    goto :goto_8
.end method

.method b(Lcom/squareup/picasso/Action;)V
    .registers 6

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    if-ne v1, p1, :cond_36

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    .line 289
    const/4 v0, 0x1

    .line 296
    :cond_9
    :goto_9
    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->k()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v1, :cond_19

    .line 297
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->o()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 300
    :cond_19
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_35

    .line 301
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "removed"

    iget-object v2, p1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "from "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_35
    return-void

    .line 290
    :cond_36
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 291
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_11
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    .line 337
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method d()Z
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->j:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->b()Z

    move-result v0

    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->h:I

    return v0
.end method

.method h()Lcom/squareup/picasso/Request;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method i()Lcom/squareup/picasso/Action;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->k:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method j()Lcom/squareup/picasso/Picasso;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->l:Ljava/util/List;

    return-object v0
.end method

.method l()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    return-object v0
.end method

.method m()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method n()Lcom/squareup/picasso/Picasso$Priority;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->s:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->g:Lcom/squareup/picasso/Request;

    invoke-static {v0}, Lcom/squareup/picasso/BitmapHunter;->a(Lcom/squareup/picasso/Request;)V

    .line 155
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_18

    .line 156
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "executing"

    invoke-static {p0}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_18
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->m:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_32

    .line 162
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->c(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_27
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_27} :catch_38
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_0 .. :try_end_27} :catch_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_27} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_aa
    .catchall {:try_start_0 .. :try_end_27} :catchall_be

    .line 186
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    :goto_31
    return-void

    .line 164
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_37
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_32 .. :try_end_37} :catch_55
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_37} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_aa
    .catchall {:try_start_32 .. :try_end_37} :catchall_be

    goto :goto_27

    .line 166
    :catch_38
    move-exception v0

    .line 167
    :try_start_39
    iget-boolean v1, v0, Lcom/squareup/picasso/Downloader$ResponseException;->a:Z

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/squareup/picasso/Downloader$ResponseException;->b:I

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_45

    .line 168
    :cond_43
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    .line 170
    :cond_45
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->c(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_be

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_31

    .line 171
    :catch_55
    move-exception v0

    .line 172
    :try_start_56
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    .line 173
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->b(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_be

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_31

    .line 174
    :catch_68
    move-exception v0

    .line 175
    :try_start_69
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    .line 176
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->b(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_be

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_31

    .line 177
    :catch_7b
    move-exception v0

    .line 178
    :try_start_7c
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->e:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->e()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/StatsSnapshot;->a(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    .line 181
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->c(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_be

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_31

    .line 182
    :catch_aa
    move-exception v0

    .line 183
    :try_start_ab
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->p:Ljava/lang/Exception;

    .line 184
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->c:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->c(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_be

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_31

    :catchall_be
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
