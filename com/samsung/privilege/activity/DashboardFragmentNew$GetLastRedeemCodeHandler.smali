.class Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastRedeemCodeHandler"
.end annotation


# instance fields
.field private gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

.field private gErrorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;Ljava/lang/String;)V
    .registers 4
    .param p2, "dashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "error_message"    # Ljava/lang/String;

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 2637
    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    .line 2638
    iput-object p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gErrorMessage:Ljava/lang/String;

    .line 2639
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/bean/DashboardItem;
    .registers 2

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->gErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 2707
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->onSuccess(ILjava/lang/String;)V

    .line 2708
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 2713
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 2644
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 2648
    const-string v0, "gift.dashboard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(GetLastRedeemCodeHandler|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_27

    .line 2703
    :goto_26
    return-void

    .line 2654
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2656
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetLastRedeemCodeHandler;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_26
.end method
