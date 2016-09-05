.class public Lcom/bzbs/lib/survey/util/AnimationPoint;
.super Ljava/lang/Object;
.source "AnimationPoint.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->a:Z

    return-void
.end method

.method static synthetic a()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->c()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/os/Handler;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 451
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;

    invoke-direct {v0, p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$4;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method public static a(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 15

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 34
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_53

    .line 36
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    invoke-static {p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 42
    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 43
    invoke-static {p4, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 44
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 77
    :goto_2a
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b()Landroid/view/animation/Animation;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 79
    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 80
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 83
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint$1;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 142
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void

    .line 45
    :cond_53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_8d

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 52
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 53
    invoke-static {p4, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 54
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    goto :goto_2a

    .line 55
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_d4

    .line 56
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 62
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 63
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 64
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    goto/16 :goto_2a

    .line 66
    :cond_d4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 72
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 73
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p4, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    .line 74
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p5, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(Landroid/widget/ImageView;I)V

    goto/16 :goto_2a
.end method

.method public static a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 595
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;

    invoke-direct {v0, p3, p0, p1}, Lcom/bzbs/lib/survey/util/AnimationPoint$7;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method private static a(Landroid/widget/ImageView;I)V
    .registers 3

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 374
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_1:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 394
    :goto_11
    return-void

    .line 375
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 376
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_2:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 377
    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    .line 378
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_3:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 379
    :cond_24
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 380
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_4:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 381
    :cond_2d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_36

    .line 382
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 383
    :cond_36
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3f

    .line 384
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_6:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 385
    :cond_3f
    const/4 v0, 0x7

    if-ne p1, v0, :cond_48

    .line 386
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_7:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 387
    :cond_48
    const/16 v0, 0x8

    if-ne p1, v0, :cond_52

    .line 388
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_8:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 389
    :cond_52
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5c

    .line 390
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_9:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 392
    :cond_5c
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method private static b()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 423
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 424
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 425
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    return-object v0
.end method

.method public static b(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 16

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 259
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_6f

    .line 261
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-static {p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 267
    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 268
    invoke-static {p4, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 269
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 302
    :goto_2b
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    const-wide/16 v0, 0x3e8

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 307
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 308
    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 309
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bzbs/lib/survey/util/AnimationPoint$3;-><init>(Landroid/view/animation/Animation;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 367
    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 368
    return-void

    .line 270
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_a9

    .line 271
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 277
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 278
    invoke-static {p4, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 279
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    goto :goto_2b

    .line 280
    :cond_a9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_f0

    .line 281
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 287
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 288
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 289
    invoke-static {p5, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    goto/16 :goto_2b

    .line 291
    :cond_f0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 297
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p3, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 298
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p4, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    .line 299
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p5, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(Landroid/widget/ImageView;I)V

    goto/16 :goto_2b
.end method

.method private static b(Landroid/widget/ImageView;I)V
    .registers 3

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 400
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_1_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 420
    :goto_11
    return-void

    .line 401
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 402
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_2_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 403
    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    .line 404
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_3_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 405
    :cond_24
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 406
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_4_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 407
    :cond_2d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_36

    .line 408
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_5_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 409
    :cond_36
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3f

    .line 410
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_6_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 411
    :cond_3f
    const/4 v0, 0x7

    if-ne p1, v0, :cond_48

    .line 412
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_7_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 413
    :cond_48
    const/16 v0, 0x8

    if-ne p1, v0, :cond_52

    .line 414
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_8_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 415
    :cond_52
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5c

    .line 416
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_9_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 418
    :cond_5c
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method private static c()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 437
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 438
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    return-object v0
.end method
