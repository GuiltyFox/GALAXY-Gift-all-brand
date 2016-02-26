.class Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 3304
    const-string v0, "buzzebees.places"

    const-string v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    if-eqz p1, :cond_49

    .line 3313
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$15(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3314
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$16(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V

    .line 3315
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$17(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V

    .line 3317
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3324
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3326
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$19(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$20(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D

    move-result-wide v4

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$21(Lcom/samsung/privilege/activity/CampaignDetailActivity;ZDD)V

    .line 3335
    :goto_48
    return-void

    .line 3328
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;)V

    .line 3333
    const-wide/16 v2, 0x3e8

    .line 3328
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_48
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 3339
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 3344
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3349
    const-string v0, "buzzebees.places"

    const-string v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    return-void
.end method
