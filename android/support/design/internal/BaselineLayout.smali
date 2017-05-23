.class public Landroid/support/design/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private mBaseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 44
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 17

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v3

    .line 86
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingLeft()I

    move-result v4

    .line 87
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 88
    sub-int v5, v0, v4

    .line 89
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingTop()I

    move-result v1

    .line 91
    const/4 v0, 0x0

    move v2, v0

    :goto_17
    if-ge v2, v3, :cond_53

    .line 92
    invoke-virtual {p0, v2}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_29

    .line 91
    :goto_25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    .line 97
    :cond_29
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 100
    sub-int v0, v5, v7

    div-int/lit8 v0, v0, 0x2

    add-int v9, v4, v0

    .line 102
    iget v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_51

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_51

    .line 103
    iget v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    add-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v10

    sub-int/2addr v0, v10

    .line 108
    :goto_4b
    add-int/2addr v7, v9

    add-int/2addr v8, v0

    invoke-virtual {v6, v9, v0, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_25

    :cond_51
    move v0, v1

    .line 105
    goto :goto_4b

    .line 110
    :cond_53
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 47
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v7

    move v5, v0

    move v2, v0

    move v1, v6

    move v3, v0

    move v4, v0

    move v0, v6

    .line 54
    :goto_c
    if-ge v5, v7, :cond_59

    .line 55
    invoke-virtual {p0, v5}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 56
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_25

    move v11, v2

    move v2, v1

    move v1, v0

    move v0, v11

    .line 54
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    goto :goto_c

    .line 60
    :cond_25
    invoke-virtual {p0, v8, p1, p2}, Landroid/support/design/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 62
    if-eq v9, v6, :cond_3c

    .line 63
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int v9, v10, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    :cond_3c
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 69
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->j(Landroid/view/View;)I

    move-result v8

    .line 68
    invoke-static {v2, v8}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v2

    move v11, v2

    move v2, v1

    move v1, v0

    move v0, v11

    goto :goto_1e

    .line 71
    :cond_59
    if-eq v1, v6, :cond_62

    .line 72
    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 73
    iput v1, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 75
    :cond_62
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 78
    invoke-static {v1, p1, v2}, Landroid/support/v4/view/ViewCompat;->a(III)I

    move-result v1

    shl-int/lit8 v2, v2, 0x10

    .line 79
    invoke-static {v0, p2, v2}, Landroid/support/v4/view/ViewCompat;->a(III)I

    move-result v0

    .line 77
    invoke-virtual {p0, v1, v0}, Landroid/support/design/internal/BaselineLayout;->setMeasuredDimension(II)V

    .line 81
    return-void
.end method
