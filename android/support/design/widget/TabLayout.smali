.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentInsetStart:I

.field private mMode:I

.field private mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mScrollableTabMinWidth:I

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextMultiLineSize:F

.field private mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 234
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 254
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 267
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 273
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 274
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 277
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 282
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 284
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 286
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 288
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 290
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 292
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 295
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 299
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 302
    :try_start_98
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 303
    sget v2, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_124

    .line 305
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 310
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 313
    :cond_bd
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 317
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 318
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 321
    :cond_d7
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 323
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 325
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 326
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 327
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 328
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    sget v1, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 334
    sget v1, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 337
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 338
    return-void

    .line 305
    :catchall_124
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$1500(Landroid/support/design/widget/TabLayout;)F
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    return v0
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout;)F
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    return v0
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    return v0
.end method

.method static synthetic access$1900(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/design/widget/TabLayout;I)I
    .registers 3

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$2102(Landroid/support/design/widget/TabLayout;I)I
    .registers 2

    .prologue
    .line 124
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$2200(Landroid/support/design/widget/TabLayout;Z)V
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method static synthetic access$2600(Landroid/support/design/widget/TabLayout;IFZZ)V
    .registers 5

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method static synthetic access$2700(Landroid/support/design/widget/TabLayout;)V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout;)I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    return v0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .registers 4

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 464
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    .line 465
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 467
    :cond_d
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 468
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 470
    :cond_16
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v1, :cond_1f

    .line 471
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 473
    :cond_1f
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 474
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 7

    .prologue
    .line 823
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 824
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 825
    if-eqz p3, :cond_13

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 828
    :cond_13
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 6

    .prologue
    .line 815
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 816
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    if-eqz p2, :cond_13

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 820
    :cond_13
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 851
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_a

    .line 852
    check-cast p1, Landroid/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    .line 856
    return-void

    .line 854
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .registers 7

    .prologue
    const/16 v4, 0x12c

    const/4 v1, 0x0

    .line 947
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 981
    :goto_6
    return-void

    .line 951
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 955
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_6

    .line 959
    :cond_20
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 960
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 962
    if-eq v0, v1, :cond_54

    .line 963
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_4a

    .line 964
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 965
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 966
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 967
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 975
    :cond_4a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 976
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 980
    :cond_54
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_6
.end method

