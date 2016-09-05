.class public Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SmartTabLayout.java"


# instance fields
.field protected final a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/content/res/ColorStateList;

.field private f:F

.field private g:I

.field private h:I

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

.field private l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

.field private m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

.field private n:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    .prologue
    .line 97
    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 103
    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    .line 105
    const/4 v5, -0x1

    .line 106
    const/4 v6, 0x1

    .line 108
    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 110
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    float-to-int v8, v3

    .line 111
    const/4 v3, 0x0

    mul-float/2addr v3, v4

    float-to-int v9, v3

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v11, -0x1

    .line 114
    const/4 v12, -0x1

    .line 115
    const/4 v13, 0x1

    .line 117
    sget-object v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 119
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabBackground:I

    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 121
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextAllCaps:I

    invoke-virtual {v14, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 123
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextColor:I

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 125
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextSize:I

    invoke-virtual {v14, v15, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 127
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextHorizontalPadding:I

    invoke-virtual {v14, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 129
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextMinWidth:I

    invoke-virtual {v14, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 131
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextLayoutId:I

    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 133
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextViewId:I

    invoke-virtual {v14, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 135
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_distributeEvenly:I

    invoke-virtual {v14, v15, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 137
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_clickable:I

    invoke-virtual {v14, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 139
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/high16 v14, 0x41c00000    # 24.0f

    mul-float/2addr v4, v14

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    .line 142
    move-object/from16 v0, p0

    iput v5, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    .line 143
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->d:Z

    .line 144
    if-eqz v3, :cond_d1

    .line 146
    :goto_85
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    .line 147
    move-object/from16 v0, p0

    iput v7, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->f:F

    .line 148
    move-object/from16 v0, p0

    iput v8, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    .line 149
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    .line 150
    if-eqz v13, :cond_d8

    new-instance v3, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    :goto_9f
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    .line 151
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    .line 153
    const/4 v3, -0x1

    if-eq v11, v3, :cond_af

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(II)V

    .line 157
    :cond_af
    new-instance v3, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 159
    if-eqz v10, :cond_da

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 160
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "\'distributeEvenly\' and \'indicatorAlwaysInCenter\' both use does not support"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_d1
    const/high16 v3, -0x4000000

    .line 146
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_85

    .line 150
    :cond_d8
    const/4 v3, 0x0

    goto :goto_9f

    .line 165
    :cond_da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a()Z

    move-result v3

    if-nez v3, :cond_f6

    const/4 v3, 0x1

    :goto_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setFillViewport(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->addView(Landroid/view/View;II)V

    .line 169
    return-void

    .line 165
    :cond_f6
    const/4 v3, 0x0

    goto :goto_e5
.end method

.method static synthetic a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    move v1, v2

    .line 382
    :goto_8
    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_5e

    .line 384
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    if-nez v0, :cond_26

    .line 385
    invoke-virtual {v4, v1}, Landroid/support/v4/view/PagerAdapter;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    move-object v3, v0

    .line 388
    :goto_1b
    if-nez v3, :cond_30

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tabView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_26
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 386
    invoke-interface {v0, v3, v1, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;->a(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1b

    .line 392
    :cond_30
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    if-eqz v0, :cond_40

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 395
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 398
    :cond_40
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    if-eqz v0, :cond_49

    .line 399
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_49
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v1, v0, :cond_5a

    .line 405
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 382
    :cond_5a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 409
    :cond_5e
    return-void
.end method

.method private a(II)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v0

    .line 413
    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    if-lt p1, v0, :cond_e

    .line 461
    :cond_d
    :goto_d
    return-void

    .line 417
    :cond_e
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_d

    .line 422
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->k(Landroid/view/View;)Z

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 425
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 427
    if-eqz v1, :cond_4f

    .line 428
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 429
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 430
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->d(Landroid/view/View;)I

    move-result v3

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v0

    sub-int v0, v3, v0

    sub-int/2addr v0, p2

    .line 431
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 439
    :goto_4b
    invoke-virtual {p0, v0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto :goto_d

    .line 433
    :cond_4f
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 434
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 435
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->c(Landroid/view/View;)I

    move-result v3

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v0

    sub-int v0, v3, v0

    add-int/2addr v0, p2

    .line 436
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_4b

    .line 444
    :cond_71
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->c(Landroid/view/View;)I

    move-result v2

    .line 445
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v0

    .line 446
    if-eqz v1, :cond_95

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    .line 447
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->g(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    .line 450
    :goto_87
    if-gtz p1, :cond_8b

    if-lez p2, :cond_90

    .line 452
    :cond_8b
    if-eqz v1, :cond_99

    .line 453
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    add-int/2addr v0, v1

    .line 459
    :cond_90
    :goto_90
    invoke-virtual {p0, v0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto/16 :goto_d

    .line 447
    :cond_95
    sub-int v0, v2, v0

    add-int/2addr v0, p2

    goto :goto_87

    .line 455
    :cond_99
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    sub-int/2addr v0, v1

    goto :goto_90
.end method

.method static synthetic a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->n:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 343
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 347
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->f:F

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 348
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 349
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    if-eq v1, v3, :cond_50

    .line 353
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 363
    :cond_34
    :goto_34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3f

    .line 365
    iget-boolean v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 368
    :cond_3f
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 372
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    if-lez v1, :cond_4f

    .line 373
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 376
    :cond_4f
    return-object v0

    .line 354
    :cond_50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_34

    .line 357
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 360
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_34
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 274
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->removeAllViews()V

    .line 320
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    .line 321
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 322
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 323
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a()V

    .line 325
    :cond_1b
    return-void
.end method

.method public a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 311
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 195
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 197
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_13

    .line 198
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(II)V

    .line 200
    :cond_13
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 174
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    invoke-interface {v0, p1, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;->a(II)V

    .line 177
    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 182
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 183
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 185
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->a(Landroid/view/View;)I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/Utils;->h(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    .line 186
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->a(Landroid/view/View;)I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->i(Landroid/view/View;)I

    move-result v1

    sub-int v1, v2, v1

    .line 187
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setMinimumWidth(I)V

    .line 188
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v0, v2, v1, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;IIII)V

    .line 189
    invoke-virtual {p0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setClipToPadding(Z)V

    .line 191
    :cond_59
    return-void
.end method

.method public setCustomTabView(II)V
    .registers 6

    .prologue
    .line 301
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;-><init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 302
    return-void
.end method

.method public setDefaultTabTextColor(I)V
    .registers 3

    .prologue
    .line 229
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    .line 230
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .registers 2

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    .line 247
    return-void
.end method

.method public varargs setDividerColors([I)V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->b([I)V

    .line 263
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->a([I)V

    .line 255
    return-void
.end method
