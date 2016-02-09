.class public Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPremiumListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 817
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 848
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 849
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->onSuccess(ILjava/lang/String;)V

    .line 850
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 820
    const-string v2, "gift.dashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetPremiumListener|onComplete)response={"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_69

    .line 822
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_6a

    .line 823
    const-string v2, "dashboard_premium"

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "catch_premium":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 826
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 832
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 833
    const-string v2, "dashboard_premium"

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 844
    .end local v0    # "catch_premium":Ljava/lang/String;
    :cond_69
    :goto_69
    return-void

    .line 837
    :cond_6a
    const-string v1, "Error while load premium..."

    .line 838
    .local v1, "err_message":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    :cond_93
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_69
.end method
