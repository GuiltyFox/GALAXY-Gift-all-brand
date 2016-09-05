.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 500
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V
    .registers 3

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z

    .line 507
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->g(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 508
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnItemClickListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->g(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 509
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 511
    :cond_1b
    return-void
.end method
