.class public Lcom/rey/material/drawable/LinearProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LinearProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/view/animation/Interpolator;

.field private final E:Ljava/lang/Runnable;

.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/DashPathEffect;

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:I

.field private r:F

.field private s:I

.field private t:I

.field private u:[I

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;III)V
    .registers 22

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 636
    new-instance v1, Lcom/rey/material/drawable/LinearProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/rey/material/drawable/LinearProgressDrawable$1;-><init>(Lcom/rey/material/drawable/LinearProgressDrawable;)V

    iput-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    .line 82
    invoke-virtual {p0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(F)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(F)V

    .line 84
    iput p3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    .line 85
    iput p4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    .line 86
    iput p5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    .line 87
    iput p6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    .line 88
    iput p7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    .line 89
    iput p8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    .line 90
    iput-object p9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    .line 91
    iput p10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    .line 92
    iput-boolean p11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    .line 93
    iput p12, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    .line 94
    move/from16 v0, p13

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    .line 95
    move/from16 v0, p14

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    .line 96
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    .line 97
    move/from16 v0, p16

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    .line 98
    move/from16 v0, p17

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    .line 99
    move/from16 v0, p18

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;IIILcom/rey/material/drawable/LinearProgressDrawable$1;)V
    .registers 20

    .prologue
    .line 28
    invoke-direct/range {p0 .. p18}, Lcom/rey/material/drawable/LinearProgressDrawable;-><init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;III)V

    return-void
.end method

.method private a(FFF)F
    .registers 6

    .prologue
    .line 685
    add-float v0, p1, p2

    .line 686
    cmpl-float v1, v0, p3

    if-lez v1, :cond_8

    .line 687
    sub-float/2addr v0, p3

    .line 690
    :cond_7
    :goto_7
    return v0

    .line 688
    :cond_8
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 689
    add-float/2addr v0, p3

    goto :goto_7
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 223
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_81

    .line 224
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 230
    :goto_27
    cmpl-float v3, v0, v1

    if-lez v3, :cond_80

    .line 232
    int-to-float v3, v9

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    mul-float v10, v3, v4

    .line 234
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    packed-switch v3, :pswitch_data_d8

    move v2, v1

    .line 246
    :goto_36
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5f

    .line 250
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_be

    .line 253
    int-to-float v0, v9

    sub-float v3, v0, v10

    iget-object v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    :cond_5f
    :goto_5f
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_80

    .line 259
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_c9

    .line 261
    int-to-float v0, v9

    sub-float v5, v0, v10

    int-to-float v7, v9

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 266
    :cond_80
    :goto_80
    return-void

    .line 225
    :cond_81
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_a1

    .line 226
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    const-wide/16 v4, 0x0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v6, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    iget-wide v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto :goto_27

    .line 227
    :cond_a1
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eqz v0, :cond_d5

    .line 228
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    goto/16 :goto_27

    .line 236
    :pswitch_aa
    div-float v2, v0, v8

    .line 237
    goto :goto_36

    .line 239
    :pswitch_ad
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 240
    goto :goto_36

    .line 242
    :pswitch_b4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v8

    sub-float/2addr v2, v3

    goto/16 :goto_36

    .line 255
    :cond_be
    int-to-float v6, v9

    iget-object v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v10

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5f

    .line 263
    :cond_c9
    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v2

    move v7, v10

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_80

    :cond_d5
    move v0, v1

    goto/16 :goto_27

    .line 234
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_ad
        :pswitch_b4
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .registers 8

    .prologue
    .line 212
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 213
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/rey/material/drawable/LinearProgressDrawable;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->h()V

    return-void
.end method

