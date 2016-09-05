.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1141
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 1144
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1146
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1148
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1151
    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1207
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_15

    .line 1208
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1210
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1167
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1169
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_2e

    .line 1172
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    .line 1173
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    .line 1174
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    # getter for: Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->access$1000(Landroid/support/design/widget/AppBarLayout$Behavior;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1179
    :cond_2e
    return-void
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1215
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_17

    .line 1216
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1217
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_13

    .line 1221
    :goto_12
    return-object v0

    .line 1215
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1221
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1184
    instance-of v1, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_19

    .line 1185
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1186
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    .line 1187
    # invokes: Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    .line 1188
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    .line 1190
    if-eqz v2, :cond_1a

    add-int v4, v1, v3

    if-gt v4, v2, :cond_1a

    .line 1201
    :cond_19
    :goto_19
    return v0

    .line 1194
    :cond_1a
    sub-int/2addr v1, v2

    .line 1195
    if-eqz v1, :cond_19

    .line 1197
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_19
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1226
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_b

    .line 1227
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1229
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1156
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 1162
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1163
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 1139
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 8

    .prologue
    .line 1139
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 3

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 3

    .prologue
    .line 1139
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
