.class public Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private final d:Landroid/view/animation/Animation;

.field private final e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 16

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/bzbs/lib/survey/R$drawable;->bz_indicator_arrow:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/bzbs/lib/survey/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 56
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout$1;->a:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_ca

    .line 70
    sget v5, Lcom/bzbs/lib/survey/R$anim;->slide_in_from_top:I

    .line 71
    sget v0, Lcom/bzbs/lib/survey/R$anim;->slide_out_to_top:I

    .line 72
    sget v6, Lcom/bzbs/lib/survey/R$drawable;->bz_indicator_bg_top:I

    invoke-virtual {p0, v6}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 76
    :goto_49
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    .line 77
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 80
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 89
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    .line 91
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 95
    return-void

    .line 58
    :pswitch_9d
    sget v5, Lcom/bzbs/lib/survey/R$anim;->slide_in_from_bottom:I

    .line 59
    sget v0, Lcom/bzbs/lib/survey/R$anim;->slide_out_to_bottom:I

    .line 60
    sget v7, Lcom/bzbs/lib/survey/R$drawable;->bz_indicator_bg_bottom:I

    invoke-virtual {p0, v7}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 63
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-virtual {v7, v8, v9, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 66
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_49

    .line 56
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_9d
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_f

    .line 100
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    if-ne v3, v2, :cond_d

    .line 103
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 100
    goto :goto_c

    .line 103
    :cond_f
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public b()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 112
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_12

    .line 118
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 124
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->clearAnimation()V

    .line 125
    return-void

    .line 120
    :cond_12
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_e

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_e
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 135
    return-void
.end method
