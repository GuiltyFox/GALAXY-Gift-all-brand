.class public Lcom/bzbs/lib/survey/util/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static i:Z


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Landroid/location/Location;

.field e:D

.field f:D

.field protected g:Landroid/location/LocationManager;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/GPSTracker;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    .line 31
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    .line 34
    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->c:Z

    .line 51
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->h:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/GPSTracker;->a()Landroid/location/Location;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->h:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    .line 60
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    .line 63
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    .line 65
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isGPSEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    if-nez v0, :cond_9a

    move v0, v6

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!isNetworkEnabled := "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    if-nez v0, :cond_9c

    move v0, v6

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((!isGPSEnabled) && (!isNetworkEnabled)) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    if-nez v0, :cond_9e

    move v0, v6

    :goto_7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    if-nez v0, :cond_a0

    .line 70
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "no network provider is enabled"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_97} :catch_1a6

    .line 116
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    return-object v0

    :cond_9a
    move v0, v7

    .line 65
    goto :goto_39

    :cond_9c
    move v0, v7

    .line 66
    goto :goto_58

    :cond_9e
    move v0, v7

    .line 67
    goto :goto_7b

    .line 74
    :cond_a0
    :try_start_a0
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "YES"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->c:Z

    .line 78
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->b:Z

    if-eqz v0, :cond_12b

    .line 80
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    const-string/jumbo v0, "Network"

    const-string/jumbo v1, "Network"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_12b

    .line 83
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    .line 84
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    if-eqz v0, :cond_12b

    .line 85
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->e:D

    .line 86
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->f:D

    .line 88
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->e:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_12b
    const-string/jumbo v0, "GPS Enabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGPSEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->a:Z

    if-eqz v0, :cond_97

    .line 96
    const-string/jumbo v1, "GPS Enabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    if-nez v0, :cond_1ca

    move v0, v6

    :goto_15f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 99
    const-string/jumbo v0, "GPS Enabled"

    const-string/jumbo v1, "GPS Enabled"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_97

    .line 101
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->g:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    .line 102
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    if-eqz v0, :cond_97

    .line 103
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->e:D

    .line 104
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->f:D
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_1a4} :catch_1a6

    goto/16 :goto_97

    .line 111
    :catch_1a6
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string/jumbo v1, "GPS Enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97

    :cond_1ca
    move v0, v7

    .line 96
    goto :goto_15f
.end method

.method public b()D
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->e:D

    .line 138
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->e:D

    return-wide v0
.end method

.method public c()D
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->f:D

    .line 150
    :cond_c
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/GPSTracker;->f:D

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    .prologue
    .line 255
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 259
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 263
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 267
    return-void
.end method
