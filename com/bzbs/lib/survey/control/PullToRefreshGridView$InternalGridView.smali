.class Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;
.super Landroid/widget/GridView;
.source "PullToRefreshGridView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;->a:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;

    .line 71
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;->a:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView;->a(Landroid/view/View;)V

    .line 77
    return-void
.end method
