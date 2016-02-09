.class public Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetDashboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 639
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)Lic/buzzebeeslib/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 681
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->onSuccess(ILjava/lang/String;)V

    .line 682
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v1, "lib.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(GetDashboardListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_77

    .line 645
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_69

    .line 646
    const-string v1, "bzbs_dashboard_items_402705486466922"

    iget-object v2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "catch_dashboard_items":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 649
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;

    invoke-direct {v2, p0, p2}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$1;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 655
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 656
    const-string v1, "bzbs_dashboard_items_402705486466922"

    iget-object v2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 663
    .end local v0    # "catch_dashboard_items":Ljava/lang/String;
    :cond_69
    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener$2;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$GetDashboardListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    :cond_77
    return-void
.end method
