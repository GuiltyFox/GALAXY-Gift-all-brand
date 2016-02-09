.class Lic/buzzebeeslib/activity/DashboardFragmentNew$4;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;->InitialDashboardItemBig(Lic/buzzebeeslib/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

.field private final synthetic val$dashboardItem:Lic/buzzebeeslib/bean/DashboardItem;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;->val$dashboardItem:Lic/buzzebeeslib/bean/DashboardItem;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 784
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$4;->val$dashboardItem:Lic/buzzebeeslib/bean/DashboardItem;

    # invokes: Lic/buzzebeeslib/activity/DashboardFragmentNew;->handleDashboardItem(Lic/buzzebeeslib/bean/DashboardItem;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$5(Lic/buzzebeeslib/activity/DashboardFragmentNew;Lic/buzzebeeslib/bean/DashboardItem;)V

    .line 785
    return-void
.end method
