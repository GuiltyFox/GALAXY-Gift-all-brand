.class public Landroid/support/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;

.field private mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 686
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 689
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 690
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 691
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    .line 692
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    .line 694
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 695
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;F)V

    .line 698
    :cond_2e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 700
    invoke-virtual {p0, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 705
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/R$layout;->design_layout_snackbar_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 707
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;I)V

    .line 709
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 713
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 714
    new-instance v0, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;-><init>(Landroid/support/design/widget/Snackbar$SnackbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 725
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .registers 5

    .prologue
    .line 850
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 852
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v0

    .line 853
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->l(Landroid/view/View;)I

    move-result v1

    .line 851
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;IIII)V

    .line 858
    :goto_11
    return-void

    .line 855
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 856
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 855
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_11
.end method

.method private updateViewsWithinLayout(III)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 836
    const/4 v0, 0x0

    .line 837
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_c

    .line 838
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    move v0, v1

    .line 841
    :cond_c
    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1c

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 842
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_22

    .line 843
    :cond_1c
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    move v0, v1

    .line 846
    :cond_22
    return v0
.end method


# virtual methods
.method animateChildrenIn(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 778
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 779
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    .line 781
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 782
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 783
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 784
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    .line 786
    :cond_43
    return-void
.end method

.method animateChildrenOut(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 790
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 791
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    .line 793
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 794
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 795
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    .line 796
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c()V

    .line 798
    :cond_43
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 810
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 811
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_c

    .line 812
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 815
    :cond_c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->v(Landroid/view/View;)V

    .line 816
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 820
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 821
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    if-eqz v0, :cond_c

    .line 822
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 824
    :cond_c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 729
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 730
    sget v0, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    .line 731
    sget v0, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 732
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .prologue
    .line 802
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 803
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_11

    .line 804
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 806
    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 744
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 746
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    if-le v0, v1, :cond_1c

    .line 747
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 748
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 751
    :cond_1c
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 753
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 755
    iget-object v4, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_5c

    move v4, v2

    .line 758
    :goto_3d
    if-eqz v4, :cond_5e

    iget v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-lez v5, :cond_5e

    iget-object v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mActionView:Landroid/widget/Button;

    .line 759
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mMaxInlineActionWidth:I

    if-le v5, v6, :cond_5e

    .line 760
    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v2

    .line 771
    :goto_56
    if-eqz v0, :cond_5b

    .line 772
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 774
    :cond_5b
    return-void

    :cond_5c
    move v4, v3

    .line 755
    goto :goto_3d

    .line 765
    :cond_5e
    if-eqz v4, :cond_68

    .line 766
    :goto_60
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v2

    .line 767
    goto :goto_56

    :cond_68
    move v0, v1

    .line 765
    goto :goto_60

    :cond_6a
    move v0, v3

    goto :goto_56
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V
    .registers 2

    .prologue
    .line 831
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnAttachStateChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;

    .line 832
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V
    .registers 2

    .prologue
    .line 827
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->mOnLayoutChangeListener:Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;

    .line 828
    return-void
.end method