.method private a(Z)V
    .registers 8

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    :goto_6
    return-void

    .line 593
    :cond_7
    if-eqz p1, :cond_12

    .line 594
    const/4 v0, 0x1

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    .line 598
    :cond_12
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->g()V

    .line 600
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 601
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 283
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8a

    .line 284
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 290
    :goto_27
    cmpl-float v3, v0, v1

    if-lez v3, :cond_89

    .line 293
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    packed-switch v3, :pswitch_data_1a8

    move v2, v1

    .line 305
    :goto_31
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 306
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    int-to-float v4, v10

    invoke-direct {p0, v0, v3, v4}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v3

    .line 310
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_115

    .line 311
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_ca

    .line 312
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    cmpl-float v0, v3, v1

    if-lez v0, :cond_62

    .line 314
    iget-object v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    :cond_62
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_74

    .line 316
    iget v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v7, v10

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    :cond_74
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v6, v3

    move v7, v2

    move v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 371
    :cond_89
    :goto_89
    return-void

    .line 285
    :cond_8a
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ab

    .line 286
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    const-wide/16 v4, 0x0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v6, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto/16 :goto_27

    .line 287
    :cond_ab
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eqz v0, :cond_1a4

    .line 288
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    goto/16 :goto_27

    .line 295
    :pswitch_b4
    div-float v2, v0, v11

    .line 296
    goto/16 :goto_31

    .line 298
    :pswitch_b8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    .line 299
    goto/16 :goto_31

    .line 301
    :pswitch_c0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v11

    sub-float/2addr v2, v3

    goto/16 :goto_31

    .line 322
    :cond_ca
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v2

    move v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 328
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fc

    .line 329
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    :cond_fc
    int-to-float v0, v10

    cmpg-float v0, v3, v0

    if-gez v0, :cond_10c

    .line 333
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 334
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    int-to-float v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 337
    :cond_10c
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_89

    .line 341
    :cond_115
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_159

    .line 342
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_133

    .line 344
    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    :cond_133
    int-to-float v0, v10

    cmpg-float v0, v3, v0

    if-gez v0, :cond_142

    .line 346
    int-to-float v7, v10

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    :cond_142
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_89

    .line 352
    :cond_159
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v2

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 358
    cmpl-float v0, v3, v1

    if-lez v0, :cond_187

    .line 359
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    :cond_187
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19b

    .line 363
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 364
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    int-to-float v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    :cond_19b
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_89

    :cond_1a4
    move v0, v1

    goto/16 :goto_27

    .line 293
    nop

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b8
        :pswitch_c0
    .end packed-switch
.end method

.method private b(Z)V
    .registers 8

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 622
    :goto_6
    return-void

    .line 608
    :cond_7
    if-eqz p1, :cond_27

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    .line 611
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 612
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 613
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 615
    :cond_23
    const/4 v0, 0x4

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    goto :goto_6

    .line 618
    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 619
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 620
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    goto :goto_6
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/4 v12, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 385
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c2

    .line 386
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v8, v0

    .line 392
    :goto_29
    cmpl-float v0, v8, v7

    if-lez v0, :cond_c1

    .line 394
    int-to-float v0, v9

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    mul-float v10, v0, v2

    .line 395
    int-to-float v0, v9

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->n:F

    mul-float v11, v0, v2

    .line 397
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    packed-switch v0, :pswitch_data_12e

    move v3, v7

    .line 409
    :goto_3d
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_97

    .line 412
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 416
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_106

    .line 417
    int-to-float v0, v9

    sub-float v2, v0, v11

    int-to-float v0, v9

    sub-float v4, v0, v10

    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 421
    :goto_6f
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->e()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 423
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    sub-float/2addr v0, v1

    .line 425
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v1, :cond_112

    .line 426
    neg-float v2, v0

    int-to-float v0, v9

    sub-float v4, v0, v11

    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 431
    :cond_97
    :goto_97
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_c1

    .line 432
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 436
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_120

    .line 437
    int-to-float v0, v9

    sub-float v2, v0, v10

    int-to-float v4, v9

    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 442
    :cond_c1
    :goto_c1
    return-void

    .line 387
    :cond_c2
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e4

    .line 388
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v4, v10

    iget-wide v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    add-long/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v8, v0

    goto/16 :goto_29

    .line 389
    :cond_e4
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eqz v0, :cond_12b

    .line 390
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    move v8, v0

    goto/16 :goto_29

    .line 399
    :pswitch_ee
    div-float v3, v8, v6

    .line 400
    goto/16 :goto_3d

    .line 402
    :pswitch_f2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v6

    .line 403
    goto/16 :goto_3d

    .line 405
    :pswitch_fb
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v8, v6

    sub-float v3, v0, v1

    goto/16 :goto_3d

    .line 419
    :cond_106
    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move v4, v10

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6f

    .line 428
    :cond_112
    int-to-float v1, v9

    add-float v2, v1, v0

    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v4, v11

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_97

    .line 439
    :cond_120
    iget-object v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v4, v10

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_c1

    :cond_12b
    move v8, v7

    goto/16 :goto_29

    .line 397
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_f2
        :pswitch_fb
    .end packed-switch
