.class public Lcom/bzbs/lib/survey/control/PullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .registers 5

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    .line 58
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    :goto_b
    sget v1, Lcom/bzbs/lib/survey/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 65
    return-object v0

    .line 60
    :cond_11
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_b
.end method

.method public final a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method
