.class public Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SmartTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTRIBUTE_EVENLY:Z = false

.field private static final TAB_CLICKABLE:Z = true

.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_ALL_CAPS:Z = true

.field private static final TAB_VIEW_TEXT_COLOR:I = -0x4000000

.field private static final TAB_VIEW_TEXT_MIN_WIDTH:I = 0x0

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private distributeEvenly:Z

.field private internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

.field private onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

.field private onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

.field private tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

.field protected final tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

.field private tabViewBackgroundResId:I

.field private tabViewTextAllCaps:Z

.field private tabViewTextColors:Landroid/content/res/ColorStateList;

.field private tabViewTextHorizontalPadding:I

.field private tabViewTextMinWidth:I

.field private tabViewTextSize:F

.field private titleOffset:I

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 103
    .local v11, "dm":Landroid/util/DisplayMetrics;
    iget v9, v11, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v9, "density":F
    const/4 v12, -0x1

    .line 106
    .local v12, "tabBackgroundResId":I
    const/4 v13, 0x1

    .line 108
    .local v13, "textAllCaps":Z
    const/16 v18, 0x2

    const/high16 v19, 0x41400000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    .line 110
    .local v17, "textSize":F
    const/high16 v18, 0x41800000

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v15, v0

    .line 111
    .local v15, "textHorizontalPadding":I
    const/16 v18, 0x0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 112
    .local v16, "textMinWidth":I
    const/4 v10, 0x0

    .line 113
    .local v10, "distributeEvenly":Z
    const/4 v7, -0x1

    .line 114
    .local v7, "customTabLayoutId":I
    const/4 v8, -0x1

    .line 115
    .local v8, "customTabTextViewId":I
    const/4 v6, 0x1

    .line 117
    .local v6, "clickable":Z
    sget-object v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 119
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabBackground:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 121
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextAllCaps:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 123
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextColor:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 125
    .local v14, "textColors":Landroid/content/res/ColorStateList;
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextSize:I

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 127
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextHorizontalPadding:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 129
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextMinWidth:I

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 131
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextLayoutId:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 133
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextViewId:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 135
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_distributeEvenly:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 137
    sget v18, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_clickable:I

    move/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 139
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/high16 v18, 0x41c00000

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    .line 142
    move-object/from16 v0, p0

    iput v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    .line 143
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextAllCaps:Z

    .line 144
    if-eqz v14, :cond_11a

    .line 146
    .end local v14    # "textColors":Landroid/content/res/ColorStateList;
    :goto_ba
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 147
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextSize:F

    .line 148
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    .line 149
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    .line 150
    if-eqz v6, :cond_121

    new-instance v18, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    :goto_dd
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    .line 151
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    .line 153
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_f2

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(II)V

    .line 157
    :cond_f2
    new-instance v18, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 159
    if-eqz v10, :cond_124

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v18

    if-eqz v18, :cond_124

    .line 160
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v19, "\'distributeEvenly\' and \'indicatorAlwaysInCenter\' both use does not support"

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 144
    .restart local v14    # "textColors":Landroid/content/res/ColorStateList;
    :cond_11a
    const/high16 v18, -0x4000000

    .line 146
    invoke-static/range {v18 .. v18}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_ba

    .line 150
    .end local v14    # "textColors":Landroid/content/res/ColorStateList;
    :cond_121
    const/16 v18, 0x0

    goto :goto_dd

    .line 165
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v18

    if-nez v18, :cond_14f

    const/16 v18, 0x1

    :goto_132
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setFillViewport(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->addView(Landroid/view/View;II)V

    .line 169
    return-void

    .line 165
    :cond_14f
    const/16 v18, 0x0

    goto :goto_132
.end method

.method static synthetic access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;II)V
    .registers 3
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private populateTabStrip()V
    .registers 7

    .prologue
    .line 380
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 382
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_5b

    .line 384
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    if-nez v4, :cond_24

    .line 385
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->createDefaultTabView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    .line 388
    .local v3, "tabView":Landroid/view/View;
    :goto_19
    if-nez v3, :cond_2d

    .line 389
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "tabView is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    .end local v3    # "tabView":Landroid/view/View;
    :cond_24
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 386
    invoke-interface {v4, v5, v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;->createTabView(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;

    move-result-object v3

    goto :goto_19

    .line 392
    .restart local v3    # "tabView":Landroid/view/View;
    :cond_2d
    iget-boolean v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    if-eqz v4, :cond_3e

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 395
    const/high16 v4, 0x3f800000

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 398
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3e
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    if-eqz v4, :cond_47

    .line 399
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_47
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->addView(Landroid/view/View;)V

    .line 404
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v1, v4, :cond_58

    .line 405
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 382
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 409
    .end local v3    # "tabView":Landroid/view/View;
    :cond_5b
    return-void
.end method

.method private scrollToTab(II)V
    .registers 15
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # I

    .prologue
    const/4 v11, 0x0

    .line 412
    iget-object v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v7

    .line 413
    .local v7, "tabStripChildCount":I
    if-eqz v7, :cond_d

    if-ltz p1, :cond_d

    if-lt p1, v7, :cond_e

    .line 461
    :cond_d
    :goto_d
    return-void

    .line 417
    :cond_e
    iget-object v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v9, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 418
    .local v4, "selectedTab":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 422
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 424
    .local v2, "isLayoutRtl":Z
    iget-object v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 425
    iget-object v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v9, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, "firstTab":Landroid/view/View;
    if-eqz v2, :cond_52

    .line 428
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v9

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v10

    add-int v0, v9, v10

    .line 429
    .local v0, "first":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v9

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v10

    add-int v3, v9, v10

    .line 430
    .local v3, "selected":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;)I

    move-result v9

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v8, v9, p2

    .line 431
    .local v8, "x":I
    sub-int v9, v0, v3

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 439
    :goto_4e
    invoke-virtual {p0, v8, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto :goto_d

    .line 433
    .end local v0    # "first":I
    .end local v3    # "selected":I
    .end local v8    # "x":I
    :cond_52
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v9

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v10

    add-int v0, v9, v10

    .line 434
    .restart local v0    # "first":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v9

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v10

    add-int v3, v9, v10

    .line 435
    .restart local v3    # "selected":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;)I

    move-result v9

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int v8, v9, p2

    .line 436
    .restart local v8    # "x":I
    sub-int v9, v0, v3

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    goto :goto_4e

    .line 444
    .end local v0    # "first":I
    .end local v1    # "firstTab":Landroid/view/View;
    .end local v3    # "selected":I
    .end local v8    # "x":I
    :cond_77
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;)I

    move-result v5

    .line 445
    .local v5, "start":I
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v6

    .line 446
    .local v6, "startMargin":I
    if-eqz v2, :cond_9d

    add-int v9, v5, v6

    sub-int/2addr v9, p2

    .line 447
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingHorizontally(Landroid/view/View;)I

    move-result v10

    add-int v8, v9, v10

    .line 450
    .restart local v8    # "x":I
    :goto_8f
    if-gtz p1, :cond_93

    if-lez p2, :cond_98

    .line 452
    :cond_93
    if-eqz v2, :cond_a2

    .line 453
    iget v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    add-int/2addr v8, v9

    .line 459
    :cond_98
    :goto_98
    invoke-virtual {p0, v8, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto/16 :goto_d

    .line 447
    .end local v8    # "x":I
    :cond_9d
    sub-int v9, v5, v6

    add-int v8, v9, p2

    goto :goto_8f

    .line 455
    .restart local v8    # "x":I
    :cond_a2
    iget v9, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    sub-int/2addr v8, v9

    goto :goto_98
.end method


# virtual methods
.method protected createDefaultTabView(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 343
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    .local v1, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 345
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 347
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextSize:F

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 348
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 349
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    if-eq v2, v4, :cond_50

    .line 353
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 363
    :cond_34
    :goto_34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3f

    .line 365
    iget-boolean v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextAllCaps:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 368
    :cond_3f
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 372
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    if-lez v2, :cond_4f

    .line 373
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 376
    :cond_4f
    return-object v1

    .line 354
    :cond_50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_34

    .line 357
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 358
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 360
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_34
.end method

.method public getTabAt(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 195
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 197
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_13

    .line 198
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(II)V

    .line 200
    :cond_13
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 174
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    invoke-interface {v0, p1, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;->onScrollChanged(II)V

    .line 177
    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 182
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_59

    .line 183
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "firstTab":Landroid/view/View;
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, "lastTab":Landroid/view/View;
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 186
    .local v3, "start":I
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v5

    sub-int v0, v4, v5

    .line 187
    .local v0, "end":I
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setMinimumWidth(I)V

    .line 188
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingBottom()I

    move-result v5

    invoke-static {p0, v3, v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 189
    invoke-virtual {p0, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setClipToPadding(Z)V

    .line 191
    .end local v0    # "end":I
    .end local v1    # "firstTab":Landroid/view/View;
    .end local v2    # "lastTab":Landroid/view/View;
    .end local v3    # "start":I
    :cond_59
    return-void
.end method

.method public setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V
    .registers 3
    .param p1, "tabColorizer"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V

    .line 220
    return-void
.end method

.method public setCustomTabView(II)V
    .registers 6
    .param p1, "layoutResId"    # I
    .param p2, "textViewId"    # I

    .prologue
    .line 301
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;-><init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 302
    return-void
.end method

.method public setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 311
    return-void
.end method

.method public setDefaultTabTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 229
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 230
    return-void
.end method

.method public setDefaultTabTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 240
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .registers 2
    .param p1, "distributeEvenly"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    .line 247
    return-void
.end method

.method public varargs setDividerColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setDividerColors([I)V

    .line 263
    return-void
.end method

.method public setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V
    .registers 3
    .param p1, "interpolator"    # Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V

    .line 209
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 274
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    .line 283
    return-void
.end method

.method public setOnTabClickListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    .line 292
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .registers 3
    .param p1, "colors"    # [I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setSelectedIndicatorColors([I)V

    .line 255
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 4
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->removeAllViews()V

    .line 320
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 321
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 322
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 323
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->populateTabStrip()V

    .line 325
    :cond_1b
    return-void
.end method
