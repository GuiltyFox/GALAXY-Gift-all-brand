.class Lic/buzzebeeslib/control/PullToRefreshGridView$InternalGridView;
.super Landroid/widget/GridView;
.source "PullToRefreshGridView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshGridView$InternalGridView;->this$0:Lic/buzzebeeslib/control/PullToRefreshGridView;

    .line 71
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .registers 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshGridView$InternalGridView;->this$0:Lic/buzzebeeslib/control/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .registers 2
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 82
    return-void
.end method
