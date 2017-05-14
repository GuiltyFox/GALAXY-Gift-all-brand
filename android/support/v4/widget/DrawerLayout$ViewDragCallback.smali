.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:I

.field private c:Landroid/support/v4/widget/ViewDragHelper;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .registers 4

    .prologue
    .line 2067
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 2061
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    .line 2068
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b:I

    .line 2069
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .registers 1

    .prologue
    .line 2057
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 2118
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b:I

    if-ne v1, v0, :cond_6

    const/4 v0, 0x5

    .line 2119
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2120
    if-eqz v0, :cond_13

    .line 2121
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 2123
    :cond_13
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2152
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->b()I

    move-result v2

    .line 2153
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b:I

    if-ne v1, v5, :cond_5a

    move v3, v4

    .line 2154
    :goto_e
    if-eqz v3, :cond_5c

    .line 2155
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v1

    .line 2156
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_1d
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    .line 2162
    :goto_20
    if-eqz v2, :cond_59

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_32

    :cond_2a
    if-nez v3, :cond_59

    .line 2163
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_59

    :cond_32
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 2164
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_59

    .line 2165
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2166
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;II)Z

    .line 2167
    invoke-static {v0, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    .line 2168
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2170
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b()V

    .line 2172
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->c()V

    .line 2174
    :cond_59
    return-void

    :cond_5a
    move v3, v0

    .line 2153
    goto :goto_e

    .line 2158
    :cond_5c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v1

    .line 2159
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_20
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 2076
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2077
    return-void
.end method

.method public a(Landroid/support/v4/widget/ViewDragHelper;)V
    .registers 2

    .prologue
    .line 2072
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    .line 2073
    return-void
.end method

.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    .prologue
    .line 2209
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2213
    :goto_17
    return v0

    .line 2212
    :cond_18
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2213
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_17
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 2219
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 2204
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    .prologue
    .line 2191
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 2192
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2197
    :goto_c
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1b

    .line 2198
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->a(Landroid/view/View;I)V

    .line 2200
    :cond_1b
    return-void

    .line 2194
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method

.method public onEdgeLock(I)Z
    .registers 3

    .prologue
    .line 2185
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 7

    .prologue
    .line 2146
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2147
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 2111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2112
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    .line 2114
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b()V

    .line 2115
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5

    .prologue
    .line 2089
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 2090
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 9

    .prologue
    .line 2095
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2098
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2099
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 2104
    :goto_13
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 2105
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_33

    const/4 v0, 0x4

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2106
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2107
    return-void

    .line 2101
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 2102
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_13

    .line 2105
    :cond_33
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 2129
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)F

    move-result v1

    .line 2130
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2133
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2134
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_22

    cmpl-float v0, p2, v4

    if-nez v0, :cond_32

    cmpl-float v0, v1, v5

    if-lez v0, :cond_32

    :cond_22
    const/4 v0, 0x0

    .line 2140
    :cond_23
    :goto_23
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->c:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->a(II)Z

    .line 2141
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2142
    return-void

    .line 2134
    :cond_32
    neg-int v0, v2

    goto :goto_23

    .line 2136
    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2137
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_46

    cmpl-float v3, p2, v4

    if-nez v3, :cond_23

    cmpl-float v1, v1, v5

    if-lez v1, :cond_23

    :cond_46
    sub-int/2addr v0, v2

    goto :goto_23
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 2083
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 2084
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
