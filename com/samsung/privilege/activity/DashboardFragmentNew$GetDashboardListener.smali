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
    .line 753
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    .line 754
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    .line 755
    iput-wide p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gStartTime:J

    .line 756
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 818
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 819
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->onSuccess(ILjava/lang/String;)V

    .line 820
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 19
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 760
    const-string v2, "gift.dashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "(GetDashboardListener|onComplete)response={"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "}:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :try_start_22
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 764
    .local v12, "endTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gStartTime:J

    sub-long v4, v12, v2

    .line 765
    .local v4, "spentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "load"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "Dashboard:"

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_57} :catch_1c8

    .line 770
    .end local v4    # "spentTime":J
    .end local v12    # "endTime":J
    :goto_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_192

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_192

    .line 771
    const/16 v2, 0xc8

    move/from16 v0, p1

    if-ne v0, v2, :cond_193

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dashboard_key_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 774
    .local v9, "catch_dashboard_items":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->gForceUpdate:Z

    if-eqz v2, :cond_e8

    .line 775
    :cond_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 781
    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dashboard_key_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->getDashboardKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 786
    :cond_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 787
    .local v8, "arguments":Landroid/os/Bundle;
    const-string v2, "category_code"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 788
    .local v10, "categoryCode":Ljava/lang/String;
    sget v2, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&format=json&type=list2&sponsorId=-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sortby=cat&type=dashboard&cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&device_app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 790
    .local v14, "url":Ljava/lang/String;
    const-string v2, "gift.dashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "premium_load= "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {v3, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    invoke-static {v14, v2, v3}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 801
    .end local v8    # "arguments":Landroid/os/Bundle;
    .end local v9    # "catch_dashboard_items":Ljava/lang/String;
    .end local v10    # "categoryCode":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_180
    :goto_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener$2;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 814
    :cond_192
    return-void

    .line 794
    :cond_193
    const-string v11, "Error while load dashboard..."

    .line 795
    .local v11, "err_message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 798
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetDashboardListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v2, v11}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->showToast(Ljava/lang/String;)V

    goto :goto_180

    .line 766
    .end local v11    # "err_message":Ljava/lang/String;
    :catch_1c8
    move-exception v2

    goto/16 :goto_57
.end method
