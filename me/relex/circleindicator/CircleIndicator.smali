.class public Lme/relex/circleindicator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/CircleIndicator$1;,
        Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x5


# instance fields
.field private mAnimationIn:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mAnimatorResId:I

.field private mCurrentPosition:I

.field private mIndicatorBackground:I

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorWidth:I

.field private mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mViewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 33
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackground:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mCurrentPosition:I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 33
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackground:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mCurrentPosition:I

    .line 47
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private createIndicators(Landroid/support/v4/view/ViewPager;)V
    .registers 8
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 130
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->removeAllViews()V

    .line 131
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 132
    .local v1, "count":I
    if-gtz v1, :cond_e

    .line 151
    :goto_d
    return-void

    .line 136
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_44

    .line 137
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "Indicator":Landroid/view/View;
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackground:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    iget v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    invoke-virtual {p0, v0, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 146
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 149
    .end local v0    # "Indicator":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_44
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    iget v5, p0, Lme/relex/circleindicator/CircleIndicator;->mCurrentPosition:I

    invoke-virtual {p0, v5}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 150
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_d
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x40a00000

    const/4 v3, -0x1

    .line 61
    if-eqz p2, :cond_35

    .line 62
    sget-object v1, Lme/relex/circleindicator/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 70
    const/4 v1, 0x3

    sget v2, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 72
    const/4 v1, 0x4

    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackground:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_35
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    if-ne v1, v3, :cond_54

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v1

    :goto_3d
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 79
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    if-ne v1, v3, :cond_57

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v1

    :goto_47
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 81
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    if-ne v1, v3, :cond_5a

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v1

    :goto_51
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 83
    return-void

    .line 77
    :cond_54
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    goto :goto_3d

    .line 79
    :cond_57
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    goto :goto_47

    .line 81
    :cond_5a
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    goto :goto_51
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setOrientation(I)V

    .line 52
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setGravity(I)V

    .line 53
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 55
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationIn:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 57
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationIn:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;-><init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .registers 5
    .param p1, "dpValue"    # F

    .prologue
    .line 161
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 162
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 127
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 107
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 114
    :cond_9
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationIn:Lcom/nineoldandroids/animation/AnimatorSet;

    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mCurrentPosition:I

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationIn:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 117
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimationOut:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 120
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->mCurrentPosition:I

    .line 121
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 4
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 93
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_d

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_d
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->mViewPagerOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 98
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 99
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 86
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    .line 87
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->createIndicators(Landroid/support/v4/view/ViewPager;)V

    .line 88
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 89
    return-void
.end method
