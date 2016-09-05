.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .registers 2

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .registers 3

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # setter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I
    invoke-static {v0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    .line 1112
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->b()I

    move-result v0

    move v1, v0

    .line 1113
    :goto_19
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    .line 1115
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    move v3, v2

    :goto_24
    if-ge v3, v5, :cond_61

    .line 1116
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1117
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1118
    # invokes: Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    invoke-static {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v7

    .line 1120
    iget v8, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_c8

    .line 1115
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_24

    :cond_3f
    move v1, v2

    .line 1112
    goto :goto_19

    .line 1122
    :pswitch_41
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lt v0, v6, :cond_3b

    .line 1123
    neg-int v0, p2

    invoke-virtual {v7, v0}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3b

    .line 1127
    :pswitch_54
    neg-int v6, p2

    int-to-float v6, v6

    iget v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3b

    .line 1134
    :cond_61
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_71

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 1135
    :cond_71
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v5

    add-int/2addr v5, v1

    if-ge v3, v5, :cond_84

    const/4 v2, 0x1

    :cond_84
    invoke-virtual {v0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1138
    :cond_87
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_96

    if-lez v1, :cond_96

    .line 1139
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1143
    :cond_96
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 1145
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;
    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$800(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1148
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v4, :cond_c3

    .line 1151
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    .line 1156
    :goto_c2
    return-void

    .line 1154
    :cond_c3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;F)V

    goto :goto_c2

    .line 1120
    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_41
        :pswitch_54
    .end packed-switch
.end method
