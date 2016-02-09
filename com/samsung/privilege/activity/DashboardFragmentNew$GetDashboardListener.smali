.class public Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetDashboardListener"
.end annotation


# instance fields
.field private gForceUpdate:Z

.field private gStartTime:J

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;ZJ)V
    .registers 6
    .param p2, "forceUpdate"    # Z
    .param p3, "startTime"    # J

    .prologue
    .line 747
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    .line 748
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    .line 749
    iput-wide p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gStartTime:J

    .line 750
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 812
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 813
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->onSuccess(ILjava/lang/String;)V

    .line 814
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 18
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 754
    const-string v1, "gift.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "(GetDashboardListener|onComplete)response={"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "}:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :try_start_22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 758
    .local v10, "endTime":J
    iget-wide v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gStartTime:J

    sub-long v3, v10, v1

    .line 759
    .local v3, "spentTime":J
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "load"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Dashboard:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_51} :catch_19e

    .line 764
    .end local v3    # "spentTime":J
    .end local v10    # "endTime":J
    :goto_51
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_16c

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 765
    const/16 v1, 0xc8

    move/from16 v0, p1

    if-ne v0, v1, :cond_16d

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dashboard_key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 768
    .local v8, "catch_dashboard_items":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    if-eqz v1, :cond_d0

    .line 769
    :cond_96
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$1;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 775
    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dashboard_key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 780
    :cond_d0
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 781
    .local v7, "arguments":Landroid/os/Bundle;
    const-string v1, "category_code"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 782
    .local v9, "categoryCode":Ljava/lang/String;
    sget v1, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json&type=list2&sponsorId=-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sortby=cat&type=dashboard&cat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&device_app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 784
    .local v13, "url":Ljava/lang/String;
    const-string v1, "gift.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "premium_load= "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {v2, v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-static {v13, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 795
    .end local v7    # "arguments":Landroid/os/Bundle;
    .end local v8    # "catch_dashboard_items":Ljava/lang/String;
    .end local v9    # "categoryCode":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_15e
    :goto_15e
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 808
    :cond_16c
    return-void

    .line 788
    :cond_16d
    const-string v12, "Error while load dashboard..."

    .line 789
    .local v12, "err_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 792
    :cond_198
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1, v12}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_15e

    .line 760
    .end local v12    # "err_message":Ljava/lang/String;
    :catch_19e
    move-exception v1

    goto/16 :goto_51
.end method
