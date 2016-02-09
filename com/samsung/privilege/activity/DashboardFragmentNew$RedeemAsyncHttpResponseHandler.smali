.class Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedeemAsyncHttpResponseHandler"
.end annotation


# instance fields
.field private gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

.field private gIsGotoWebsite:Z

.field private gIsShowSerial:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;ZZ)V
    .registers 6
    .param p2, "objDashboardItem"    # Lcom/samsung/privilege/bean/DashboardItem;
    .param p3, "isShowSerial"    # Z
    .param p4, "isGotoWebsite"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2422
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 2419
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 2420
    iput-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 2423
    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    .line 2424
    iput-boolean p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    .line 2425
    iput-boolean p4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z

    .line 2426
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Z
    .registers 2

    .prologue
    .line 2419
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/DashboardItem;
    .registers 2

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 2553
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 2554
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 2559
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 2431
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 2435
    const-string v1, "gift.dashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(RedeemListener|onComplete)response={"

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

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_27

    .line 2549
    :goto_26
    return-void

    .line 2441
    :cond_27
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 2442
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2443
    .local v0, "date":Ljava/util/Date;
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_af

    .line 2444
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=green>REDEEM_RS{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    iget v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    iget-object v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2452
    .end local v0    # "date":Ljava/util/Date;
    :cond_90
    :goto_90
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2541
    :try_start_9e
    sget-object v1, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v1, :cond_a7

    .line 2542
    sget-object v1, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_104

    .line 2548
    :cond_a7
    :goto_a7
    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$12(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V

    goto/16 :goto_26

    .line 2446
    .restart local v0    # "date":Ljava/util/Date;
    :cond_af
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=red>REDEEM_RS{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    iget v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->gDashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    iget-object v3, v3, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_90

    .line 2544
    .end local v0    # "date":Ljava/util/Date;
    :catch_104
    move-exception v1

    goto :goto_a7
.end method
