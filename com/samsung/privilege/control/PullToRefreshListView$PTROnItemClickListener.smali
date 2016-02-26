.class Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;)V
    .registers 3

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 526
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$11(Lcom/samsung/privilege/control/PullToRefreshListView;Z)V

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$12(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 529
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$12(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 530
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 532
    :cond_1b
    return-void
.end method
