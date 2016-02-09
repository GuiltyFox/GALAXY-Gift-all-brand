.class Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gIsFirstLoad:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;ZLjava/lang/String;)V
    .registers 5
    .param p2, "is_first_load"    # Z
    .param p3, "cache_name"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gIsFirstLoad:Z

    .line 586
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    .line 589
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gIsFirstLoad:Z

    .line 590
    iput-object p3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    .line 591
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 595
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response_text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_83

    .line 597
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6d

    .line 598
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gIsFirstLoad:Z

    if-eqz v0, :cond_38

    .line 599
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$4(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/util/ArrayList;)V

    .line 602
    :cond_38
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->ProcessJsonPurchasing(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$5(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gIsHasData:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$6(Lic/buzzebeeslib/activity/PurchasingListActivity;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 605
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 606
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gIsFirstLoad:Z

    if-eqz v0, :cond_6d

    .line 607
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V

    .line 608
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->gCacheName:Ljava/lang/String;

    iget-object v1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 619
    :cond_6d
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gListAward:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$7(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;)V

    .line 624
    const-wide/16 v2, 0x3e8

    .line 619
    invoke-virtual {v0, v1, v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$8(Lic/buzzebeeslib/activity/PurchasingListActivity;Z)V

    .line 629
    :cond_83
    return-void
.end method
