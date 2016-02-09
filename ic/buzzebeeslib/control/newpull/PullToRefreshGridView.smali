.class public Lic/buzzebeeslib/control/newpull/PullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridView;,
        Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase",
        "<",
        "Lic/buzzebeeslib/control/HeaderGridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    .local p3, "style":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lic/buzzebeeslib/control/HeaderGridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Lic/buzzebeeslib/control/HeaderGridView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    .line 58
    new-instance v0, Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lic/buzzebeeslib/control/newpull/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    .local v0, "gv":Lic/buzzebeeslib/control/HeaderGridView;
    :goto_b
    sget v1, Lic/buzzebeeslib/R$id;->gridview:I

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/HeaderGridView;->setId(I)V

    .line 65
    return-object v0

    .line 60
    .end local v0    # "gv":Lic/buzzebeeslib/control/HeaderGridView;
    :cond_11
    new-instance v0, Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshGridView$InternalGridView;-><init>(Lic/buzzebeeslib/control/newpull/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Lic/buzzebeeslib/control/HeaderGridView;
    goto :goto_b
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method
