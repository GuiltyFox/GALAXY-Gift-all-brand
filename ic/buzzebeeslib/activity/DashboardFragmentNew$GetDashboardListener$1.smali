.class Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;
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

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;->val$response_text:Ljava/lang/String;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;

    # getter for: Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;
    invoke-static {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/DashboardFragmentNew;->processJsonDashboard(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew;Ljava/lang/String;)V

    .line 652
    return-void
.end method
