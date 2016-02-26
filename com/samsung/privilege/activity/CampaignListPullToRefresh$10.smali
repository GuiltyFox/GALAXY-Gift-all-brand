.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getLocationByGPS()V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1089
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$14(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$10;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gPbLoadingMap:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$15(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1091
    return-void
.end method
