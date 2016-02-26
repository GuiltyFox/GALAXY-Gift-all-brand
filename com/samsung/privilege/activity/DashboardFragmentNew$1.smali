.class Lcom/samsung/privilege/activity/DashboardFragmentNew$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$1;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$8(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V

    .line 387
    return-void
.end method
