.class public Lcom/samsung/privilege/newconcepts/utils/GPSTracker;
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

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation:Z

    .line 45
    iput-object p1, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLocation()Landroid/location/Location;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/newconcepts/utils/GPSTracker;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public canGetLocation()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation:Z

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->latitude:D

    .line 131
    :cond_c
    iget-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 51
    :try_start_2
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    .line 59
    const-string v1, "GPS Enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "!isGPSEnabled := "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_83

    move v0, v8

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "GPS Enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "!isNetworkEnabled := "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    if-eqz v0, :cond_85

    move v0, v8

    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "GPS Enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "((!isGPSEnabled) && (!isNetworkEnabled)) "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_87

    move v0, v7

    :goto_66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    if-nez v0, :cond_89

    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    if-nez v0, :cond_89

    .line 64
    const-string v0, "GPS Enabled"

    const-string v1, "no network provider is enabled"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_80} :catch_16b

    .line 110
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    return-object v0

    :cond_83
    move v0, v7

    .line 59
    goto :goto_30

    :cond_85
    move v0, v7

    .line 60
    goto :goto_49

    :cond_87
    move v0, v8

    .line 61
    goto :goto_66

    .line 68
    :cond_89
    :try_start_89
    const-string v0, "GPS Enabled"

    const-string v1, "YES"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation:Z

    .line 72
    const-string v0, "GPS Enabled"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isNetworkEnabled:Z

    if-eqz v0, :cond_100

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 75
    const-string v0, "Network"

    const-string v1, "Network"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_100

    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_100

    .line 79
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->latitude:D

    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->longitude:D

    .line 82
    const-string v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latitude "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "longitude "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_100
    const-string v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isGPSEnabled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->isGPSEnabled:Z

    if-eqz v0, :cond_80

    .line 90
    const-string v1, "GPS Enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "location == null "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    if-nez v0, :cond_189

    move v0, v7

    :goto_128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 93
    const-string v0, "GPS Enabled"

    const-string v1, "GPS Enabled"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_80

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_80

    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->latitude:D

    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->longitude:D
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_169} :catch_16b

    goto/16 :goto_80

    .line 105
    :catch_16b
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_189
    move v0, v8

    .line 90
    goto :goto_128
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->longitude:D

    .line 143
    :cond_c
    iget-wide v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->longitude:D

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 191
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 199
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 203
    return-void
.end method

.method public showSettingsAlert()V
    .registers 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_32

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "GPS is settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v1, "GPS is not enabled. Do you want to go to settings menu?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    const-string v1, "Settings"

    new-instance v2, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$1;-><init>(Lcom/samsung/privilege/newconcepts/utils/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    const-string v1, "Cancel"

    new-instance v2, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$2;-><init>(Lcom/samsung/privilege/newconcepts/utils/GPSTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_32
    return-void
.end method

.method public stopUsingGPS()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 120
    :cond_9
    return-void
.end method
