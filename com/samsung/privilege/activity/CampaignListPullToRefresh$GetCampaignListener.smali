.class public Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignListPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gIsFirstLoad:Z

.field private gStartTime:J

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;J)V
    .registers 8
    .param p2, "is_first_load"    # Z
    .param p3, "cache_name"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .prologue
    .line 653
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gIsFirstLoad:Z

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    .line 654
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gIsFirstLoad:Z

    .line 655
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    .line 656
    iput-wide p4, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gStartTime:J

    .line 657
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 661
    const-string v0, "buzzebees.marketlist.fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "response_code="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",response_text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :try_start_1f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 665
    .local v6, "endTime":J
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gStartTime:J

    sub-long v2, v6, v0

    .line 666
    .local v2, "spentTime":J
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "list_gift"

    const-string v4, "load"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_52} :catch_f0

    .line 671
    .end local v2    # "spentTime":J
    .end local v6    # "endTime":J
    :goto_52
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_d4

    .line 672
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gIsFirstLoad:Z

    if-eqz v0, :cond_60

    .line 673
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$1(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/util/ArrayList;)V

    .line 676
    :cond_60
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->ProcessJsonCampaign(Ljava/lang/String;Z)V
    invoke-static {v0, p2, v9}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$2(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Ljava/lang/String;Z)V

    .line 678
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gIsHasData:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$3(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 679
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 680
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gIsFirstLoad:Z

    if-eqz v0, :cond_ab

    .line 681
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V

    .line 682
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 702
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gListAward:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$5(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;)V

    .line 707
    const-wide/16 v4, 0x3e8

    .line 702
    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v9}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$6(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Z)V

    .line 710
    return-void

    .line 684
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->gCacheName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gLoadMoreCount:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$4(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_95

    .line 690
    :cond_d4
    :try_start_d4
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Gift|CampaignListPullToRefresh|GetCampaignListener|"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_ed} :catch_ee

    goto :goto_95

    .line 691
    :catch_ee
    move-exception v0

    goto :goto_95

    .line 667
    :catch_f0
    move-exception v0

    goto/16 :goto_52
.end method
