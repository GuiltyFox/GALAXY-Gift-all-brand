.class Lic/buzzebeeslib/activity/DashboardFragmentNew$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Lic/buzzebeeslib/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$1;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$1;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    # invokes: Lic/buzzebeeslib/activity/DashboardFragmentNew;->loadDashboard()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$4(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V

    .line 195
    return-void
.end method
