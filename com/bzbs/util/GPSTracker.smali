.class public Lcom/bzbs/util/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L


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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->canGetLocation:Z

    .line 46
    iput-object p1, p0, Lcom/bzbs/util/GPSTracker;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/bzbs/util/GPSTracker;->getLocation()Landroid/location/Location;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/util/GPSTracker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/util/GPSTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public canGetLocation()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->canGetLocation:Z

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->latitude:D

    .line 142
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/util/GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    :try_start_2
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 55
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    .line 58
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    .line 60
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isGPSEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_9a

    move v0, v7

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isNetworkEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_9c

    move v0, v7

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((!isGPSEnabled) && (!isNetworkEnabled)) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_9e

    move v0, v7

    :goto_7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_a0

    .line 65
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "no network provider is enabled"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_97} :catch_1b8

    .line 116
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    return-object v0

    :cond_9a
    move v0, v8

    .line 60
    goto :goto_39

    :cond_9c
    move v0, v8

    .line 61
    goto :goto_58

    :cond_9e
    move v0, v8

    .line 62
    goto :goto_7b

    .line 69
    :cond_a0
    :try_start_a0
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "YES"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->canGetLocation:Z

    .line 73
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_be

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 74
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_97

    .line 76
    :cond_be
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isNetworkEnabled:Z

    if-eqz v0, :cond_13d

    .line 78
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 79
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "Network"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_13d

    .line 81
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    .line 82
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_13d

    .line 83
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->latitude:D

    .line 84
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->longitude:D

    .line 86
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/util/GPSTracker;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/util/GPSTracker;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_13d
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGPSEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/bzbs/util/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_97

    .line 94
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    if-nez v0, :cond_1dc

    move v0, v7

    :goto_171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 97
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "GPS Enabled"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_97

    .line 99
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    .line 100
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_97

    .line 101
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->latitude:D

    .line 102
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->longitude:D
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_97

    .line 111
    :catch_1b8
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

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1dc
    move v0, v8

    .line 94
    goto :goto_171
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/util/GPSTracker;->longitude:D

    .line 154
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/util/GPSTracker;->longitude:D

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 202
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 206
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 210
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 214
    return-void
.end method

.method public showSettingsAlert()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/bzbs/util/GPSTracker;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_36

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bzbs/util/GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v1, "GPS is settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    const-string/jumbo v1, "GPS is not enabled. Do you want to go to settings menu?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string/jumbo v1, "Settings"

    new-instance v2, Lcom/bzbs/util/GPSTracker$1;

    invoke-direct {v2, p0}, Lcom/bzbs/util/GPSTracker$1;-><init>(Lcom/bzbs/util/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string/jumbo v1, "Cancel"

    new-instance v2, Lcom/bzbs/util/GPSTracker$2;

    invoke-direct {v2, p0}, Lcom/bzbs/util/GPSTracker$2;-><init>(Lcom/bzbs/util/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_36
    return-void
.end method

.method public stopUsingGPS()V
    .registers 2

    .prologue
    .line 123
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 124
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 126
    :cond_12
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/bzbs/util/GPSTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    :cond_1b
    return-void
.end method
