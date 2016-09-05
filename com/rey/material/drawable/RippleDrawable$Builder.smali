.class public Lcom/rey/material/drawable/RippleDrawable$Builder;
.super Ljava/lang/Object;
.source "RippleDrawable.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/animation/Interpolator;

.field private j:Landroid/view/animation/Interpolator;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/16 v0, 0xc8

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->b:I

    .line 502
    const/16 v0, 0x190

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->f:I

    .line 519
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 522
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/rey/material/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 523
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .prologue
    const v4, 0x10e0001

    const/4 v3, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/16 v0, 0xc8

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->b:I

    .line 502
    const/16 v0, 0x190

    iput v0, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->f:I

    .line 526
    sget-object v0, Lcom/rey/material/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 529
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_backgroundColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->b(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 530
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_backgroundAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 531
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_rippleType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->c(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 532
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_delayClick:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->d(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 533
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    invoke-static {v0, v1}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/res/TypedArray;I)I

    move-result v1

    .line 534
    const/16 v2, 0x10

    if-lt v1, v2, :cond_10c

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_10c

    .line 535
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->e(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 538
    :goto_59
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_rippleColor:I

    invoke-static {p1, v3}, Lcom/rey/material/util/ThemeUtil;->e(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->g(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 539
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_rippleAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->f(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 540
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_inInterpolator:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_86

    .line 541
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 542
    :cond_86
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_outInterpolator:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_95

    .line 543
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->b(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 544
    :cond_95
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_maskType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->h(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 545
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_cornerRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->i(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 546
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_topLeftCornerRadius:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->j(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 547
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_topRightCornerRadius:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->k(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 548
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_bottomRightCornerRadius:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->m(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 549
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_bottomLeftCornerRadius:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->l(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 550
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_padding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->n(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 551
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_leftPadding:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->o(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 552
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_rightPadding:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->q(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 553
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_topPadding:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->p(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 554
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_bottomPadding:I

    iget v2, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->r(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    .line 556
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 557
    return-void

    .line 537
    :cond_10c
    sget v1, Lcom/rey/material/R$styleable;->RippleDrawable_rd_maxRippleRadius:I

    const/16 v2, 0x30

    invoke-static {p1, v2}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/drawable/RippleDrawable$Builder;->e(I)Lcom/rey/material/drawable/RippleDrawable$Builder;

    goto/16 :goto_59
.end method


# virtual methods
.method public a(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 575
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->b:I

    .line 576
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 570
    iput-object p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->a:Landroid/graphics/drawable/Drawable;

    .line 571
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 610
    iput-object p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->i:Landroid/view/animation/Interpolator;

    .line 611
    return-object p0
.end method

.method public a()Lcom/rey/material/drawable/RippleDrawable;
    .registers 23

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->i:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_f

    .line 561
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->i:Landroid/view/animation/Interpolator;

    .line 563
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->j:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1e

    .line 564
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->j:Landroid/view/animation/Interpolator;

    .line 566
    :cond_1e
    new-instance v1, Lcom/rey/material/drawable/RippleDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->h:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->e:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->f:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->g:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->i:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->j:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->k:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->l:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->m:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->n:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->p:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/RippleDrawable$Builder;->s:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/rey/material/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIIIIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;IIIIIIIIILcom/rey/material/drawable/RippleDrawable$1;)V

    return-object v1
.end method

.method public b(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 580
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->c:I

    .line 581
    return-object p0
.end method

.method public b(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 615
    iput-object p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->j:Landroid/view/animation/Interpolator;

    .line 616
    return-object p0
.end method

.method public c(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 585
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->d:I

    .line 586
    return-object p0
.end method

.method public d(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 590
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->h:I

    .line 591
    return-object p0
.end method

.method public e(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 595
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->e:I

    .line 596
    return-object p0
.end method

.method public f(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 600
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->f:I

    .line 601
    return-object p0
.end method

.method public g(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 605
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->g:I

    .line 606
    return-object p0
.end method

.method public h(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 620
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->k:I

    .line 621
    return-object p0
.end method

.method public i(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 625
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->l:I

    .line 626
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->m:I

    .line 627
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->n:I

    .line 628
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->o:I

    .line 629
    return-object p0
.end method

.method public j(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 633
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->l:I

    .line 634
    return-object p0
.end method

.method public k(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 638
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->m:I

    .line 639
    return-object p0
.end method

.method public l(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 643
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->n:I

    .line 644
    return-object p0
.end method

.method public m(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 648
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->o:I

    .line 649
    return-object p0
.end method

.method public n(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 653
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->p:I

    .line 654
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->q:I

    .line 655
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->r:I

    .line 656
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->s:I

    .line 657
    return-object p0
.end method

.method public o(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 661
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->p:I

    .line 662
    return-object p0
.end method

.method public p(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 666
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->q:I

    .line 667
    return-object p0
.end method

.method public q(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 671
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->r:I

    .line 672
    return-object p0
.end method

.method public r(I)Lcom/rey/material/drawable/RippleDrawable$Builder;
    .registers 2

    .prologue
    .line 676
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Builder;->s:I

    .line 677
    return-object p0
.end method
