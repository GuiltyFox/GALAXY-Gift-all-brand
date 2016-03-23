.class final Lcom/ogaclejapan/smarttablayout/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnd(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static getEnd(Landroid/view/View;Z)I
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "withoutPadding"    # Z

    .prologue
    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_3
    return v0

    .line 57
    :cond_4
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_3

    .line 60
    :cond_1b
    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3
.end method

.method static getMarginEnd(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v1, 0x0

    .line 98
    :goto_3
    return v1

    .line 97
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    goto :goto_3
.end method

.method static getMarginHorizontally(Landroid/view/View;)I
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v1, 0x0

    .line 106
    :goto_3
    return v1

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method static getMarginStart(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v1, 0x0

    .line 90
    :goto_3
    return v1

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    goto :goto_3
.end method

.method static getMeasuredWidth(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 27
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_3
.end method

.method static getPaddingEnd(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    goto :goto_3
.end method

.method static getPaddingHorizontally(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method static getPaddingStart(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    goto :goto_3
.end method

.method static getStart(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static getStart(Landroid/view/View;Z)I
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "withoutPadding"    # Z

    .prologue
    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    .line 45
    :goto_3
    return v0

    .line 42
    :cond_4
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 43
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    .line 45
    :cond_1b
    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_3
.end method

.method static getWidth(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 31
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3
.end method

.method static isLayoutRtl(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
