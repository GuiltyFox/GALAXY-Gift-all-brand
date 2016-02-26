.class Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 804
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2b

    .line 805
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 807
    :cond_2b
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    if-eqz v0, :cond_48

    .line 808
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gViewHolder:Lcom/samsung/privilege/holder/DashboardNewHolder;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$4(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/samsung/privilege/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/holder/DashboardNewHolder;->listDashboard:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 811
    :cond_48
    return-void
.end method
