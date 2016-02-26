.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 2283
    const-string v0, "buzzebees.places"

    const-string v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    if-eqz p1, :cond_48

    .line 2290
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$14(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 2291
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$15(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V

    .line 2292
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$16(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;D)V

    .line 2294
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2301
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2303
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLat:D
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$18(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCurrentLon:D
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$19(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)D

    move-result-wide v4

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$20(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ZDD)V

    .line 2312
    :cond_48
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2316
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2321
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2326
    const-string v0, "buzzebees.places"

    const-string v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    return-void
.end method
