.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceList3Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gIsAll:Z

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Z)V
    .registers 4
    .param p2, "pIsAll"    # Z

    .prologue
    .line 858
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->gIsAll:Z

    .line 859
    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->gIsAll:Z

    .line 860
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 864
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCampaignListener|onComplete|response_code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | response_text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_5a

    .line 866
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->ProcessJsonCampaign(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/String;)V

    .line 868
    iget-boolean v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->gIsAll:Z

    if-eqz v2, :cond_3c

    .line 869
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getCache_name()Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "cache_name":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 871
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 879
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 880
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->gGridCampaign:Lic/buzzebeeslib/control/PullToRefreshGridView;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$2(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)Lic/buzzebeeslib/control/PullToRefreshGridView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    new-instance v4, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;)V

    invoke-static {v3, v4}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->access$5(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;Ljava/lang/Runnable;)V

    .line 890
    const-wide/16 v5, 0x3e8

    .line 880
    invoke-virtual {v2, v4, v5, v6}, Lic/buzzebeeslib/control/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 892
    :cond_59
    return-void

    .line 875
    :cond_5a
    const-string v1, "Error while load campaign..."

    .line 876
    .local v1, "err_message":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v2, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->showToast(Ljava/lang/String;)V

    goto :goto_3c
.end method
