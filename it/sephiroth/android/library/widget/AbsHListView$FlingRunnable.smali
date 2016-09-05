.class Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private final b:Lit/sephiroth/android/library/widget/OverScroller;

.field private c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 4

    .prologue
    .line 3712
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3685
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable$1;-><init>(Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->d:Ljava/lang/Runnable;

    .line 3713
    new-instance v0, Lit/sephiroth/android/library/widget/OverScroller;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    .line 3714
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;)Lit/sephiroth/android/library/widget/OverScroller;
    .registers 2

    .prologue
    .line 3673
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 3726
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/OverScroller;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3727
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3728
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3729
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    .line 3734
    :goto_24
    return-void

    .line 3731
    :cond_25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3732
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto :goto_24
.end method

.method a(I)V
    .registers 11

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 3717
    if-gez p1, :cond_26

    move v1, v6

    .line 3718
    :goto_7
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c:I

    .line 3719
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/OverScroller;->a(Landroid/view/animation/Interpolator;)V

    .line 3720
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/widget/OverScroller;->a(IIIIIIII)V

    .line 3721
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3722
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    .line 3723
    return-void

    :cond_26
    move v1, v2

    .line 3717
    goto :goto_7
.end method

.method a(IIZ)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 3766
    if-gez p1, :cond_26

    const v1, 0x7fffffff

    .line 3767
    :goto_6
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c:I

    .line 3768
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    if-eqz p3, :cond_28

    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;

    :goto_e
    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/OverScroller;->a(Landroid/view/animation/Interpolator;)V

    .line 3769
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/OverScroller;->a(IIIII)V

    .line 3770
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3771
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    .line 3772
    return-void

    :cond_26
    move v1, v2

    .line 3766
    goto :goto_6

    .line 3768
    :cond_28
    const/4 v0, 0x0

    goto :goto_e
.end method

.method b()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 3775
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, -0x1

    iput v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3777
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3778
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3780
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3781
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->k(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 3782
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller;->e()V

    .line 3784
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 3786
    return-void
.end method

.method b(I)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 3737
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/OverScroller;->a(Landroid/view/animation/Interpolator;)V

    .line 3738
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/widget/OverScroller;->a(IIIIIIIIII)V

    .line 3739
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3740
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3741
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    .line 3742
    return-void
.end method

.method c()V
    .registers 5

    .prologue
    .line 3789
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3790
    return-void
.end method

.method c(I)V
    .registers 6

    .prologue
    .line 3745
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/OverScroller;->a(III)V

    .line 3746
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 3747
    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(Lit/sephiroth/android/library/widget/AbsHListView;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 3748
    :cond_23
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3749
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller;->c()F

    move-result v0

    float-to-int v0, v0

    .line 3750
    if-lez p1, :cond_47

    .line 3751
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/EdgeEffect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(I)V

    .line 3761
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3762
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    .line 3763
    return-void

    .line 3753
    :cond_47
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/EdgeEffect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/EdgeEffect;->a(I)V

    goto :goto_3a

    .line 3756
    :cond_51
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3757
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    if-eqz v0, :cond_3a

    .line 3758
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$PositionScroller;->a()V

    goto :goto_3a
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 3794
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_174

    .line 3796
    :pswitch_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    .line 3905
    :cond_c
    :goto_c
    return-void

    .line 3800
    :pswitch_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3805
    :pswitch_15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v0, :cond_20

    .line 3806
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3809
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_32

    .line 3810
    :cond_2e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    goto :goto_c

    .line 3814
    :cond_32
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    .line 3815
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller;->d()Z

    move-result v12

    .line 3816
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/OverScroller;->b()I

    move-result v1

    .line 3820
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c:I

    sub-int/2addr v0, v1

    .line 3823
    if-lez v0, :cond_b9

    .line 3825
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iput v4, v3, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3826
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3827
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3830
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v10, v0

    .line 3844
    :goto_72
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3846
    if-eqz v3, :cond_170

    .line 3847
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 3851
    :goto_87
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v10, v10}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)Z

    move-result v4

    .line 3852
    if-eqz v4, :cond_f6

    if-eqz v10, :cond_f6

    .line 3853
    :goto_91
    if-eqz v11, :cond_f8

    .line 3854
    if-eqz v3, :cond_b2

    .line 3856
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v0, v1, v0

    sub-int v0, v10, v0

    neg-int v1, v0

    .line 3857
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v4, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 3859
    :cond_b2
    if-eqz v12, :cond_c

    .line 3860
    invoke-virtual {p0, v10}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c(I)V

    goto/16 :goto_c

    .line 3833
    :cond_b9
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 3834
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v5, v3

    iput v5, v4, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    .line 3836
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3837
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3840
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    goto/16 :goto_72

    :cond_f6
    move v11, v2

    .line 3852
    goto :goto_91

    .line 3865
    :cond_f8
    if-eqz v12, :cond_10e

    if-nez v11, :cond_10e

    .line 3866
    if-eqz v4, :cond_103

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3867
    :cond_103
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->c:I

    .line 3868
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 3870
    :cond_10e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    goto/16 :goto_c

    .line 3877
    :pswitch_113
    iget-object v10, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b:Lit/sephiroth/android/library/widget/OverScroller;

    .line 3878
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/OverScroller;->d()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 3879
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    .line 3880
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/OverScroller;->b()I

    move-result v12

    .line 3881
    sub-int v1, v12, v3

    .line 3882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v4, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 3883
    if-gtz v3, :cond_156

    if-lez v12, :cond_156

    move v0, v11

    .line 3884
    :goto_13d
    if-ltz v3, :cond_142

    if-gez v12, :cond_142

    move v2, v11

    .line 3885
    :cond_142
    if-nez v0, :cond_146

    if-eqz v2, :cond_158

    .line 3886
    :cond_146
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/OverScroller;->c()F

    move-result v0

    float-to-int v0, v0

    .line 3887
    if-eqz v2, :cond_14e

    neg-int v0, v0

    .line 3890
    :cond_14e
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/OverScroller;->e()V

    .line 3891
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a(I)V

    goto/16 :goto_c

    :cond_156
    move v0, v2

    .line 3883
    goto :goto_13d

    .line 3893
    :cond_158
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a()V

    goto/16 :goto_c

    .line 3896
    :cond_15d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3897
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 3900
    :cond_16b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$FlingRunnable;->b()V

    goto/16 :goto_c

    :cond_170
    move v0, v2

    goto/16 :goto_87

    .line 3794
    nop

    :pswitch_data_174
    .packed-switch 0x3
        :pswitch_d
        :pswitch_15
        :pswitch_9
        :pswitch_113
    .end packed-switch
.end method
