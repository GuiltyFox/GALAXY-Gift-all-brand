.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 51
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper;->a(Landroid/content/res/Resources;)I

    move-result v0

    const/16 v1, 0x140

    if-lt v0, v1, :cond_25

    const/4 v0, 0x1

    .line 53
    :goto_13
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void

    .line 51
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isStacked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 4

    .prologue
    .line 122
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 123
    if-eqz p1, :cond_2f

    const/4 v0, 0x5

    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 124
    sget v0, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_1b

    .line 126
    if-eqz p1, :cond_32

    const/16 v0, 0x8

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 131
    add-int/lit8 v0, v0, -0x2

    :goto_21
    if-ltz v0, :cond_34

    .line 132
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 122
    :cond_2d
    const/4 v0, 0x0

    goto :goto_3

    .line 123
    :cond_2f
    const/16 v0, 0x50

    goto :goto_9

    .line 126
    :cond_32
    const/4 v0, 0x4

    goto :goto_18

    .line 134
    :cond_34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 72
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_19

    .line 73
    iget v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v5, v0, :cond_17

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 77
    :cond_17
    iput v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 84
    :cond_19
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_59

    .line 85
    const/high16 v0, -0x80000000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v2

    .line 91
    :goto_2e
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_53

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-nez v0, :cond_53

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_5c

    .line 97
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->i(Landroid/view/View;)I

    move-result v0

    .line 98
    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 99
    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_4d

    move v3, v2

    .line 110
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_53

    .line 111
    invoke-direct {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    move v1, v2

    .line 116
    :cond_53
    if-eqz v1, :cond_58

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 119
    :cond_58
    return-void

    :cond_59
    move v0, p1

    move v1, v3

    .line 89
    goto :goto_2e

    .line 104
    :cond_5c
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v6

    move v0, v3

    move v4, v3

    :goto_62
    if-ge v0, v6, :cond_70

    .line 105
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 107
    :cond_70
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v0, v4

    if-le v0, v5, :cond_4d

    move v3, v2

    goto :goto_4d
.end method

.method public setAllowStacking(Z)V
    .registers 4

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 61
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 62
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 65
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 67
    :cond_18
    return-void
.end method
