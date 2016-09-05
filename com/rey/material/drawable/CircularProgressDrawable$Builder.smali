.class public Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:[I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/animation/Interpolator;

.field private o:I

.field private p:F

.field private q:[I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 628
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 629
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const v7, 0x10e0001

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    sget-object v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 635
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_padding:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 636
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_initialAngle:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 637
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_progress:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->b(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 638
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_secondaryProgress:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->c(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 639
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_maxSweepAngle:I

    const/16 v3, 0x10e

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->d(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 640
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_minSweepAngle:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->e(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 641
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeSize:I

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->b(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 642
    new-array v0, v6, [I

    sget v3, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeColor:I

    const/high16 v4, -0x1000000

    invoke-static {p1, v4}, Lcom/rey/material/util/ThemeUtil;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a([I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 643
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeColors:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_97

    .line 644
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 645
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 646
    :goto_82
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_91

    .line 647
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 648
    :cond_91
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    invoke-virtual {p0, v4}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a([I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 651
    :cond_97
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_strokeSecondaryColor:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->c(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 652
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_reverse:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a(Z)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 653
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_rotateDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->d(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 654
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_transformDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->e(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 655
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_keepDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x10e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->f(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 656
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_transformInterpolator:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_f0

    .line 657
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 658
    :cond_f0
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_pv_progressMode:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->g(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 659
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->h(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 660
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inStepColors:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_136

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 662
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 663
    :goto_121
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_130

    .line 664
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_121

    .line 665
    :cond_130
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    invoke-virtual {p0, v4}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->b([I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 668
    :cond_136
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_inStepPercent:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->f(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 669
    sget v0, Lcom/rey/material/R$styleable;->CircularProgressDrawable_cpd_outAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->i(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;

    .line 670
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 671
    return-void
.end method


# virtual methods
.method public a(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 692
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->b:F

    .line 693
    return-object p0
.end method

.method public a(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 687
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a:I

    .line 688
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 756
    iput-object p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->n:Landroid/view/animation/Interpolator;

    .line 757
    return-object p0
.end method

.method public a(Z)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->j:Z

    .line 733
    return-object p0
.end method

.method public varargs a([I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 722
    iput-object p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->h:[I

    .line 723
    return-object p0
.end method

.method public a()Lcom/rey/material/drawable/CircularProgressDrawable;
    .registers 23

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->h:[I

    if-nez v1, :cond_13

    .line 675
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0xff6601

    aput v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->h:[I

    .line 677
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->q:[I

    if-nez v1, :cond_29

    move-object/from16 v0, p0

    iget v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->r:I

    if-lez v1, :cond_29

    .line 678
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_96

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->q:[I

    .line 680
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->n:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_38

    .line 681
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->n:Landroid/view/animation/Interpolator;

    .line 683
    :cond_38
    new-instance v1, Lcom/rey/material/drawable/CircularProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->b:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->c:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->d:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->e:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->f:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->g:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->h:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->i:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->j:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->k:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->l:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->m:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->n:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->o:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->p:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->q:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->s:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/rey/material/drawable/CircularProgressDrawable;-><init>(IFFFFFI[IIZIIILandroid/view/animation/Interpolator;IIF[IILcom/rey/material/drawable/CircularProgressDrawable$1;)V

    return-object v1

    .line 678
    :array_96
    .array-data 4
        -0x4a2b01
        -0x211504
        -0x50002
    .end array-data
.end method

.method public b(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 697
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->c:F

    .line 698
    return-object p0
.end method

.method public b(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 717
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->g:I

    .line 718
    return-object p0
.end method

.method public varargs b([I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 776
    iput-object p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->q:[I

    .line 777
    return-object p0
.end method

.method public c(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 702
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->d:F

    .line 703
    return-object p0
.end method

.method public c(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 727
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->i:I

    .line 728
    return-object p0
.end method

.method public d(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 707
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->e:F

    .line 708
    return-object p0
.end method

.method public d(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 741
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->k:I

    .line 742
    return-object p0
.end method

.method public e(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 712
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->f:F

    .line 713
    return-object p0
.end method

.method public e(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 746
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->l:I

    .line 747
    return-object p0
.end method

.method public f(F)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 771
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->p:F

    .line 772
    return-object p0
.end method

.method public f(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 751
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->m:I

    .line 752
    return-object p0
.end method

.method public g(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 761
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->o:I

    .line 762
    return-object p0
.end method

.method public h(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 766
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->r:I

    .line 767
    return-object p0
.end method

.method public i(I)Lcom/rey/material/drawable/CircularProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 781
    iput p1, p0, Lcom/rey/material/drawable/CircularProgressDrawable$Builder;->s:I

    .line 782
    return-object p0
.end method
