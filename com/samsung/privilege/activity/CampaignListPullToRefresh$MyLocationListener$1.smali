.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 1117
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$14(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    const v3, 0x7f090321

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$14(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gPbLoadingMap:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$15(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1121
    return-void
.end method
