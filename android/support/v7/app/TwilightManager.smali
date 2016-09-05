.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# static fields
.field private static final a:Landroid/support/v7/app/TwilightManager$TwilightState;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>(Landroid/support/v7/app/TwilightManager$1;)V

    sput-object v0, Landroid/support/v7/app/TwilightManager;->a:Landroid/support/v7/app/TwilightManager$TwilightState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->b:Landroid/content/Context;

    .line 47
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->c:Landroid/location/LocationManager;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_1d

    .line 109
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 110
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v0

    .line 116
    :goto_12
    return-object v0

    .line 112
    :catch_13
    move-exception v0

    .line 113
    const-string/jumbo v1, "TwilightManager"

    const-string/jumbo v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Landroid/location/Location;)V
    .registers 22

    .prologue
    .line 124
    sget-object v10, Landroid/support/v7/app/TwilightManager;->a:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 126
    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->a()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v3

    .line 129
    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->a(JDD)V

    .line 131
    iget-wide v14, v3, Landroid/support/v7/app/TwilightCalculator;->a:J

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->a(JDD)V

    .line 135
    iget v2, v3, Landroid/support/v7/app/TwilightCalculator;->c:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6a

    const/4 v2, 0x1

    .line 136
    :goto_2e
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->b:J

    move-wide/from16 v16, v0

    .line 137
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->a:J

    move-wide/from16 v18, v0

    .line 140
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->a(JDD)V

    .line 142
    iget-wide v6, v3, Landroid/support/v7/app/TwilightCalculator;->b:J

    .line 145
    const-wide/16 v4, 0x0

    .line 146
    const-wide/16 v8, -0x1

    cmp-long v3, v16, v8

    if-eqz v3, :cond_55

    const-wide/16 v8, -0x1

    cmp-long v3, v18, v8

    if-nez v3, :cond_6c

    .line 148
    :cond_55
    const-wide/32 v4, 0x2932e00

    add-long/2addr v4, v12

    .line 162
    :goto_59
    iput-boolean v2, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->a:Z

    .line 163
    iput-wide v14, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->b:J

    .line 164
    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->c:J

    .line 165
    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->d:J

    .line 166
    iput-wide v6, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->e:J

    .line 167
    iput-wide v4, v10, Landroid/support/v7/app/TwilightManager$TwilightState;->f:J

    .line 168
    return-void

    .line 135
    :cond_6a
    const/4 v2, 0x0

    goto :goto_2e

    .line 150
    :cond_6c
    cmp-long v3, v12, v18

    if-lez v3, :cond_76

    .line 151
    add-long/2addr v4, v6

    .line 158
    :goto_71
    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    goto :goto_59

    .line 152
    :cond_76
    cmp-long v3, v12, v16

    if-lez v3, :cond_7d

    .line 153
    add-long v4, v4, v18

    goto :goto_71

    .line 155
    :cond_7d
    add-long v4, v4, v16

    goto :goto_71
.end method

.method private a(Landroid/support/v7/app/TwilightManager$TwilightState;)Z
    .registers 6

    .prologue
    .line 120
    if-eqz p1, :cond_e

    iget-wide v0, p1, Landroid/support/v7/app/TwilightManager$TwilightState;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b()Landroid/location/Location;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 82
    .line 85
    iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->b:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 87
    if-nez v0, :cond_3d

    .line 88
    const-string/jumbo v0, "network"

    invoke-direct {p0, v0}, Landroid/support/v7/app/TwilightManager;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 91
    :goto_13
    iget-object v2, p0, Landroid/support/v7/app/TwilightManager;->b:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 93
    if-nez v2, :cond_25

    .line 94
    const-string/jumbo v1, "gps"

    invoke-direct {p0, v1}, Landroid/support/v7/app/TwilightManager;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 97
    :cond_25
    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    .line 99
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_36

    move-object v0, v1

    .line 102
    :cond_36
    :goto_36
    return-object v0

    :cond_37
    if-eqz v1, :cond_3b

    :goto_39
    move-object v0, v1

    goto :goto_36

    :cond_3b
    move-object v1, v0

    goto :goto_39

    :cond_3d
    move-object v0, v1

    goto :goto_13
.end method


# virtual methods
.method a()Z
    .registers 3

    .prologue
    .line 56
    sget-object v0, Landroid/support/v7/app/TwilightManager;->a:Landroid/support/v7/app/TwilightManager$TwilightState;

    .line 58
    invoke-direct {p0, v0}, Landroid/support/v7/app/TwilightManager;->a(Landroid/support/v7/app/TwilightManager$TwilightState;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 60
    iget-boolean v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->a:Z

    .line 78
    :goto_a
    return v0

    .line 64
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->b()Landroid/location/Location;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_17

    .line 66
    invoke-direct {p0, v1}, Landroid/support/v7/app/TwilightManager;->a(Landroid/location/Location;)V

    .line 67
    iget-boolean v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->a:Z

    goto :goto_a

    .line 70
    :cond_17
    const-string/jumbo v0, "TwilightManager"

    const-string/jumbo v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 78
    const/4 v1, 0x6

    if-lt v0, v1, :cond_31

    const/16 v1, 0x16

    if-lt v0, v1, :cond_33

    :cond_31
    const/4 v0, 0x1

    goto :goto_a

    :cond_33
    const/4 v0, 0x0

    goto :goto_a
.end method
