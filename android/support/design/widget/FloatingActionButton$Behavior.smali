.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BEHAVIOR_ENABLED:Z


# instance fields
.field private mFabTranslationY:F

.field private mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F
    .registers 9

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 550
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_31

    .line 551
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    instance-of v5, v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_32

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 553
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 550
    :goto_2c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 558
    :cond_31
    return v1

    :cond_32
    move v0, v1

    goto :goto_2c
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 586
    # getter for: Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;
    invoke-static {p2}, Landroid/support/design/widget/FloatingActionButton;->access$200(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v3

    .line 588
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_3d

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_3d

    .line 589
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 594
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_3e

    .line 596
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 601
    :goto_28
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4a

    .line 603
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 609
    :cond_37
    :goto_37
    invoke-virtual {p2, v2}, Landroid/support/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 610
    invoke-virtual {p2, v1}, Landroid/support/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 612
    :cond_3d
    return-void

    .line 597
    :cond_3e
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v1, v4, :cond_56

    .line 599
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_28

    .line 604
    :cond_4a
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v0, :cond_37

    .line 606
    iget v0, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v0

    goto :goto_37

    :cond_56
    move v1, v2

    goto :goto_28
.end method

.method private updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .registers 9

    .prologue
    .line 506
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F

    move-result v0

    .line 507
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_b

    .line 544
    :goto_a
    return-void

    .line 512
    :cond_b
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->o(Landroid/view/View;)F

    move-result v1

    .line 515
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 516
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 519
    :cond_20
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->isShown()Z

    move-result v2

    if-eqz v2, :cond_61

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f2ac083    # 0.667f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_61

    .line 523
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_54

    .line 524
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 525
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 527
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/FloatingActionButton$Behavior$1;

    invoke-direct {v3, p0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior$1;-><init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 536
    :cond_54
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 537
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 543
    :goto_5e
    iput v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    goto :goto_a

    .line 540
    :cond_61
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    goto :goto_5e
.end method

.method private updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 475
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getId()I

    move-result v2

    if-eq v0, v2, :cond_14

    move v0, v1

    .line 501
    :goto_13
    return v0

    .line 481
    :cond_14
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 483
    goto :goto_13

    .line 486
    :cond_1c
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_27

    .line 487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 491
    :cond_27
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 492
    invoke-static {p1, p2, v0}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 494
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v2

    if-gt v0, v2, :cond_39

    .line 496
    # invokes: Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    invoke-static {p3, v3, v1}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    .line 501
    :goto_37
    const/4 v0, 0x1

    goto :goto_13

    .line 499
    :cond_39
    # invokes: Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    invoke-static {p3, v3, v1}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_37
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 455
    sget-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    if-eqz v0, :cond_a

    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 461
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_9

    .line 462
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    .line 468
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_9
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_7

    .line 466
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_7
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .registers 9

    .prologue
    .line 565
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 566
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_1e

    .line 567
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 568
    instance-of v4, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_26

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 574
    :cond_1e
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 576
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 577
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 442
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method
