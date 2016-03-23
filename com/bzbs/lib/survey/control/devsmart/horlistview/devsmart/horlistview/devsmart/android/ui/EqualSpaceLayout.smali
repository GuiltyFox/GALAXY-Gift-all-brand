.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;
.super Landroid/view/ViewGroup;
.source "EqualSpaceLayout.java"


# instance fields
.field private mMaxChildHeight:I

.field private mMaxChildWidth:I

.field private mNumVisibleChildren:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    .line 20
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->initDefaults()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    .line 25
    invoke-direct {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->initDefaults()V

    .line 28
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3e

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 34
    .local v2, "layoutwidth":I
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 35
    .local v1, "layoutheight":I
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    new-array v3, v6, [I

    const v4, 0x10100c4

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void

    .line 28
    nop

    :array_3e
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method private initDefaults()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 47
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->getChildCount()I

    move-result v1

    .line 116
    .local v1, "count":I
    const/4 v3, 0x0

    .line 117
    .local v3, "spacing":I
    iget v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-nez v4, :cond_2c

    .line 118
    sub-int v4, p4, p2

    iget v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    div-int v3, v4, v5

    .line 124
    :cond_14
    :goto_14
    neg-int v4, v3

    div-int/lit8 p2, v4, 0x2

    .line 125
    neg-int v4, v3

    div-int/lit8 p3, v4, 0x2

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_62

    .line 128
    invoke-virtual {p0, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3a

    .line 127
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 119
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_2c
    iget v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-ne v4, v7, :cond_14

    .line 120
    sub-int v4, p5, p3

    iget v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    div-int v3, v4, v5

    goto :goto_14

    .line 133
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_3a
    iget v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-nez v4, :cond_4e

    .line 134
    add-int/2addr p2, v3

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int p4, p2, v4

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, p2, v6, p4, v4}, Landroid/view/View;->layout(IIII)V

    .line 137
    move p2, p4

    goto :goto_29

    .line 138
    :cond_4e
    iget v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-ne v4, v7, :cond_29

    .line 139
    add-int/2addr p3, v3

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int p5, p3, v4

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0, v6, p3, v4, p5}, Landroid/view/View;->layout(IIII)V

    .line 142
    move p3, p5

    goto :goto_29

    .line 146
    .end local v0    # "child":Landroid/view/View;
    :cond_62
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->getChildCount()I

    move-result v3

    .line 62
    .local v3, "count":I
    const/4 v9, 0x0

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    .line 63
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v3, :cond_1f

    .line 64
    invoke-virtual {p0, v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1c

    .line 66
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    .line 63
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 70
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    if-nez v9, :cond_24

    .line 107
    :goto_23
    return-void

    .line 74
    :cond_24
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-nez v9, :cond_69

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v10, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    div-int v7, v9, v10

    .line 75
    .local v7, "maxChildWidth":I
    :goto_30
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6e

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget v10, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mNumVisibleChildren:I

    div-int v6, v9, v10

    .line 78
    .local v6, "maxChildHeight":I
    :goto_3d
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v10, -0x80000000

    .line 77
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 80
    .local v2, "childWidthMeasureSpec":I
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v10, -0x80000000

    .line 79
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 82
    .local v1, "childHeightMeasureSpec":I
    const/4 v9, 0x0

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    .line 83
    const/4 v9, 0x0

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    .line 85
    const/4 v5, 0x0

    :goto_58
    if-ge v5, v3, :cond_ac

    .line 86
    invoke-virtual {p0, v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_73

    .line 85
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 74
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v6    # "maxChildHeight":I
    .end local v7    # "maxChildWidth":I
    :cond_69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    goto :goto_30

    .line 75
    .restart local v7    # "maxChildWidth":I
    :cond_6e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    goto :goto_3d

    .line 91
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v6    # "maxChildHeight":I
    :cond_73
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 92
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    if-nez v9, :cond_92

    .line 93
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    .line 97
    :goto_83
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9f

    .line 98
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    goto :goto_66

    .line 95
    :cond_92
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    goto :goto_83

    .line 100
    :cond_9f
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    goto :goto_66

    .line 104
    .end local v0    # "child":Landroid/view/View;
    :cond_ac
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildWidth:I

    invoke-static {v9, p1}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->resolveSize(II)I

    move-result v8

    .line 105
    .local v8, "width":I
    iget v9, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mMaxChildHeight:I

    invoke-static {v9, p2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->resolveSize(II)I

    move-result v4

    .line 106
    .local v4, "height":I
    invoke-virtual {p0, v8, v4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->setMeasuredDimension(II)V

    goto/16 :goto_23
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orient"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/EqualSpaceLayout;->mOrientation:I

    .line 55
    return-void
.end method