.end method

.method private d()I
    .registers 7

    .prologue
    .line 269
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    aget v0, v0, v1

    .line 275
    :goto_11
    return v0

    .line 272
    :cond_12
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 273
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 275
    :goto_32
    iget-object v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    aget v0, v2, v0

    iget-object v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    aget v2, v2, v3

    invoke-static {v0, v2, v1}, Lcom/rey/material/util/ColorUtil;->a(IIF)I

    move-result v0

    goto :goto_11

    .line 273
    :cond_41
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_32
.end method

.method private d(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 453
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a3

    .line 454
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v4, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 460
    :goto_29
    cmpl-float v3, v0, v1

    if-lez v3, :cond_a2

    .line 463
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    packed-switch v3, :pswitch_data_f2

    move v2, v1

    .line 475
    :goto_33
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_7c

    .line 479
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    int-to-float v3, v10

    iget-object v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 482
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_7c

    .line 483
    int-to-float v0, v10

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    add-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 484
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    iget v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_7c
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a2

    .line 490
    int-to-float v0, v10

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    mul-float v7, v0, v3

    .line 491
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_e3

    .line 494
    int-to-float v0, v10

    sub-float v5, v0, v7

    int-to-float v7, v10

    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 500
    :cond_a2
    :goto_a2
    return-void

    .line 455
    :cond_a3
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c4

    .line 456
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    const-wide/16 v4, 0x0

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v6, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto/16 :goto_29

    .line 457
    :cond_c4
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eqz v0, :cond_ee

    .line 458
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v0, v0

    goto/16 :goto_29

    .line 465
    :pswitch_cd
    div-float v2, v0, v11

    .line 466
    goto/16 :goto_33

    .line 468
    :pswitch_d1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    .line 469
    goto/16 :goto_33

    .line 471
    :pswitch_d9
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v11

    sub-float/2addr v2, v3

    goto/16 :goto_33

    .line 496
    :cond_e3
    iget-object v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v2

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_a2

    :cond_ee
    move v0, v1

    goto/16 :goto_29

    .line 463
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_d1
        :pswitch_d9
    .end packed-switch
.end method

.method private e()Landroid/graphics/PathEffect;
    .registers 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->l:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_1d

    .line 375
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->l:Landroid/graphics/DashPathEffect;

    .line 377
    :cond_1d
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->l:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method private f()I
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    invoke-static {v0, v1}, Lcom/rey/material/util/ColorUtil;->a(IF)I

    move-result v0

    return v0
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    .line 562
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    iput-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    .line 563
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 564
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    :cond_1e
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 565
    iput v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    .line 566
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2a
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 567
    iput v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 577
    :cond_2e
    :goto_2e
    return-void

    .line 566
    :cond_2f
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v0, v0

    goto :goto_2a

    .line 569
    :cond_33
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    .line 570
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    goto :goto_2e

    .line 572
    :cond_3b
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 573
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-nez v1, :cond_4d

    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    :cond_4d
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 574
    iput v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    .line 575
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-nez v0, :cond_5c

    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    neg-int v0, v0

    int-to-float v0, v0

    :goto_59
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    goto :goto_2e

    :cond_5c
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    int-to-float v0, v0

    goto :goto_59
.end method

.method private h()V
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    packed-switch v0, :pswitch_data_16

    .line 660
    :goto_5
    return-void

    .line 648
    :pswitch_6
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->i()V

    goto :goto_5

    .line 651
    :pswitch_a
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->j()V

    goto :goto_5

    .line 654
    :pswitch_e
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->k()V

    goto :goto_5

    .line 657
    :pswitch_12
    invoke-direct {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->l()V

    goto :goto_5

    .line 646
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method private i()V
    .registers 7

    .prologue
    .line 663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 665
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 666
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 667
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 682
    :goto_16
    return-void

    .line 671
    :cond_17
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2b

    .line 672
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Z)V

    goto :goto_16

    .line 678
    :cond_2b
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 679
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 681
    :cond_3d
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    goto :goto_16
.end method

.method private j()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 694
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 698
    iget-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    sub-long v0, v4, v0

    long-to-float v0, v0

    int-to-float v1, v3

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 699
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v1, :cond_21

    .line 700
    neg-float v0, v0

    .line 701
    :cond_21
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    .line 703
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    packed-switch v1, :pswitch_data_1a4

    .line 778
    :cond_28
    :goto_28
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-ne v0, v10, :cond_18e

    .line 779
    iget-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    .line 780
    iput v11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 789
    :cond_39
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 790
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 792
    :cond_4b
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 793
    :goto_4e
    return-void

    .line 705
    :pswitch_4f
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    if-gtz v1, :cond_78

    .line 706
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    if-nez v1, :cond_74

    int-to-float v1, v3

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    mul-float/2addr v1, v2

    :goto_5b
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 707
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v1, :cond_66

    .line 708
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    neg-float v1, v1

    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 709
    :cond_66
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 710
    iput v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 711
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto :goto_28

    .line 706
    :cond_74
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v1, v1

    goto :goto_5b

    .line 714
    :cond_78
    iget-wide v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v6, v4, v6

    long-to-float v1, v6

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 715
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    if-nez v1, :cond_c1

    int-to-float v1, v3

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    mul-float/2addr v1, v2

    .line 716
    :goto_8a
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    if-nez v2, :cond_c5

    int-to-float v2, v3

    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    mul-float/2addr v2, v7

    .line 718
    :goto_92
    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v3, v3

    invoke-direct {p0, v7, v0, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 719
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v3, v1, v2

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 720
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_b0

    .line 721
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    neg-float v0, v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 723
    :cond_b0
    cmpl-float v0, v6, v9

    if-lez v0, :cond_28

    .line 724
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_b9

    neg-float v1, v1

    :cond_b9
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 725
    iput v10, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 726
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto/16 :goto_28

    .line 715
    :cond_c1
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    int-to-float v1, v1

    goto :goto_8a

    .line 716
    :cond_c5
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v2, v2

    goto :goto_92

    .line 731
    :pswitch_c9
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 733
    iget-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 734
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 735
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto/16 :goto_28

    .line 739
    :pswitch_e4
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    if-gtz v1, :cond_118

    .line 740
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    if-nez v1, :cond_114

    int-to-float v1, v3

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    mul-float/2addr v1, v2

    :goto_f0
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 741
    iget-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v1, :cond_fb

    .line 742
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    neg-float v1, v1

    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 743
    :cond_fb
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 744
    iput v11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 745
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    .line 746
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    goto/16 :goto_28

    .line 740
    :cond_114
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v1, v1

    goto :goto_f0

    .line 749
    :cond_118
    iget-wide v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v6, v4, v6

    long-to-float v1, v6

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 750
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    if-nez v1, :cond_16c

    int-to-float v1, v3

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    mul-float/2addr v1, v2

    .line 751
    :goto_12a
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    if-nez v2, :cond_170

    int-to-float v2, v3

    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    mul-float/2addr v2, v7

    .line 753
    :goto_132
    iget-object v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sub-float v7, v9, v7

    sub-float/2addr v1, v2

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    .line 754
    iget-boolean v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v7, :cond_142

    .line 755
    neg-float v1, v1

    .line 757
    :cond_142
    iget v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    add-float/2addr v0, v8

    sub-float/2addr v0, v1

    int-to-float v3, v3

    invoke-direct {p0, v7, v0, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 758
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 760
    cmpl-float v0, v6, v9

    if-lez v0, :cond_28

    .line 761
    iget-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v0, :cond_15a

    neg-float v2, v2

    :cond_15a
    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 762
    iput v11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 763
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    .line 764
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    goto/16 :goto_28

    .line 750
    :cond_16c
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    int-to-float v1, v1

    goto :goto_12a

    .line 751
    :cond_170
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v2, v2

    goto :goto_132

    .line 769
    :pswitch_174
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    int-to-float v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 771
    iget-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 772
    iput v12, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 773
    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto/16 :goto_28

    .line 782
    :cond_18e
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    .line 783
    iget-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long v0, v4, v0

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    .line 784
    invoke-direct {p0, v12}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Z)V

    goto/16 :goto_4e

    .line 703
    nop

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_c9
        :pswitch_e4
        :pswitch_174
    .end packed-switch
.end method

.method private k()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 797
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 798
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    iget-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 799
    :goto_1d
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_29

    .line 800
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    goto :goto_1d

    .line 801
    :cond_29
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->a:J

    .line 803
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    packed-switch v2, :pswitch_data_e6

    .line 850
    :cond_30
    :goto_30
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-ne v2, v7, :cond_d1

    .line 851
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    .line 852
    iput v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 861
    :cond_40
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 862
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 864
    :cond_52
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 865
    :goto_55
    return-void

    .line 805
    :pswitch_56
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    if-gtz v2, :cond_5f

    .line 806
    iput v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 807
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto :goto_30

    .line 810
    :cond_5f
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 811
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 813
    cmpl-float v2, v2, v6

    if-lez v2, :cond_30

    .line 814
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v2, v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 815
    iput v7, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 816
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto :goto_30

    .line 821
    :pswitch_82
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 822
    const/4 v2, 0x2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 823
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto :goto_30

    .line 827
    :pswitch_93
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    if-gtz v2, :cond_9c

    .line 828
    iput v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 829
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto :goto_30

    .line 832
    :cond_9c
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 833
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v6, v3

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 835
    cmpl-float v2, v2, v6

    if-lez v2, :cond_30

    .line 836
    const/4 v2, 0x0

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 837
    iput v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 838
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto/16 :goto_30

    .line 843
    :pswitch_c0
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 844
    iput v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->d:I

    .line 845
    iput-wide v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    goto/16 :goto_30

    .line 854
    :cond_d1
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_40

    .line 855
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    .line 856
    invoke-direct {p0, v9}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Z)V

    goto/16 :goto_55

    .line 803
    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_56
        :pswitch_82
        :pswitch_93
        :pswitch_c0
    .end packed-switch
.end method

.method private l()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 869
    iget-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    sub-long v4, v6, v4

    long-to-float v0, v4

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    .line 870
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eq v0, v11, :cond_26

    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_b1

    :cond_26
    move v0, v2

    .line 872
    :goto_27
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    cmpl-float v3, v3, v10

    if-lez v3, :cond_42

    .line 873
    long-to-float v3, v6

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    sub-float/2addr v4, v10

    iget v5, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->b:J

    .line 874
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    sub-float/2addr v3, v10

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    .line 877
    :cond_42
    if-eqz v0, :cond_88

    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eq v3, v11, :cond_88

    .line 878
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 879
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 881
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    if-nez v3, :cond_b4

    int-to-float v3, v5

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    mul-float/2addr v3, v4

    .line 882
    :goto_58
    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    if-nez v4, :cond_b8

    int-to-float v4, v5

    iget v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    mul-float/2addr v4, v8

    .line 883
    :goto_60
    iget-object v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    iget v9, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    invoke-interface {v8, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    sub-float v9, v4, v3

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 884
    iget-boolean v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v3, :cond_77

    .line 885
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    neg-float v3, v3

    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->h:F

    .line 887
    :cond_77
    iget-boolean v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    :goto_86
    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->g:F

    .line 890
    :cond_88
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-ne v3, v2, :cond_cb

    .line 891
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long v2, v6, v2

    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_99

    .line 892
    iput v12, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 901
    :cond_99
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 902
    if-eqz v0, :cond_de

    .line 903
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->E:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/rey/material/drawable/LinearProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 908
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 909
    :goto_b0
    return-void

    :cond_b1
    move v0, v1

    .line 870
    goto/16 :goto_27

    .line 881
    :cond_b4
    iget v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    int-to-float v3, v3

    goto :goto_58

    .line 882
    :cond_b8
    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    int-to-float v4, v4

    goto :goto_60

    .line 887
    :cond_bc
    iget-object v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->j:F

    invoke-interface {v3, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v10, v3

    int-to-float v5, v5

    add-float/2addr v5, v4

    mul-float/2addr v3, v5

    sub-float/2addr v3, v4

    goto :goto_86

    .line 894
    :cond_cb
    iget v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-ne v2, v11, :cond_99

    .line 895
    iget-wide v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->c:J

    sub-long v2, v6, v2

    iget v4, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_99

    .line 896
    invoke-direct {p0, v1}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Z)V

    goto :goto_b0

    .line 904
    :cond_de
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-ne v0, v12, :cond_ad

    .line 905
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    goto :goto_ad
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    return v0
.end method

.method public a(F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 537
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 538
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1c

    .line 539
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    .line 540
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 541
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 545
    :cond_1c
    :goto_1c
    return-void

    .line 542
    :cond_1d
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 543
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->start()V

    goto :goto_1c
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 522
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    if-eq v0, p1, :cond_9

    .line 523
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    .line 524
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 526
    :cond_9
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 16

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 110
    sget-object v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 114
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    move v6, v1

    move v3, v1

    move v5, v1

    :goto_12
    if-ge v6, v8, :cond_152

    .line 117
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 119
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_progress:I

    if-ne v2, v9, :cond_2b

    .line 120
    invoke-virtual {v7, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(F)V

    move v2, v3

    move v3, v5

    .line 116
    :goto_25
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v2

    goto :goto_12

    .line 121
    :cond_2b
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_secondaryProgress:I

    if-ne v2, v9, :cond_39

    .line 122
    invoke-virtual {v7, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(F)V

    move v2, v3

    move v3, v5

    goto :goto_25

    .line 123
    :cond_39
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    if-ne v2, v9, :cond_5b

    .line 124
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 125
    iget v9, v9, Landroid/util/TypedValue;->type:I

    if-ne v9, v12, :cond_52

    .line 126
    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v7, v2, v4, v4, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    .line 127
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    :goto_4f
    move v2, v3

    move v3, v5

    .line 133
    goto :goto_25

    .line 130
    :cond_52
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->o:I

    .line 131
    iput v11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->p:F

    goto :goto_4f

    .line 134
    :cond_5b
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    if-ne v2, v9, :cond_7d

    .line 135
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 136
    iget v9, v9, Landroid/util/TypedValue;->type:I

    if-ne v9, v12, :cond_74

    .line 137
    const/high16 v9, 0x3e800000    # 0.25f

    invoke-virtual {v7, v2, v4, v4, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    .line 138
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    :goto_71
    move v2, v3

    move v3, v5

    .line 144
    goto :goto_25

    .line 141
    :cond_74
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->q:I

    .line 142
    iput v11, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->r:F

    goto :goto_71

    .line 145
    :cond_7d
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeSize:I

    if-ne v2, v9, :cond_8a

    .line 146
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->s:I

    move v2, v3

    move v3, v5

    goto :goto_25

    .line 147
    :cond_8a
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_verticalAlign:I

    if-ne v2, v9, :cond_97

    .line 148
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->t:I

    move v2, v3

    move v3, v5

    goto :goto_25

    .line 149
    :cond_97
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeColor:I

    if-ne v2, v9, :cond_a2

    .line 150
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move v3, v2

    move v2, v4

    .line 151
    goto :goto_25

    .line 153
    :cond_a2
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeColors:I

    if-ne v2, v9, :cond_d0

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 155
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v2, v0, [I

    move v0, v1

    .line 156
    :goto_b9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_c8

    .line 157
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 158
    :cond_c8
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v2

    move v2, v3

    move v3, v5

    .line 159
    goto/16 :goto_25

    .line 160
    :cond_d0
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeSecondaryColor:I

    if-ne v2, v9, :cond_de

    .line 161
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->v:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 162
    :cond_de
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_reverse:I

    if-ne v2, v9, :cond_ec

    .line 163
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->w:Z

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 164
    :cond_ec
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_travelDuration:I

    if-ne v2, v9, :cond_fa

    .line 165
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->x:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 166
    :cond_fa
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_transformDuration:I

    if-ne v2, v9, :cond_108

    .line 167
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->y:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 168
    :cond_108
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_keepDuration:I

    if-ne v2, v9, :cond_116

    .line 169
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->z:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 170
    :cond_116
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_transformInterpolator:I

    if-ne v2, v9, :cond_128

    .line 171
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->D:Landroid/view/animation/Interpolator;

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 172
    :cond_128
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_progressMode:I

    if-ne v2, v9, :cond_136

    .line 173
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 174
    :cond_136
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_inAnimDuration:I

    if-ne v2, v9, :cond_144

    .line 175
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 176
    :cond_144
    sget v9, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_outAnimDuration:I

    if-ne v2, v9, :cond_14e

    .line 177
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    :cond_14e
    move v2, v3

    move v3, v5

    goto/16 :goto_25

    .line 180
    :cond_152
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    if-eqz v0, :cond_166

    .line 183
    iput-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    .line 187
    :cond_159
    :goto_159
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    iget-object v2, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    array-length v2, v2

    if-lt v0, v2, :cond_162

    .line 188
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->i:I

    .line 190
    :cond_162
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 191
    return-void

    .line 184
    :cond_166
    if-eqz v3, :cond_159

    .line 185
    new-array v0, v4, [I

    aput v5, v0, v1

    iput-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->u:[I

    goto :goto_159
.end method

.method public b()F
    .registers 2

    .prologue
    .line 529
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->m:F

    return v0
.end method

.method public b(F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 548
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 549
    iget v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->n:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1c

    .line 550
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->n:F

    .line 551
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 552
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->invalidateSelf()V

    .line 556
    :cond_1c
    :goto_1c
    return-void

    .line 553
    :cond_1d
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->n:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 554
    invoke-virtual {p0}, Lcom/rey/material/drawable/LinearProgressDrawable;->start()V

    goto :goto_1c
.end method

.method public c()F
    .registers 2

    .prologue
    .line 533
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->n:F

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->C:I

    packed-switch v0, :pswitch_data_16

    .line 209
    :goto_5
    return-void

    .line 197
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 200
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 203
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->c(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 206
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/rey/material/drawable/LinearProgressDrawable;->d(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 195
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 514
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 631
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    if-nez v0, :cond_b

    .line 632
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->e:I

    .line 633
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 634
    return-void

    .line 632
    :cond_f
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 505
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 510
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 581
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->A:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->a(Z)V

    .line 582
    return-void

    .line 581
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable;->B:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable;->b(Z)V

    .line 587
    return-void

    .line 586
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
