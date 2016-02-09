.class public Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;
.super Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.source "PullToRefreshScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView$InternalScrollViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    .local p3, "style":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    .line 57
    new-instance v0, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView$InternalScrollViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView$InternalScrollViewSDK9;-><init>(Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .local v0, "scrollView":Landroid/widget/ScrollView;
    :goto_b
    sget v1, Lic/buzzebeeslib/R$id;->scrollview:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V

    .line 63
    return-object v0

    .line 59
    .end local v0    # "scrollView":Landroid/widget/ScrollView;
    :cond_11
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "scrollView":Landroid/widget/ScrollView;
    goto :goto_b
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "scrollViewChild":Landroid/view/View;
    if-eqz v0, :cond_22

    .line 75
    iget-object v1, p0, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_20

    const/4 v1, 0x1

    .line 77
    :goto_1f
    return v1

    :cond_20
    move v1, v2

    .line 75
    goto :goto_1f

    :cond_22
    move v1, v2

    .line 77
    goto :goto_1f
.end method

.method protected isReadyForPullStart()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lic/buzzebeeslib/control/pullrefresh/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
