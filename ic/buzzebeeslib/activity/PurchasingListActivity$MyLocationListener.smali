.class Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "PurchasingListActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 2

    .prologue
    .line 1289
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;)V
    .registers 3

    .prologue
    .line 1289
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 10
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1293
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1294
    if-eqz p1, :cond_47

    .line 1296
    :try_start_b
    new-instance v5, Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 1297
    .local v1, "lat":D
    new-instance v5, Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1299
    .local v3, "lon":D
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->location:Lorg/json/JSONObject;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$23(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "latitude"

    invoke-virtual {v5, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1300
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->location:Lorg/json/JSONObject;
    invoke-static {v5}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$23(Lic/buzzebeeslib/activity/PurchasingListActivity;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "longitude"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1302
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->doFilterByLatLon(DD)V
    invoke-static {v5, v1, v2, v3, v4}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$24(Lic/buzzebeeslib/activity/PurchasingListActivity;DD)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_40} :catch_48

    .line 1309
    .end local v1    # "lat":D
    .end local v3    # "lon":D
    :goto_40
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v5, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v5, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1312
    :cond_47
    return-void

    .line 1303
    :catch_48
    move-exception v0

    .line 1304
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(JSONException|MyLocationListener|onLocationChanged):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lic/buzzebeeslib/activity/PurchasingListActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$3(Lic/buzzebeeslib/activity/PurchasingListActivity;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1316
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1320
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1324
    return-void
.end method