.method private applyModeAndGravity()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1047
    .line 1048
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_2c

    .line 1050
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1052
    :goto_f
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;IIII)V

    .line 1054
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v0, :pswitch_data_2e

    .line 1063
    :goto_19
    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 1064
    return-void

    .line 1056
    :pswitch_1d
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    .line 1059
    :pswitch_23
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    :cond_2c
    move v0, v1

    goto :goto_f

    .line 1054
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1030
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_44

    .line 1031
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1032
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1035
    :goto_1e
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1036
    :goto_24
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1038
    :cond_2a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1043
    :cond_44
    return v0

    .line 1032
    :cond_45
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1e

    :cond_48
    move v1, v0

    .line 1035
    goto :goto_24
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 6

    .prologue
    .line 805
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 809
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_22

    .line 810
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 809
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 812
    :cond_22
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 1867
    new-array v0, v1, [[I

    .line 1868
    new-array v1, v1, [I

    .line 1869
    const/4 v2, 0x0

    .line 1871
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1872
    aput p1, v1, v2

    .line 1873
    const/4 v2, 0x1

    .line 1876
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 1877
    aput p0, v1, v2

    .line 1880
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 859
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 862
    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .registers 4

    .prologue
    .line 794
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 795
    :goto_c
    if-nez v0, :cond_17

    .line 796
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 798
    :cond_17
    # invokes: Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    invoke-static {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->access$600(Landroid/support/design/widget/TabLayout$TabView;Landroid/support/design/widget/TabLayout$Tab;)V

    .line 799
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 800
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 801
    return-object v0

    .line 794
    :cond_26
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private dpToPx(I)I
    .registers 4

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getDefaultHeight()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1884
    .line 1885
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_31

    .line 1886
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 1887
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1888
    const/4 v0, 0x1

    .line 1892
    :goto_25
    if-eqz v0, :cond_2e

    const/16 v0, 0x48

    :goto_29
    return v0

    .line 1885
    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1892
    :cond_2e
    const/16 v0, 0x30

    goto :goto_29

    :cond_31
    move v0, v1

    goto :goto_25
.end method

.method private getScrollPosition()F
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMaxWidth()I
    .registers 2

    .prologue
    .line 1914
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method private getTabMinWidth()I
    .registers 3

    .prologue
    .line 1896
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1898
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 1901
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private getTabScrollRange()I
    .registers 4

    .prologue
    .line 742
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private populateFromPagerAdapter()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 767
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 769
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_45

    .line 770
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v2

    move v0, v1

    .line 771
    :goto_f
    if-ge v0, v2, :cond_25

    .line 772
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/PagerAdapter;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 776
    :cond_25
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_44

    if-lez v2, :cond_44

    .line 777
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 778
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_44

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 779
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 785
    :cond_44
    :goto_44
    return-void

    .line 783
    :cond_45
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    goto :goto_44
.end method

.method private removeTabViewAt(I)V
    .registers 4

    .prologue
    .line 937
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 938
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 939
    if-eqz v0, :cond_17

    .line 940
    # invokes: Landroid/support/design/widget/TabLayout$TabView;->reset()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$700(Landroid/support/design/widget/TabLayout$TabView;)V

    .line 941
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->a(Ljava/lang/Object;)Z

    .line 943
    :cond_17
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 944
    return-void
.end method

.method private setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .registers 5

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_f

    .line 749
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/database/DataSetObserver;)V

    .line 752
    :cond_f
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 754
    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_21

    .line 757
    new-instance v0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 759
    :cond_21
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/database/DataSetObserver;)V

    .line 763
    :cond_26
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 764
    return-void
.end method

.method private setScrollPosition(IFZZ)V
    .registers 8

    .prologue
    .line 378
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 379
    if-ltz v0, :cond_10

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 398
    :cond_10
    :goto_10
    return-void

    .line 384
    :cond_11
    if-eqz p4, :cond_18

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 389
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 390
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 392
    :cond_29
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 395
    if-eqz p3, :cond_10

    .line 396
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_10
.end method

.method private setSelectedTabView(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 984
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 985
    if-ge p1, v3, :cond_2a

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2a

    move v2, v1

    .line 986
    :goto_16
    if-ge v2, v3, :cond_2a

    .line 987
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 988
    if-ne v2, p1, :cond_28

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 986
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_28
    move v0, v1

    .line 988
    goto :goto_21

    .line 991
    :cond_2a
    return-void
.end method

.method private updateAllTabs()V
    .registers 4

    .prologue
    .line 788
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 789
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    # invokes: Landroid/support/design/widget/TabLayout$Tab;->updateView()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$500(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 788
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 791
    :cond_19
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    .prologue
    .line 866
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_11

    .line 867
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 868
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 873
    :goto_10
    return-void

    .line 870
    :cond_11
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 871
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_10
.end method

.method private updateTabViews(Z)V
    .registers 5

    .prologue
    .line 1067
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 1068
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1069
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1070
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1071
    if-eqz p1, :cond_25

    .line 1072
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1067
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1075
    :cond_29
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 412
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .registers 4

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 423
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .registers 6

    .prologue
    .line 451
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 456
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 457
    if-eqz p3, :cond_1a

    .line 458
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 460
    :cond_1a
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 5

    .prologue
    .line 432
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 437
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 438
    if-eqz p2, :cond_20

    .line 439
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 441
    :cond_20
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 832
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 833
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 837
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 838
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .prologue
    .line 847
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 848
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 843
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 1910
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .registers 3

    .prologue
    .line 495
    sget-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 496
    if-nez v0, :cond_f

    .line 497
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$Tab;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 499
    :cond_f
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    # setter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->access$102(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/widget/TabLayout$TabView;

    .line 500
    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 884
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_9a

    .line 895
    :goto_1d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 896
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_2f

    .line 899
    iget v3, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v3, :cond_75

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    :goto_2d
    iput v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 905
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 907
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_62

    .line 910
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 913
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v0, :pswitch_data_a4

    move v0, v2

    .line 925
    :goto_42
    if-eqz v0, :cond_62

    .line 927
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 929
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 931
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 934
    :cond_62
    return-void

    .line 886
    :sswitch_63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1d

    .line 891
    :sswitch_70
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1d

    .line 899
    :cond_75
    const/16 v3, 0x38

    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_2d

    .line 917
    :pswitch_7d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_89

    move v0, v1

    goto :goto_42

    :cond_89
    move v0, v2

    goto :goto_42

    .line 921
    :pswitch_8b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_97

    :goto_95
    move v0, v1

    goto :goto_42

    :cond_97
    move v1, v2

    goto :goto_95

    .line 884
    nop

    :sswitch_data_9a
    .sparse-switch
        -0x80000000 -> :sswitch_63
        0x0 -> :sswitch_70
    .end sparse-switch

    .line 913
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_8b
    .end packed-switch
.end method

.method public removeAllTabs()V
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 575
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 578
    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 581
    # invokes: Landroid/support/design/widget/TabLayout$Tab;->reset()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 582
    sget-object v2, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->a(Ljava/lang/Object;)Z

    goto :goto_16

    .line 585
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 586
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 4

    .prologue
    .line 536
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_f
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 541
    return-void
.end method

.method public removeTabAt(I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    move v1, v0

    .line 551
    :goto_c
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 553
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 554
    if-eqz v0, :cond_21

    .line 555
    # invokes: Landroid/support/design/widget/TabLayout$Tab;->reset()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 556
    sget-object v3, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3, v0}, Landroid/support/v4/util/Pools$Pool;->a(Ljava/lang/Object;)Z

    .line 559
    :cond_21
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, p1

    .line 560
    :goto_28
    if-ge v3, v4, :cond_3b

    .line 561
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 560
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_28

    :cond_39
    move v1, v2

    .line 550
    goto :goto_c

    .line 564
    :cond_3b
    if-ne v1, p1, :cond_49

    .line 565
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    :goto_46
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 567
    :cond_49
    return-void

    .line 565
    :cond_4a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_46
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .registers 3

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 995
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 998
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-ne v0, p1, :cond_1c

    .line 999
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_1b

    .line 1000
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_14

    .line 1001
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1003
    :cond_14
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 1027
    :cond_1b
    :goto_1b
    return-void

    .line 1006
    :cond_1c
    if-eqz p2, :cond_3c

    .line 1007
    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 1008
    :goto_24
    if-eq v0, v1, :cond_29

    .line 1009
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1011
    :cond_29
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_5f

    :cond_35
    if-eq v0, v1, :cond_5f

    .line 1014
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1019
    :cond_3c
    :goto_3c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_4b

    .line 1020
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1022
    :cond_4b
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1023
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_1b

    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_1b

    :cond_5d
    move v0, v1

    .line 1007
    goto :goto_24

    .line 1016
    :cond_5f
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_3c
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 484
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .registers 5

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 374
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 349
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 360
    return-void
.end method

.method public setTabGravity(I)V
    .registers 3

    .prologue
    .line 628
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_9

    .line 629
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 630
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 632
    :cond_9
    return-void
.end method

.method public setTabMode(I)V
    .registers 3

    .prologue
    .line 604
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_9

    .line 605
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 606
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 608
    :cond_9
    return-void
.end method

.method public setTabTextColors(II)V
    .registers 4

    .prologue
    .line 671
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 672
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 651
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 652
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 654
    :cond_9
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 733
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v0, :cond_11

    .line 693
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 696
    :cond_11
    if-eqz p1, :cond_45

    .line 697
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 698
    if-nez v0, :cond_22

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_22
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 705
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v1, :cond_2f

    .line 706
    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 708
    :cond_2f
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    # invokes: Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V
    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->access$300(Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;)V

    .line 709
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 712
    new-instance v1, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 715
    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 723
    :goto_44
    return-void

    .line 719
    :cond_45
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 720
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 721
    invoke-direct {p0, v2, v3}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_44
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
