.class public Landroid/support/graphics/drawable/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# instance fields
.field a:C

.field b:[F


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-char p1, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a:C

    .line 302
    iput-object p2, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->b:[F

    .line 303
    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .registers 5

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iget-char v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a:C

    iput-char v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a:C

    .line 307
    iget-object v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->b:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->b:[F

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/support/graphics/drawable/PathParser;->a([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->b:[F

    .line 308
    return-void
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 54

    .prologue
    .line 697
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v20, v0

    .line 700
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 701
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 702
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 703
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 704
    move-wide/from16 v0, p5

    neg-double v6, v0

    mul-double v6, v6, v22

    mul-double/2addr v6, v4

    mul-double v8, p7, v24

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    .line 705
    move-wide/from16 v0, p5

    neg-double v8, v0

    mul-double v8, v8, v24

    mul-double/2addr v4, v8

    mul-double v8, p7, v22

    mul-double/2addr v2, v8

    add-double/2addr v4, v2

    .line 707
    move/from16 v0, v20

    int-to-double v2, v0

    div-double v26, p17, v2

    .line 708
    const/4 v2, 0x0

    move v9, v2

    move-wide v2, v4

    move-wide v4, v6

    :goto_42
    move/from16 v0, v20

    if-ge v9, v0, :cond_f4

    .line 709
    add-double v14, p15, v26

    .line 710
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 711
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 712
    mul-double v12, p5, v22

    mul-double/2addr v12, v10

    add-double v12, v12, p1

    mul-double v16, p7, v24

    mul-double v16, v16, v6

    sub-double v18, v12, v16

    .line 713
    mul-double v12, p5, v24

    mul-double/2addr v12, v10

    add-double v12, v12, p3

    mul-double v16, p7, v22

    mul-double v16, v16, v6

    add-double v16, v16, v12

    .line 714
    move-wide/from16 v0, p5

    neg-double v12, v0

    mul-double v12, v12, v22

    mul-double/2addr v12, v6

    mul-double v28, p7, v24

    mul-double v28, v28, v10

    sub-double v12, v12, v28

    .line 715
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    mul-double v6, v6, v28

    mul-double v28, p7, v22

    mul-double v10, v10, v28

    add-double/2addr v10, v6

    .line 716
    sub-double v6, v14, p15

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 717
    sub-double v28, v14, p15

    .line 718
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v32, v32, v6

    mul-double v6, v6, v32

    add-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v30

    mul-double v6, v6, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v6, v6, v28

    .line 719
    mul-double/2addr v4, v6

    add-double v4, v4, p9

    .line 720
    mul-double/2addr v2, v6

    add-double v28, p11, v2

    .line 721
    mul-double v2, v6, v12

    sub-double v30, v18, v2

    .line 722
    mul-double v2, v6, v10

    sub-double v6, v16, v2

    .line 726
    double-to-float v2, v4

    move-wide/from16 v0, p9

    double-to-float v3, v0

    sub-float v3, v2, v3

    .line 727
    move-wide/from16 v0, v28

    double-to-float v2, v0

    move-wide/from16 v0, p11

    double-to-float v4, v0

    sub-float v4, v2, v4

    .line 728
    move-wide/from16 v0, v30

    double-to-float v2, v0

    move-wide/from16 v0, p9

    double-to-float v5, v0

    sub-float v5, v2, v5

    .line 729
    double-to-float v2, v6

    move-wide/from16 v0, p11

    double-to-float v6, v0

    sub-float v6, v2, v6

    .line 730
    move-wide/from16 v0, v18

    double-to-float v2, v0

    move-wide/from16 v0, p9

    double-to-float v7, v0

    sub-float v7, v2, v7

    .line 731
    move-wide/from16 v0, v16

    double-to-float v2, v0

    move-wide/from16 v0, p11

    double-to-float v8, v0

    sub-float v8, v2, v8

    move-object/from16 v2, p0

    .line 733
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 708
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v4, v12

    move-wide/from16 p15, v14

    move-wide/from16 p11, v16

    move-wide/from16 p9, v18

    move-wide v2, v10

    goto/16 :goto_42

    .line 741
    :cond_f4
    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 40

    .prologue
    .line 604
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 606
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 607
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 610
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v6, v2, v4

    .line 611
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p2

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v12, v2, v4

    .line 612
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    move/from16 v0, p5

    float-to-double v4, v0

    div-double v14, v2, v4

    .line 613
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double/2addr v2, v10

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    move/from16 v0, p6

    float-to-double v4, v0

    div-double v20, v2, v4

    .line 616
    sub-double v2, v6, v14

    .line 617
    sub-double v4, v12, v20

    .line 618
    add-double v18, v6, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 619
    add-double v22, v12, v20

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    .line 621
    mul-double v24, v2, v2

    mul-double v26, v4, v4

    add-double v24, v24, v26

    .line 622
    const-wide/16 v26, 0x0

    cmpl-double v26, v24, v26

    if-nez v26, :cond_6f

    .line 623
    const-string/jumbo v2, "PathParser"

    const-string/jumbo v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_6e
    return-void

    .line 626
    :cond_6f
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v24

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    sub-double v26, v26, v28

    .line 627
    const-wide/16 v28, 0x0

    cmpg-double v28, v26, v28

    if-gez v28, :cond_bc

    .line 628
    const-string/jumbo v2, "PathParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Points are too far apart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 630
    mul-float v7, p5, v2

    mul-float v8, p6, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_6e

    .line 634
    :cond_bc
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 635
    mul-double v2, v2, v24

    .line 636
    mul-double v4, v4, v24

    .line 639
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_119

    .line 640
    sub-double v4, v18, v4

    .line 641
    add-double v2, v2, v22

    .line 647
    :goto_ce
    sub-double/2addr v12, v2

    sub-double/2addr v6, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 649
    sub-double v6, v20, v2

    sub-double v12, v14, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 651
    sub-double v20, v6, v18

    .line 652
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-ltz v6, :cond_11e

    const/4 v6, 0x1

    :goto_e5
    move/from16 v0, p9

    if-eq v0, v6, :cond_f6

    .line 653
    const-wide/16 v6, 0x0

    cmpl-double v6, v20, v6

    if-lez v6, :cond_120

    .line 654
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v6

    .line 660
    :cond_f6
    :goto_f6
    move/from16 v0, p5

    float-to-double v6, v0

    mul-double/2addr v6, v4

    .line 661
    move/from16 v0, p6

    float-to-double v4, v0

    mul-double/2addr v2, v4

    .line 663
    mul-double v4, v6, v8

    mul-double v12, v2, v10

    sub-double/2addr v4, v12

    .line 664
    mul-double/2addr v6, v10

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    .line 666
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_6e

    .line 643
    :cond_119
    add-double v4, v4, v18

    .line 644
    sub-double v2, v22, v2

    goto :goto_ce

    .line 652
    :cond_11e
    const/4 v6, 0x0

    goto :goto_e5

    .line 656
    :cond_120
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v6

    goto :goto_f6
.end method

.method private static a(Landroid/graphics/Path;[FCC[F)V
    .registers 24

    .prologue
    .line 345
    const/4 v9, 0x2

    .line 346
    const/4 v3, 0x0

    aget v8, p1, v3

    .line 347
    const/4 v3, 0x1

    aget v7, p1, v3

    .line 348
    const/4 v3, 0x2

    aget v5, p1, v3

    .line 349
    const/4 v3, 0x3

    aget v3, p1, v3

    .line 350
    const/4 v4, 0x4

    aget v6, p1, v4

    .line 351
    const/4 v4, 0x5

    aget v4, p1, v4

    .line 355
    sparse-switch p3, :sswitch_data_428

    move v13, v9

    .line 398
    :goto_17
    const/4 v9, 0x0

    move v14, v9

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    :goto_20
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v14, v4, :cond_406

    .line 399
    sparse-switch p3, :sswitch_data_47a

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move v5, v3

    .line 398
    :goto_31
    add-int v3, v14, v13

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 p2, p3

    move v3, v5

    move v5, v7

    goto :goto_20

    .line 358
    :sswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v4

    move v5, v6

    move v7, v4

    move v8, v6

    move v13, v9

    .line 367
    goto :goto_17

    .line 374
    :sswitch_4e
    const/4 v9, 0x2

    move v13, v9

    .line 375
    goto :goto_17

    .line 380
    :sswitch_51
    const/4 v9, 0x1

    move v13, v9

    .line 381
    goto :goto_17

    .line 384
    :sswitch_54
    const/4 v9, 0x6

    move v13, v9

    .line 385
    goto :goto_17

    .line 390
    :sswitch_57
    const/4 v9, 0x4

    move v13, v9

    .line 391
    goto :goto_17

    .line 394
    :sswitch_5a
    const/4 v9, 0x7

    move v13, v9

    goto :goto_17

    .line 401
    :sswitch_5d
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 402
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v4, v4, v17

    .line 403
    if-lez v14, :cond_80

    .line 407
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    goto :goto_31

    .line 409
    :cond_80
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v5, v3

    .line 413
    goto :goto_31

    .line 415
    :sswitch_92
    add-int/lit8 v4, v14, 0x0

    aget v6, p4, v4

    .line 416
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    .line 417
    if-lez v14, :cond_b1

    .line 421
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    goto :goto_31

    .line 423
    :cond_b1
    add-int/lit8 v7, v14, 0x0

    aget v7, p4, v7

    add-int/lit8 v8, v14, 0x1

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v7, v5

    move v8, v4

    move v9, v6

    move v5, v3

    .line 427
    goto/16 :goto_31

    .line 429
    :sswitch_c4
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 430
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 431
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v4, v4, v17

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 432
    goto/16 :goto_31

    .line 434
    :sswitch_e6
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    add-int/lit8 v4, v14, 0x0

    aget v6, p4, v4

    .line 436
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 437
    goto/16 :goto_31

    .line 439
    :sswitch_104
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 440
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v6, v18, v4

    move v4, v15

    move v7, v5

    move/from16 v8, v17

    move v9, v6

    move v5, v3

    move/from16 v6, v16

    .line 441
    goto/16 :goto_31

    .line 443
    :sswitch_11e
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 444
    add-int/lit8 v4, v14, 0x0

    aget v6, p4, v4

    move v4, v15

    move v7, v5

    move/from16 v8, v17

    move v9, v6

    move v5, v3

    move/from16 v6, v16

    .line 445
    goto/16 :goto_31

    .line 447
    :sswitch_137
    const/4 v4, 0x0

    add-int/lit8 v6, v14, 0x0

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 448
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v4, v4, v17

    move/from16 v6, v16

    move v7, v5

    move v8, v4

    move/from16 v9, v18

    move v5, v3

    move v4, v15

    .line 449
    goto/16 :goto_31

    .line 451
    :sswitch_151
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    move/from16 v6, v16

    move v7, v5

    move v8, v4

    move/from16 v9, v18

    move v5, v3

    move v4, v15

    .line 453
    goto/16 :goto_31

    .line 455
    :sswitch_16a
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 458
    add-int/lit8 v3, v14, 0x2

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 459
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 460
    add-int/lit8 v4, v14, 0x4

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 461
    add-int/lit8 v4, v14, 0x5

    aget v4, p4, v4

    add-float v4, v4, v17

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 463
    goto/16 :goto_31

    .line 465
    :sswitch_1a8
    add-int/lit8 v3, v14, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 467
    add-int/lit8 v3, v14, 0x4

    aget v6, p4, v3

    .line 468
    add-int/lit8 v3, v14, 0x5

    aget v4, p4, v3

    .line 469
    add-int/lit8 v3, v14, 0x2

    aget v5, p4, v3

    .line 470
    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 471
    goto/16 :goto_31

    .line 473
    :sswitch_1de
    const/4 v6, 0x0

    .line 474
    const/4 v4, 0x0

    .line 475
    const/16 v7, 0x63

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f8

    const/16 v7, 0x73

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f8

    const/16 v7, 0x43

    move/from16 v0, p2

    if-eq v0, v7, :cond_1f8

    const/16 v7, 0x53

    move/from16 v0, p2

    if-ne v0, v7, :cond_423

    .line 477
    :cond_1f8
    sub-float v4, v18, v5

    .line 478
    sub-float v5, v17, v3

    .line 480
    :goto_1fc
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 484
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 485
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 486
    add-int/lit8 v4, v14, 0x2

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 487
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    add-float v4, v4, v17

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 488
    goto/16 :goto_31

    .line 492
    :sswitch_232
    const/16 v4, 0x63

    move/from16 v0, p2

    if-eq v0, v4, :cond_24a

    const/16 v4, 0x73

    move/from16 v0, p2

    if-eq v0, v4, :cond_24a

    const/16 v4, 0x43

    move/from16 v0, p2

    if-eq v0, v4, :cond_24a

    const/16 v4, 0x53

    move/from16 v0, p2

    if-ne v0, v4, :cond_41d

    .line 494
    :cond_24a
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v18

    sub-float/2addr v4, v5

    .line 495
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v17

    sub-float/2addr v5, v3

    .line 497
    :goto_254
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 499
    add-int/lit8 v3, v14, 0x0

    aget v5, p4, v3

    .line 500
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    .line 501
    add-int/lit8 v4, v14, 0x2

    aget v6, p4, v4

    .line 502
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 503
    goto/16 :goto_31

    .line 505
    :sswitch_282
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 506
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 507
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    add-float v3, v3, v17

    .line 508
    add-int/lit8 v4, v14, 0x2

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 509
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    add-float v4, v4, v17

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 510
    goto/16 :goto_31

    .line 512
    :sswitch_2b8
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-int/lit8 v5, v14, 0x2

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x3

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 513
    add-int/lit8 v3, v14, 0x0

    aget v5, p4, v3

    .line 514
    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    .line 515
    add-int/lit8 v4, v14, 0x2

    aget v6, p4, v4

    .line 516
    add-int/lit8 v4, v14, 0x3

    aget v4, p4, v4

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 517
    goto/16 :goto_31

    .line 519
    :sswitch_2e6
    const/4 v6, 0x0

    .line 520
    const/4 v4, 0x0

    .line 521
    const/16 v7, 0x71

    move/from16 v0, p2

    if-eq v0, v7, :cond_300

    const/16 v7, 0x74

    move/from16 v0, p2

    if-eq v0, v7, :cond_300

    const/16 v7, 0x51

    move/from16 v0, p2

    if-eq v0, v7, :cond_300

    const/16 v7, 0x54

    move/from16 v0, p2

    if-ne v0, v7, :cond_419

    .line 523
    :cond_300
    sub-float v4, v18, v5

    .line 524
    sub-float v3, v17, v3

    .line 526
    :goto_304
    add-int/lit8 v5, v14, 0x0

    aget v5, p4, v5

    add-int/lit8 v6, v14, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 528
    add-float v5, v18, v4

    .line 529
    add-float v3, v3, v17

    .line 530
    add-int/lit8 v4, v14, 0x0

    aget v4, p4, v4

    add-float v6, v18, v4

    .line 531
    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    add-float v4, v4, v17

    move v7, v5

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    move v5, v3

    .line 532
    goto/16 :goto_31

    .line 536
    :sswitch_32a
    const/16 v4, 0x71

    move/from16 v0, p2

    if-eq v0, v4, :cond_342

    const/16 v4, 0x74

    move/from16 v0, p2

    if-eq v0, v4, :cond_342

    const/16 v4, 0x51

    move/from16 v0, p2

    if-eq v0, v4, :cond_342

    const/16 v4, 0x54

    move/from16 v0, p2

    if-ne v0, v4, :cond_34e

    .line 538
    :cond_342
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v18

    sub-float v18, v4, v5

    .line 539
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v17

    sub-float v17, v4, v3

    .line 541
    :cond_34e
    add-int/lit8 v3, v14, 0x0

    aget v3, p4, v3

    add-int/lit8 v4, v14, 0x1

    aget v4, p4, v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 545
    add-int/lit8 v3, v14, 0x0

    aget v6, p4, v3

    .line 546
    add-int/lit8 v3, v14, 0x1

    aget v4, p4, v3

    move/from16 v5, v17

    move/from16 v7, v18

    move v8, v4

    move v9, v6

    move v4, v15

    move/from16 v6, v16

    .line 547
    goto/16 :goto_31

    .line 550
    :sswitch_372
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v6, v3, v18

    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v7, v3, v17

    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3bc

    const/4 v11, 0x1

    :goto_394
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3be

    const/4 v12, 0x1

    :goto_39e
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-static/range {v3 .. v12}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 560
    add-int/lit8 v3, v14, 0x5

    aget v3, p4, v3

    add-float v5, v18, v3

    .line 561
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    add-float v3, v3, v17

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 564
    goto/16 :goto_31

    .line 550
    :cond_3bc
    const/4 v11, 0x0

    goto :goto_394

    :cond_3be
    const/4 v12, 0x0

    goto :goto_39e

    .line 566
    :sswitch_3c0
    add-int/lit8 v3, v14, 0x5

    aget v6, p4, v3

    add-int/lit8 v3, v14, 0x6

    aget v7, p4, v3

    add-int/lit8 v3, v14, 0x0

    aget v8, p4, v3

    add-int/lit8 v3, v14, 0x1

    aget v9, p4, v3

    add-int/lit8 v3, v14, 0x2

    aget v10, p4, v3

    add-int/lit8 v3, v14, 0x3

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_402

    const/4 v11, 0x1

    :goto_3de
    add-int/lit8 v3, v14, 0x4

    aget v3, p4, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_404

    const/4 v12, 0x1

    :goto_3e8
    move-object/from16 v3, p0

    move/from16 v4, v18

    move/from16 v5, v17

    invoke-static/range {v3 .. v12}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 576
    add-int/lit8 v3, v14, 0x5

    aget v5, p4, v3

    .line 577
    add-int/lit8 v3, v14, 0x6

    aget v3, p4, v3

    move v4, v15

    move/from16 v6, v16

    move v7, v5

    move v8, v3

    move v9, v5

    move v5, v3

    .line 579
    goto/16 :goto_31

    .line 566
    :cond_402
    const/4 v11, 0x0

    goto :goto_3de

    :cond_404
    const/4 v12, 0x0

    goto :goto_3e8

    .line 584
    :cond_406
    const/4 v4, 0x0

    aput v18, p1, v4

    .line 585
    const/4 v4, 0x1

    aput v17, p1, v4

    .line 586
    const/4 v4, 0x2

    aput v5, p1, v4

    .line 587
    const/4 v4, 0x3

    aput v3, p1, v4

    .line 588
    const/4 v3, 0x4

    aput v16, p1, v3

    .line 589
    const/4 v3, 0x5

    aput v15, p1, v3

    .line 590
    return-void

    :cond_419
    move v3, v4

    move v4, v6

    goto/16 :goto_304

    :cond_41d
    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_254

    :cond_423
    move v5, v4

    move v4, v6

    goto/16 :goto_1fc

    .line 355
    nop

    :sswitch_data_428
    .sparse-switch
        0x41 -> :sswitch_5a
        0x43 -> :sswitch_54
        0x48 -> :sswitch_51
        0x4c -> :sswitch_4e
        0x4d -> :sswitch_4e
        0x51 -> :sswitch_57
        0x53 -> :sswitch_57
        0x54 -> :sswitch_4e
        0x56 -> :sswitch_51
        0x5a -> :sswitch_40
        0x61 -> :sswitch_5a
        0x63 -> :sswitch_54
        0x68 -> :sswitch_51
        0x6c -> :sswitch_4e
        0x6d -> :sswitch_4e
        0x71 -> :sswitch_57
        0x73 -> :sswitch_57
        0x74 -> :sswitch_4e
        0x76 -> :sswitch_51
        0x7a -> :sswitch_40
    .end sparse-switch

    .line 399
    :sswitch_data_47a
    .sparse-switch
        0x41 -> :sswitch_3c0
        0x43 -> :sswitch_1a8
        0x48 -> :sswitch_11e
        0x4c -> :sswitch_e6
        0x4d -> :sswitch_92
        0x51 -> :sswitch_2b8
        0x53 -> :sswitch_232
        0x54 -> :sswitch_32a
        0x56 -> :sswitch_151
        0x61 -> :sswitch_372
        0x63 -> :sswitch_16a
        0x68 -> :sswitch_104
        0x6c -> :sswitch_c4
        0x6d -> :sswitch_5d
        0x71 -> :sswitch_282
        0x73 -> :sswitch_1de
        0x74 -> :sswitch_2e6
        0x76 -> :sswitch_137
    .end sparse-switch
.end method

.method public static a([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7

    .prologue
    .line 317
    const/4 v0, 0x6

    new-array v2, v0, [F

    .line 318
    const/16 v1, 0x6d

    .line 319
    const/4 v0, 0x0

    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    .line 320
    aget-object v3, p0, v0

    iget-char v3, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a:C

    aget-object v4, p0, v0

    iget-object v4, v4, Landroid/support/graphics/drawable/PathParser$PathDataNode;->b:[F

    invoke-static {p1, v2, v1, v3, v4}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a(Landroid/graphics/Path;[FCC[F)V

    .line 321
    aget-object v1, p0, v0

    iget-char v1, v1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->a:C

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 323
    :cond_1b
    return-void
.end method
