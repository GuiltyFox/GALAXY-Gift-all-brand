.class Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 665
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 666
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2b

    .line 667
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->pbLoadingDashboard:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 669
    :cond_2b
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    if-eqz v0, :cond_48

    .line 670
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew;->gViewHolder:Lic/buzzebeeslib/holder/DashboardNewHolder;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$1(Lic/buzzebeeslib/activity/DashboardFragmentNew;)Lic/buzzebeeslib/holder/DashboardNewHolder;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/holder/DashboardNewHolder;->listDashboard:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 673
    :cond_48
    return-void
.end method
