.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    if-eqz p1, :cond_7a

    .line 3045
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gFoundLocation:Z
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2402(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 3046
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    # setter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D
    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2502(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;D)D

    .line 3047
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    # setter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D
    invoke-static {v0, v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2602(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;D)D

    .line 3049
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MyLocationListener{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3058
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7a

    .line 3060
    :cond_73
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3072
    :cond_7a
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    return-void
.end method
