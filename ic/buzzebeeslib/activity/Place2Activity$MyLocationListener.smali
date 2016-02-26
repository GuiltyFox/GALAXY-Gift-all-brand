.class Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/Place2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 2

    .prologue
    .line 866
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V
    .registers 3

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;-><init>(Lic/buzzebeeslib/activity/Place2Activity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)Lic/buzzebeeslib/activity/Place2Activity;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 869
    const-string v0, "buzzebees.places"

    const-string v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 875
    if-eqz p1, :cond_51

    .line 876
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$8(Lic/buzzebeeslib/activity/Place2Activity;Z)V

    .line 877
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$9(Lic/buzzebeeslib/activity/Place2Activity;D)V

    .line 878
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$10(Lic/buzzebeeslib/activity/Place2Activity;D)V

    .line 880
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 889
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLat:D
    invoke-static {v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$11(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gCurrentLon:D
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$12(Lic/buzzebeeslib/activity/Place2Activity;)D

    move-result-wide v4

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/activity/Place2Activity;->access$13(Lic/buzzebeeslib/activity/Place2Activity;ZDD)V

    .line 902
    :cond_50
    :goto_50
    return-void

    .line 891
    :cond_51
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;-><init>(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$14(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V

    .line 898
    const-wide/16 v4, 0x3e8

    .line 891
    invoke-virtual {v0, v2, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 906
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 911
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 916
    const-string v0, "buzzebees.places"

    const-string v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method
