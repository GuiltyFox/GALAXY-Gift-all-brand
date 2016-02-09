.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# static fields
.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private mBestLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field mService:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mService:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;

    .line 51
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$2;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationListener:Landroid/location/LocationListener;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;)Landroid/location/Location;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;Landroid/location/Location;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 136
    if-nez p1, :cond_8

    .line 137
    if-nez p2, :cond_6

    const/4 v0, 0x1

    .line 139
    :goto_5
    return v0

    .line 137
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 139
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 17
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 93
    if-nez p2, :cond_4

    .line 95
    const/4 v10, 0x1

    .line 131
    :goto_3
    return v10

    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 100
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_29

    const/4 v6, 0x1

    .line 101
    .local v6, "isSignificantlyNewer":Z
    :goto_16
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2b

    const/4 v7, 0x1

    .line 102
    .local v7, "isSignificantlyOlder":Z
    :goto_1e
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2d

    const/4 v4, 0x1

    .line 106
    .local v4, "isNewer":Z
    :goto_25
    if-eqz v6, :cond_2f

    .line 107
    const/4 v10, 0x1

    goto :goto_3

    .line 100
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_29
    const/4 v6, 0x0

    goto :goto_16

    .line 101
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2b
    const/4 v7, 0x0

    goto :goto_1e

    .line 102
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_25

    .line 109
    .restart local v4    # "isNewer":Z
    :cond_2f
    if-eqz v7, :cond_33

    .line 110
    const/4 v10, 0x0

    goto :goto_3

    .line 114
    :cond_33
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 115
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_58

    const/4 v2, 0x1

    .line 116
    .local v2, "isLessAccurate":Z
    :goto_40
    if-gez v0, :cond_5a

    const/4 v3, 0x1

    .line 117
    .local v3, "isMoreAccurate":Z
    :goto_43
    const/16 v10, 0xc8

    if-le v0, v10, :cond_5c

    const/4 v5, 0x1

    .line 120
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_48
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-direct {p0, v10, v11}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_5e

    .line 125
    const/4 v10, 0x1

    goto :goto_3

    .line 115
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_58
    const/4 v2, 0x0

    goto :goto_40

    .line 116
    .restart local v2    # "isLessAccurate":Z
    :cond_5a
    const/4 v3, 0x0

    goto :goto_43

    .line 117
    .restart local v3    # "isMoreAccurate":Z
    :cond_5c
    const/4 v5, 0x0

    goto :goto_48

    .line 126
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_5e
    if-eqz v4, :cond_64

    if-nez v2, :cond_64

    .line 127
    const/4 v10, 0x1

    goto :goto_3

    .line 128
    :cond_64
    if-eqz v4, :cond_6c

    if-nez v5, :cond_6c

    if-eqz v1, :cond_6c

    .line 129
    const/4 v10, 0x1

    goto :goto_3

    .line 131
    :cond_6c
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 32
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mService:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    .line 40
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    if-nez v0, :cond_21

    .line 41
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    .line 43
    :cond_21
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    if-nez v0, :cond_2f

    .line 44
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;

    .line 46
    :cond_2f
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 47
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 83
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 84
    return-void
.end method
