.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    .registers 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    .line 1101
    const-string v0, "buzzebees.places"

    const-string v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    if-eqz p1, :cond_43

    .line 1110
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$10(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Z)V

    .line 1111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$11(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V

    .line 1112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$12(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;D)V

    .line 1114
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$13(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1124
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$6(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;Z)V

    .line 1127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    const-string v1, "nearby"

    # invokes: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->loadCampaign(ZLjava/lang/String;)V
    invoke-static {v0, v4, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$16(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;ZLjava/lang/String;)V

    .line 1129
    :cond_43
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1138
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1143
    const-string v0, "buzzebees.marketlist.fragment"

    const-string v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method
