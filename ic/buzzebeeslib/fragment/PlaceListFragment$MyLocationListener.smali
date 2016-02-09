.class Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V
    .registers 2

    .prologue
    .line 868
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V
    .registers 3

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)Lic/buzzebeeslib/fragment/PlaceListFragment;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    return-object v0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 872
    const-string v0, "buzzebees.places"

    const-string v1, "public void onLocationChanged(Location loc) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 878
    if-eqz p1, :cond_51

    .line 879
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$8(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V

    .line 880
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$9(Lic/buzzebeeslib/fragment/PlaceListFragment;D)V

    .line 881
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceListFragment;D)V

    .line 883
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$1;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 892
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLat:D
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$11(Lic/buzzebeeslib/fragment/PlaceListFragment;)D

    move-result-wide v2

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gCurrentLon:D
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$12(Lic/buzzebeeslib/fragment/PlaceListFragment;)D

    move-result-wide v4

    # invokes: Lic/buzzebeeslib/fragment/PlaceListFragment;->fetchPlaces(ZDD)V
    invoke-static/range {v0 .. v5}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$13(Lic/buzzebeeslib/fragment/PlaceListFragment;ZDD)V

    .line 905
    :cond_50
    :goto_50
    return-void

    .line 894
    :cond_51
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener$2;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment$MyLocationListener;)V

    invoke-static {v1, v2}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$14(Lic/buzzebeeslib/fragment/PlaceListFragment;Ljava/lang/Runnable;)V

    .line 901
    const-wide/16 v3, 0x3e8

    .line 894
    invoke-virtual {v0, v2, v3, v4}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderDisabled(String provider) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string v0, "buzzebees.places"

    const-string v1, "public void onProviderEnabled(String provider) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 919
    const-string v0, "buzzebees.places"

    const-string v1, "public void onStatusChanged(String provider, int status, Bundle extras) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return-void
.end method
