.class public Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "LinearProgressDrawable.java"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:[I

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/view/animation/Interpolator;

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x190

    const/4 v0, 0x0

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a:F

    .line 913
    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b:F

    .line 918
    const/16 v0, 0x8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->g:I

    .line 919
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->h:I

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->k:Z

    .line 923
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->l:I

    .line 924
    const/16 v0, 0x320

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->m:I

    .line 925
    const/16 v0, 0xc8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->n:I

    .line 927
    const/4 v0, 0x1

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->p:I

    .line 928
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->q:I

    .line 929
    iput v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->r:I

    .line 931
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 934
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 935
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .prologue
    const/high16 v4, 0x3e800000    # 0.25f

    const v7, 0x10e0001

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a:F

    .line 913
    iput v3, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b:F

    .line 918
    const/16 v0, 0x8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->g:I

    .line 919
    const/4 v0, 0x2

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->h:I

    .line 922
    iput-boolean v1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->k:Z

    .line 923
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->l:I

    .line 924
    const/16 v0, 0x320

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->m:I

    .line 925
    const/16 v0, 0xc8

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->n:I

    .line 927
    iput v6, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->p:I

    .line 928
    const/16 v0, 0x190

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->q:I

    .line 929
    const/16 v0, 0x190

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->r:I

    .line 938
    sget-object v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 941
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_progress:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 942
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_secondaryProgress:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 944
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 945
    if-nez v0, :cond_af

    .line 946
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 952
    :goto_53
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 953
    if-nez v0, :cond_ca

    .line 954
    invoke-virtual {p0, v4}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->d(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 960
    :goto_5e
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeSize:I

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/rey/material/util/ThemeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 961
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_verticalAlign:I

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->d(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 962
    new-array v0, v6, [I

    sget v3, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeColor:I

    const/high16 v4, -0x1000000

    invoke-static {p1, v4}, Lcom/rey/material/util/ThemeUtil;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a([I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 963
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeColors:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_ea

    .line 964
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 965
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    .line 966
    :goto_a0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_e4

    .line 967
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 947
    :cond_af
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_c0

    .line 948
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v0, v6, v6, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    goto :goto_53

    .line 950
    :cond_c0
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_maxLineWidth:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    goto :goto_53

    .line 955
    :cond_ca
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_d9

    .line 956
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {v2, v0, v6, v6, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->d(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    goto :goto_5e

    .line 958
    :cond_d9
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_minLineWidth:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    goto/16 :goto_5e

    .line 968
    :cond_e4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 969
    invoke-virtual {p0, v4}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a([I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 971
    :cond_ea
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_strokeSecondaryColor:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->e(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 972
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_reverse:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a(Z)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 973
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_travelDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->f(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 974
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_transformDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->g(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 975
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_keepDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x10e0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->h(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 976
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_transformInterpolator:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_143

    .line 977
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 978
    :cond_143
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_pv_progressMode:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->i(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 979
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_inAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->j(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 980
    sget v0, Lcom/rey/material/R$styleable;->LinearProgressDrawable_lpd_outAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->k(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;

    .line 982
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 983
    return-void
.end method


# virtual methods
.method public a(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 996
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b:F

    .line 997
    return-object p0
.end method

.method public a(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1006
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c:I

    .line 1007
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->o:Landroid/view/animation/Interpolator;

    .line 1073
    return-object p0
.end method

.method public a(Z)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1048
    iput-boolean p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->k:Z

    .line 1049
    return-object p0
.end method

.method public varargs a([I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->i:[I

    .line 1039
    return-object p0
.end method

.method public a()Lcom/rey/material/drawable/LinearProgressDrawable;
    .registers 22

    .prologue
    .line 986
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->i:[I

    if-nez v1, :cond_13

    .line 987
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0xff6601

    aput v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->i:[I

    .line 989
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->o:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_22

    .line 990
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->o:Landroid/view/animation/Interpolator;

    .line 992
    :cond_22
    new-instance v1, Lcom/rey/material/drawable/LinearProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->b:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->d:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->e:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->f:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->h:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->i:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->j:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->k:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->l:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->m:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->n:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->o:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->p:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->r:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/rey/material/drawable/LinearProgressDrawable;-><init>(FFIFIFII[IIZIIILandroid/view/animation/Interpolator;IIILcom/rey/material/drawable/LinearProgressDrawable$1;)V

    return-object v1
.end method

.method public b(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1001
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->a:F

    .line 1002
    return-object p0
.end method

.method public b(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1017
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->e:I

    .line 1018
    return-object p0
.end method

.method public c(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 4

    .prologue
    .line 1011
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->d:F

    .line 1012
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->c:I

    .line 1013
    return-object p0
.end method

.method public c(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1028
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->g:I

    .line 1029
    return-object p0
.end method

.method public d(F)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 4

    .prologue
    .line 1022
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->f:F

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->e:I

    .line 1024
    return-object p0
.end method

.method public d(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1033
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->h:I

    .line 1034
    return-object p0
.end method

.method public e(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1043
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->j:I

    .line 1044
    return-object p0
.end method

.method public f(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1057
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->l:I

    .line 1058
    return-object p0
.end method

.method public g(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1062
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->m:I

    .line 1063
    return-object p0
.end method

.method public h(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1067
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->n:I

    .line 1068
    return-object p0
.end method

.method public i(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1077
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->p:I

    .line 1078
    return-object p0
.end method

.method public j(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1082
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->q:I

    .line 1083
    return-object p0
.end method

.method public k(I)Lcom/rey/material/drawable/LinearProgressDrawable$Builder;
    .registers 2

    .prologue
    .line 1087
    iput p1, p0, Lcom/rey/material/drawable/LinearProgressDrawable$Builder;->r:I

    .line 1088
    return-object p0
.end method
