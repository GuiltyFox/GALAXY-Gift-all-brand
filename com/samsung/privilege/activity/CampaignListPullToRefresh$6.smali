.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$6;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->ProcessJsonCampaign(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$6;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$6;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->setCampaignUI()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$35(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V

    .line 768
    return-void
.end method
