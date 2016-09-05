.class public Lme/relex/circleindicator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/nineoldandroids/animation/AnimatorSet;

.field private j:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 33
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 33
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 47
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setOrientation(I)V

    .line 52
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setGravity(I)V

    .line 53
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Lcom/nineoldandroids/animation/AnimatorInflater;->a(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 55
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Landroid/view/animation/Interpolator;)V

    .line 56
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    invoke-static {p1, v0}, Lcom/nineoldandroids/animation/AnimatorInflater;->a(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 57
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;-><init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Landroid/view/animation/Interpolator;)V

    .line 58
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v3, -0x1

    .line 61
    if-eqz p2, :cond_35

    .line 62
    sget-object v0, Lme/relex/circleindicator/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 70
    const/4 v1, 0x3

    sget v2, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->f:I

    .line 72
    const/4 v1, 0x4

    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    :cond_35
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    if-ne v0, v3, :cond_54

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_3d
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    .line 79
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    if-ne v0, v3, :cond_57

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_47
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    .line 81
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    if-ne v0, v3, :cond_5a

    invoke-virtual {p0, v4}, Lme/relex/circleindicator/CircleIndicator;->a(F)I

    move-result v0

    :goto_51
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    .line 83
    return-void

    .line 77
    :cond_54
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    goto :goto_3d

    .line 79
    :cond_57
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    goto :goto_47

    .line 81
    :cond_5a
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    goto :goto_51
.end method

.method private b(Landroid/support/v4/view/ViewPager;)V
    .registers 7

    .prologue
    .line 130
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->removeAllViews()V

    .line 131
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v2

    .line 132
    if-gtz v2, :cond_e

    .line 151
    :goto_d
    return-void

    .line 136
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_46

    .line 137
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->g:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->d:I

    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->e:I

    invoke-virtual {p0, v3, v0, v4}, Lme/relex/circleindicator/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->c:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 143
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a()V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 149
    :cond_46
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a()V

    goto :goto_d
.end method


# virtual methods
.method public a(F)I
    .registers 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 162
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    .line 87
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->b(Landroid/support/v4/view/ViewPager;)V

    .line 88
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 89
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 127
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 107
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 114
    :cond_9
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Lcom/nineoldandroids/animation/AnimatorSet;

    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->j:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a()V

    .line 117
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->i:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a()V

    .line 120
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->h:I

    .line 121
    return-void
.end method
