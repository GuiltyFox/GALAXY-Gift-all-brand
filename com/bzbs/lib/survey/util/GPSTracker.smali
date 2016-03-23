.class public Lcom/bzbs/lib/survey/util/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;
    }
.end annotation


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L

.field private static isNoShow:Z


# instance fields
.field canGetLocation:Z

.field isGPSEnabled:Z

.field isNetworkEnabled:Z

.field latitude:D

.field location:Landroid/location/Location;

.field protected locationManager:Landroid/location/LocationManager;

.field longitude:D

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNoShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    .line 31
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    .line 34
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->canGetLocation:Z

    .line 51
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/GPSTracker;->getLocation()Landroid/location/Location;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/lib/survey/util/GPSTracker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/GPSTracker;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/util/GPSTracker;Landroid/widget/CheckBox;)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/GPSTracker;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/GPSTracker;->checkNoShow(Landroid/widget/CheckBox;)V

    return-void
.end method

.method private checkNoShow(Landroid/widget/CheckBox;)V
    .registers 3
    .param p1, "chkNoShow"    # Landroid/widget/CheckBox;

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNoShow:Z

    .line 242
    return-void
.end method

.method public static hasSelectNoShow()Z
    .registers 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNoShow:Z

    return v0
.end method


# virtual methods
.method public canGetLocation()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->canGetLocation:Z

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->latitude:D

    .line 138
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 60
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    .line 63
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    .line 65
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isGPSEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_9a

    move v0, v7

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isNetworkEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_9c

    move v0, v7

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((!isGPSEnabled) && (!isNetworkEnabled)) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_9e

    move v0, v7

    :goto_7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_a0

    .line 70
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "no network provider is enabled"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_97} :catch_1a6

    .line 116
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    return-object v0

    :cond_9a
    move v0, v8

    .line 65
    goto :goto_39

    :cond_9c
    move v0, v8

    .line 66
    goto :goto_58

    :cond_9e
    move v0, v8

    .line 67
    goto :goto_7b

    .line 74
    :cond_a0
    :try_start_a0
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "YES"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->canGetLocation:Z

    .line 78
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isNetworkEnabled:Z

    if-eqz v0, :cond_12b

    .line 80
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "Network"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_12b

    .line 83
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    .line 84
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_12b

    .line 85
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->latitude:D

    .line 86
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->longitude:D

    .line 88
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_12b
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGPSEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_97

    .line 96
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    if-nez v0, :cond_1ca

    move v0, v7

    :goto_15f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 99
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "GPS Enabled"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_97

    .line 101
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    .line 102
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_97

    .line 103
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->latitude:D

    .line 104
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->longitude:D
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_1a4} :catch_1a6

    goto/16 :goto_97

    .line 111
    :catch_1a6
    move-exception v6

    .line 112
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1ca
    move v0, v8

    .line 96
    goto :goto_15f
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->longitude:D

    .line 150
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->longitude:D

    return-wide v0
.end method

.method public isGPSOpen(Landroid/app/Activity;)Z
    .registers 4
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 249
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 250
    .local v0, "manager":Landroid/location/LocationManager;
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 255
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 263
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 267
    return-void
.end method

.method public showCustomDialogView(Landroid/app/Activity;Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
    .registers 4
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bzbs/lib/survey/util/GPSTracker;->showCustomDialogView(Landroid/app/Activity;ZLcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V

    .line 238
    return-void
.end method

.method public showCustomDialogView(Landroid/app/Activity;ZLcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
    .registers 6
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "libs"    # Z
    .param p3, "listener"    # Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    .prologue
    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/lib/survey/util/GPSTracker$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bzbs/lib/survey/util/GPSTracker$3;-><init>(Lcom/bzbs/lib/survey/util/GPSTracker;Landroid/app/Activity;ZLcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public showSettingsAlert(Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;

    .prologue
    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "GPS is settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const-string/jumbo v1, "GPS is not enabled. Do you want to go to settings menu?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string/jumbo v1, "Settings"

    new-instance v2, Lcom/bzbs/lib/survey/util/GPSTracker$1;

    invoke-direct {v2, p0, p1}, Lcom/bzbs/lib/survey/util/GPSTracker$1;-><init>(Lcom/bzbs/lib/survey/util/GPSTracker;Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    const-string/jumbo v1, "Cancel"

    new-instance v2, Lcom/bzbs/lib/survey/util/GPSTracker$2;

    invoke-direct {v2, p0, p1}, Lcom/bzbs/lib/survey/util/GPSTracker$2;-><init>(Lcom/bzbs/lib/survey/util/GPSTracker;Lcom/bzbs/lib/survey/util/GPSTracker$onDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 194
    return-void
.end method

.method public stopUsingGPS()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 127
    :cond_9
    return-void
.end method
