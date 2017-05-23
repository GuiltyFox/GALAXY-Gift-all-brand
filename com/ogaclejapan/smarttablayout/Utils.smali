.class final Lcom/ogaclejapan/smarttablayout/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Landroid/view/View;)I
    .registers 2

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

.method static a(Landroid/view/View;Z)I
    .registers 4

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
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 43
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->e(Landroid/view/View;)I

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

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_3
.end method

.method static b(Landroid/view/View;)I
    .registers 2

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

.method static b(Landroid/view/View;Z)I
    .registers 4

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
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->f(Landroid/view/View;)I

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

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->f(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3
.end method

.method static c(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->a(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->b(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static e(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v0

    goto :goto_3
.end method

.method static f(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->l(Landroid/view/View;)I

    move-result v0

    goto :goto_3
.end method

.method static g(Landroid/view/View;)I
    .registers 3

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

.method static h(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_3
    return v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    goto :goto_3
.end method

.method static i(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_3
    return v0

    .line 97
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    goto :goto_3
.end method

.method static j(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v0, 0x0

    .line 106
    :goto_3
    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method static k(Landroid/view/View;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
