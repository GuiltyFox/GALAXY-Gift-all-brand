.class public Lcom/samsung/privilege/util/BBUtil;
.super Ljava/lang/Object;
.source "BBUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/BBUtil$GetLogoutListener;,
        Lcom/samsung/privilege/util/BBUtil$GetResumeListener;,
        Lcom/samsung/privilege/util/BBUtil$GetUpdateDeviceListener;
    }
.end annotation


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final MINUTES:J = 0xea60L

.field private static a1:F

.field private static a2:F

.field private static b1:F

.field private static b2:F

.field private static x1:F

.field private static x2:F

.field private static y1:F

.field private static y2:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 246
    sput v0, Lcom/samsung/privilege/util/BBUtil;->x1:F

    .line 248
    sput v0, Lcom/samsung/privilege/util/BBUtil;->y1:F

    .line 319
    sput v0, Lcom/samsung/privilege/util/BBUtil;->a1:F

    .line 321
    sput v0, Lcom/samsung/privilege/util/BBUtil;->b1:F

    .line 322
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CDateToTime(J)Ljava/lang/String;
    .registers 13
    .param p0, "epochTime"    # J

    .prologue
    .line 436
    new-instance v3, Ljava/util/Date;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, p0

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 438
    .local v3, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 439
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 440
    .local v1, "current":J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 441
    .local v7, "update":J
    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 443
    .local v5, "timeago":J
    const-wide/32 v9, 0xea60

    cmp-long v9, v5, v9

    if-gtz v9, :cond_44

    .line 444
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 445
    .local v4, "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2c

    .line 446
    const-string v9, "a second ago"

    .line 469
    :goto_2b
    return-object v9

    .line 448
    :cond_2c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " seconds ago"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2b

    .line 450
    .end local v4    # "time":I
    :cond_44
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    if-gtz v9, :cond_76

    const-wide/32 v9, 0xea60

    cmp-long v9, v5, v9

    if-ltz v9, :cond_76

    .line 451
    const-wide/32 v9, 0xea60

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 452
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5e

    .line 453
    const-string v9, "about a minute ago"

    goto :goto_2b

    .line 455
    :cond_5e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " minutes ago"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2b

    .line 457
    .end local v4    # "time":I
    :cond_76
    const-wide/32 v9, 0x5265c00

    cmp-long v9, v5, v9

    if-gtz v9, :cond_a8

    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    if-ltz v9, :cond_a8

    .line 458
    const-wide/32 v9, 0x36ee80

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 459
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_90

    .line 460
    const-string v9, "about an hour ago"

    goto :goto_2b

    .line 462
    :cond_90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " hours ago"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2b

    .line 465
    .end local v4    # "time":I
    :cond_a8
    const-wide/32 v9, 0x5265c00

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 466
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_b5

    .line 467
    const-string v9, "yesterday"

    goto/16 :goto_2b

    .line 469
    :cond_b5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " days ago"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2b
.end method

.method public static CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    .line 54
    :goto_17
    return-object v1

    .line 53
    :catch_18
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_17
.end method

.method public static CTypeFloat(Ljava/lang/String;)F
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result v1

    .line 78
    :goto_13
    return v1

    .line 77
    :catch_14
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    .line 62
    :goto_17
    return-object v1

    .line 61
    :catch_18
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17
.end method

.method public static CTypeLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v1

    .line 70
    :goto_17
    return-object v1

    .line 69
    :catch_18
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_17
.end method

.method public static CheckNetworkType()I
    .registers 4

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 478
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 479
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_f

    .line 480
    :cond_d
    const/4 v2, -0x1

    .line 485
    :goto_e
    return v2

    .line 484
    :cond_f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 485
    .local v2, "netType":I
    goto :goto_e
.end method

.method public static CtypeBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 86
    :goto_4
    return v1

    .line 85
    :catch_5
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static CtypeDateStringToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "parseFormatDate"    # Ljava/lang/String;
    .param p2, "formatDate"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    const-string v3, ""

    if-ne p1, v3, :cond_6

    .line 120
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 122
    :cond_6
    const-string v3, ""

    if-ne p2, v3, :cond_c

    .line 123
    const-string p2, "dd/MM/yyyy HH:mm"

    .line 126
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_18

    .line 127
    const-string p1, "yyyy-MM-dd"

    .line 128
    const-string p2, "dd MMM yyyy"

    .line 131
    :cond_18
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v3

    .line 135
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2a
    return-object v3

    .line 134
    :catch_2b
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_2a
.end method

.method public static CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 94
    :goto_4
    return-object v1

    .line 93
    :catch_5
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_4
.end method

.method public static GetDateFromString(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 149
    .local v3, "formatDate":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_c

    .line 150
    const-string v3, "yyyy-MM-dd"

    .line 152
    :cond_c
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object v4, p0

    .line 155
    .local v4, "strDate":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 159
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatDate":Ljava/lang/String;
    .end local v4    # "strDate":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 157
    :catch_17
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERROR="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static GetTimeCurrentString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 141
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "time":Ljava/lang/String;
    return-object v1
.end method

.method public static IsClick(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_6e

    .line 361
    :cond_9
    :goto_9
    return v3

    .line 329
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->a1:F

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->b1:F

    goto :goto_9

    .line 333
    :pswitch_17
    const-string v2, ""

    .line 334
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->a2:F

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->b2:F

    .line 336
    sget v4, Lcom/samsung/privilege/util/BBUtil;->a2:F

    sget v5, Lcom/samsung/privilege/util/BBUtil;->a1:F

    sub-float v0, v4, v5

    .line 337
    .local v0, "differenceInX":F
    sget v4, Lcom/samsung/privilege/util/BBUtil;->b2:F

    sget v5, Lcom/samsung/privilege/util/BBUtil;->b1:F

    sub-float v1, v4, v5

    .line 340
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_64

    .line 341
    cmpl-float v4, v0, v6

    if-lez v4, :cond_61

    .line 342
    const-string v2, "right"

    .line 354
    :goto_43
    const-string v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "direction_IsClick "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "up"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 356
    const/4 v3, 0x1

    goto :goto_9

    .line 344
    :cond_61
    const-string v2, "left"

    .line 346
    goto :goto_43

    .line 347
    :cond_64
    cmpl-float v4, v1, v6

    if-lez v4, :cond_6b

    .line 348
    const-string v2, "down"

    .line 349
    goto :goto_43

    .line 350
    :cond_6b
    const-string v2, "up"

    goto :goto_43

    .line 327
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_17
    .end packed-switch
.end method

.method public static IsSamsungMobile()Z
    .registers 6

    .prologue
    .line 499
    const/4 v3, 0x1

    .line 501
    .local v3, "isCheckSamsung":Z
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 502
    .local v1, "MANUFACTURER":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 503
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 504
    const/4 v3, 0x1

    .line 523
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :goto_12
    return v3

    .line 506
    .restart local v1    # "MANUFACTURER":Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    .line 508
    goto :goto_12

    .line 509
    :cond_15
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 510
    .local v0, "BRAND":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 511
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_2b

    move-result v4

    if-eqz v4, :cond_27

    .line 512
    const/4 v3, 0x1

    .line 513
    goto :goto_12

    .line 514
    :cond_27
    const/4 v3, 0x0

    .line 516
    goto :goto_12

    .line 517
    :cond_29
    const/4 v3, 0x0

    goto :goto_12

    .line 520
    .end local v0    # "BRAND":Ljava/lang/String;
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static IsSlideToDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 316
    :cond_8
    :goto_8
    return v1

    .line 300
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/samsung/privilege/util/BBUtil;->x1:F

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/samsung/privilege/util/BBUtil;->y1:F

    goto :goto_8

    .line 304
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/samsung/privilege/util/BBUtil;->x2:F

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/samsung/privilege/util/BBUtil;->y2:F

    .line 307
    sget v2, Lcom/samsung/privilege/util/BBUtil;->y2:F

    sget v3, Lcom/samsung/privilege/util/BBUtil;->y1:F

    sub-float v0, v2, v3

    .line 309
    .local v0, "differenceInY":F
    const/high16 v2, 0x41f00000

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 311
    const/4 v1, 0x1

    goto :goto_8

    .line 298
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static IsSlideToLeft(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_c8

    .line 294
    :cond_9
    :goto_9
    return v3

    .line 255
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->x1:F

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->y1:F

    goto :goto_9

    .line 259
    :pswitch_17
    const-string v2, ""

    .line 260
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->x2:F

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/samsung/privilege/util/BBUtil;->y2:F

    .line 262
    sget v4, Lcom/samsung/privilege/util/BBUtil;->x2:F

    sget v5, Lcom/samsung/privilege/util/BBUtil;->x1:F

    sub-float v0, v4, v5

    .line 263
    .local v0, "differenceInX":F
    sget v4, Lcom/samsung/privilege/util/BBUtil;->y2:F

    sget v5, Lcom/samsung/privilege/util/BBUtil;->y1:F

    sub-float v1, v4, v5

    .line 266
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_bc

    .line 267
    cmpl-float v4, v0, v6

    if-lez v4, :cond_89

    .line 268
    const-string v2, "right"

    .line 285
    :goto_43
    const-string v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "direction_IsSlideToLeft "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "direction_IsSlideToLeft_InX "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "direction_IsSlideToLeft_InY "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v4, "left"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 289
    const/4 v3, 0x1

    goto :goto_9

    .line 270
    :cond_89
    const-string v4, "BBUtil_IsSlideToLeft"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Math.abs(differenceInX) - Math.abs(differenceInY)) "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    sget v5, Lcom/samsung/privilege/AppSetting;->gIntDifferenceInXMoreThanInY:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b9

    .line 272
    const-string v2, "left"

    .line 273
    goto :goto_43

    .line 274
    :cond_b9
    const-string v2, ""

    .line 277
    goto :goto_43

    .line 278
    :cond_bc
    cmpl-float v4, v1, v6

    if-lez v4, :cond_c3

    .line 279
    const-string v2, "down"

    .line 280
    goto :goto_43

    .line 281
    :cond_c3
    const-string v2, "up"

    goto/16 :goto_43

    .line 253
    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a
        :pswitch_17
    .end packed-switch
.end method

.method public static IsSlideToLeftOLD(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "x1":F
    const/4 v5, 0x0

    .line 209
    .local v5, "y1":F
    const-string v0, ""

    .line 210
    .local v0, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_4e

    .line 239
    :goto_c
    const-string v7, "left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 240
    const/4 v7, 0x1

    .line 242
    :goto_15
    return v7

    .line 212
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 214
    goto :goto_c

    .line 216
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 217
    .local v4, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 218
    .local v6, "y2":F
    sub-float v1, v4, v3

    .line 219
    .local v1, "dx":F
    sub-float v2, v6, v5

    .line 222
    .local v2, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_41

    .line 223
    cmpl-float v7, v1, v9

    if-lez v7, :cond_3e

    .line 224
    const-string v0, "right"

    goto :goto_c

    .line 226
    :cond_3e
    const-string v0, "left"

    .line 227
    goto :goto_c

    .line 230
    :cond_41
    cmpl-float v7, v2, v9

    if-lez v7, :cond_48

    .line 231
    const-string v0, "left"

    goto :goto_c

    .line 233
    :cond_48
    const-string v0, "up"

    goto :goto_c

    .line 242
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "x2":F
    .end local v6    # "y2":F
    :cond_4b
    const/4 v7, 0x0

    goto :goto_15

    .line 210
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1f
    .end packed-switch
.end method

.method public static callLogout(Landroid/content/Context;)V
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 645
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v7, :cond_102

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_102

    .line 647
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "api/auth/logout?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 652
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "device_id":Ljava/lang/String;
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "uuid"

    invoke-direct {v10, v11, v3}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "platform":Ljava/lang/String;
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "platform"

    invoke-direct {v10, v11, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 661
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "os"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "android "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v9, ""

    .line 666
    .local v9, "versionName":Ljava/lang/String;
    :try_start_81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_90} :catch_103

    .line 670
    :goto_90
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "client_version"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "device_token"

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "device_noti_enable"

    const-string v12, "false"

    invoke-direct {v10, v11, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "android_id":Ljava/lang/String;
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "mac_address"

    invoke-direct {v10, v11, v1}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v10, Lcom/samsung/privilege/bean/InputItem;

    const-string v11, "sponsorId"

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const-string v10, "gift.logout"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "logout="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v10, Lcom/samsung/privilege/util/BBUtil$GetLogoutListener;

    invoke-direct {v10, p0}, Lcom/samsung/privilege/util/BBUtil$GetLogoutListener;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-static {v8, v5, v10, v11}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 688
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v3    # "device_id":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v6    # "platform":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "versionName":Ljava/lang/String;
    :cond_102
    return-void

    .line 667
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v3    # "device_id":Ljava/lang/String;
    .restart local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v6    # "platform":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    .restart local v9    # "versionName":Ljava/lang/String;
    :catch_103
    move-exception v4

    .line 668
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "gift.logout"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Can\'t get versionName:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90
.end method

.method public static callResumeXXX(Landroid/content/Context;JZ)J
    .registers 27
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "pLastResumeTime"    # J
    .param p3, "isForceCall"    # Z

    .prologue
    .line 529
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 530
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    sub-long v19, v19, p1

    const-wide/16 v21, 0x3e8

    div-long v9, v19, v21

    .line 532
    .local v9, "difftime":J
    const-string v19, "gift.resume"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "isForceCall="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v19, "gift.resume"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-wide/16 v19, 0x3840

    cmp-long v19, v9, v19

    if-gtz v19, :cond_61

    const-wide/16 v19, 0x0

    cmp-long v19, p1, v19

    if-eqz v19, :cond_61

    if-eqz p3, :cond_225

    .line 536
    :cond_61
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 537
    .local v16, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v16, :cond_1ca

    const-string v19, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1ca

    .line 538
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "api/auth/device_resume?token="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 540
    .local v17, "url":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v14, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v7, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 543
    .local v7, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v7}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "device_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "uuid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 548
    .local v15, "platform":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "platform"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 552
    .local v3, "AndroidVersion":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "os"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "android "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v18, ""

    .line 557
    .local v18, "versionName":Ljava/lang/String;
    :try_start_fc
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_110
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fc .. :try_end_110} :catch_1cb

    .line 561
    :goto_110
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "client_version"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "device_token"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1e6

    .line 568
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "device_noti_enable"

    const-string v21, "true"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :goto_159
    invoke-virtual {v7}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "android_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "mac_address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "sponsorId"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "carrier":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "carrier"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    const-string v19, "gift.resume"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "resume="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1aa
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_1f6

    .line 591
    new-instance v19, Lcom/samsung/privilege/util/BBUtil$GetResumeListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/util/BBUtil$GetResumeListener;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v14, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 593
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 599
    .end local v3    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v8    # "device_id":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v15    # "platform":Ljava/lang/String;
    .end local v16    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "versionName":Ljava/lang/String;
    .end local p1    # "pLastResumeTime":J
    :cond_1ca
    :goto_1ca
    return-wide p1

    .line 558
    .restart local v3    # "AndroidVersion":Ljava/lang/String;
    .restart local v7    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v8    # "device_id":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v15    # "platform":Ljava/lang/String;
    .restart local v16    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v18    # "versionName":Ljava/lang/String;
    .restart local p1    # "pLastResumeTime":J
    :catch_1cb
    move-exception v11

    .line 559
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "gift.resume"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Can\'t get versionName:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_110

    .line 571
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1e6
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "device_noti_enable"

    const-string v21, "false"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_159

    .line 588
    .restart local v4    # "android_id":Ljava/lang/String;
    .restart local v5    # "carrier":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_1f6
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/privilege/bean/InputItem;

    .line 589
    .local v13, "item":Lcom/samsung/privilege/bean/InputItem;
    const-string v19, "gift.resume"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "  key="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", value="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    add-int/lit8 v12, v12, 0x1

    goto :goto_1aa

    .line 596
    .end local v3    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v8    # "device_id":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "item":Lcom/samsung/privilege/bean/InputItem;
    .end local v14    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v15    # "platform":Ljava/lang/String;
    .end local v16    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "versionName":Ljava/lang/String;
    :cond_225
    const-string v19, "gift.resume"

    const-string v20, "Not call resume, time is less than 4 hours..."

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ca
.end method

.method public static callUpdateDeviceNoti(Landroid/content/Context;)V
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 768
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v6, :cond_c8

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    .line 770
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "api/auth/update_device?token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 783
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 784
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "os"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "android "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_token"

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 800
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_noti_enable"

    const-string v11, "true"

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :goto_6c
    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "android_id":Ljava/lang/String;
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "mac_address"

    invoke-direct {v9, v10, v1}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    const-string v9, "gift.noti"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "update_device="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_d6

    .line 819
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "token="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",device_token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 821
    .local v7, "strUpdateDevice":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    .line 824
    new-instance v9, Lcom/samsung/privilege/util/BBUtil$GetUpdateDeviceListener;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/util/BBUtil$GetUpdateDeviceListener;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-static {v8, v5, v9, v10}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 825
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->SetLastUpdateDevice(Landroid/content/Context;Ljava/lang/String;)Z

    .line 828
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v3    # "i":I
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v7    # "strUpdateDevice":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_c8
    return-void

    .line 803
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v8    # "url":Ljava/lang/String;
    :cond_c9
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_noti_enable"

    const-string v11, "false"

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 815
    .restart local v1    # "android_id":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_d6
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/InputItem;

    .line 816
    .local v4, "item":Lcom/samsung/privilege/bean/InputItem;
    const-string v9, "gift.noti"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  key="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f
.end method

.method public static daysBetweenDates(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "pD1"    # Ljava/lang/String;
    .param p1, "pD2"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/samsung/privilege/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 171
    .local v0, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/samsung/privilege/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 173
    .local v1, "d2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 175
    .local v2, "days":I
    return v2
.end method

.method public static daysBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 7
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 166
    .local v0, "days":I
    return v0
.end method

.method private static deg2rad(D)D
    .registers 6
    .param p0, "deg"    # D

    .prologue
    .line 428
    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static diffMinutes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 12
    .param p0, "pD1"    # Ljava/lang/String;
    .param p1, "pD2"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p0}, Lcom/samsung/privilege/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 192
    .local v2, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/samsung/privilege/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 194
    .local v3, "d2":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 195
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 197
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 201
    .local v4, "diff":J
    return-wide v4
.end method

.method public static diffMinutes(Ljava/util/Date;Ljava/util/Date;)J
    .registers 10
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 183
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    .line 187
    .local v2, "diff":J
    return-wide v2
.end method

.method public static distance(DDDD)D
    .registers 18
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 418
    sub-double v2, p2, p6

    .line 419
    .local v2, "theta":D
    invoke-static {p0, p1}, Lcom/samsung/privilege/util/BBUtil;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Lcom/samsung/privilege/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {p0, p1}, Lcom/samsung/privilege/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p4, p5}, Lcom/samsung/privilege/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 420
    .local v0, "dist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 421
    invoke-static {v0, v1}, Lcom/samsung/privilege/util/BBUtil;->rad2deg(D)D

    move-result-wide v0

    .line 422
    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr v4, v0

    const-wide v6, 0x3ff26c8b43958106L

    mul-double v0, v4, v6

    .line 423
    const-wide v4, 0x3ff9bfdf7e8038a0L

    mul-double/2addr v0, v4

    .line 424
    return-wide v0
.end method

.method public static dp_to_px(DLandroid/content/Context;)I
    .registers 8
    .param p0, "dp"    # D
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 936
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 937
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    mul-double/2addr v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method public static findDistFrom(DDDD)D
    .registers 27
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 405
    const-wide v10, 0x40aeed8000000000L

    .line 406
    .local v10, "earthRadius":D
    sub-double v13, p4, p0

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 407
    .local v4, "dLat":D
    sub-double v13, p6, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 408
    .local v6, "dLng":D
    const-wide/high16 v13, 0x4000000000000000L

    div-double v13, v4, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L

    div-double v15, v4, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L

    div-double v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4000000000000000L

    div-double v17, v6, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double v0, v13, v15

    .line 409
    .local v0, "a":D
    const-wide/high16 v13, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L

    sub-double v17, v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    mul-double v2, v13, v15

    .line 410
    .local v2, "c":D
    mul-double v8, v10, v2

    .line 412
    .local v8, "dist":D
    const/16 v12, 0x649

    .line 414
    .local v12, "meterConversion":I
    new-instance v13, Ljava/lang/Float;

    int-to-double v14, v12

    mul-double/2addr v14, v8

    invoke-direct {v13, v14, v15}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    return-wide v13
.end method

.method public static formatK(I)Ljava/lang/String;
    .registers 10
    .param p0, "number"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 863
    const/16 v4, 0x3e7

    if-ge p0, v4, :cond_d

    .line 864
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 914
    :goto_c
    return-object v4

    .line 867
    :cond_d
    const/16 v4, 0x270f

    if-ge p0, v4, :cond_57

    .line 868
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "str2":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 874
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 878
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_57
    const v4, 0x1869f

    if-ge p0, v4, :cond_78

    .line 879
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 880
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 881
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 884
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_78
    const v4, 0xf423f

    if-ge p0, v4, :cond_9a

    .line 885
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 886
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 887
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 890
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_9a
    const v4, 0x98967f

    if-ge p0, v4, :cond_e7

    .line 891
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 892
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 893
    .restart local v1    # "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 894
    .restart local v2    # "str2":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 897
    :cond_c8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 901
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_e7
    const v4, 0x5f5e0ff

    if-ge p0, v4, :cond_109

    .line 902
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 903
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 904
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 907
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_109
    const v4, 0x3b9ac9ff

    if-ge p0, v4, :cond_12b

    .line 908
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 910
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 913
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_12b
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "###,###,###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "formatterHasDigi":Ljava/text/NumberFormat;
    int-to-long v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c
.end method

.method public static getKMFromM(F)D
    .registers 7
    .param p0, "pM"    # F

    .prologue
    .line 385
    const-wide/16 v1, 0x0

    .line 388
    .local v1, "km":D
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x447a0000

    div-float v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/util/BBUtil;->roundMyData(DI)D
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result-wide v1

    .line 393
    :goto_1e
    return-wide v1

    .line 389
    :catch_1f
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_1e
.end method

.method public static px_to_dp(ILandroid/content/Context;)I
    .registers 7
    .param p0, "px"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 941
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 942
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method private static rad2deg(D)D
    .registers 6
    .param p0, "rad"    # D

    .prologue
    .line 432
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static registerGCM(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 723
    const-string v1, "GCM"

    const-string v2, "Call registerGCM()"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 734
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 737
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 744
    :goto_21
    return-void

    .line 739
    :cond_22
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Existing registration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {p0, v0}, Lcom/samsung/privilege/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 742
    invoke-static {p0}, Lcom/samsung/privilege/util/BBUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    goto :goto_21
.end method

.method public static roundMyData(DI)D
    .registers 11
    .param p0, "Rval"    # D
    .param p2, "numberOfDigitsAfterDecimal"    # I

    .prologue
    .line 397
    const-wide/high16 v4, 0x4024000000000000L

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v0, v4

    .line 398
    .local v0, "p":D
    mul-double/2addr p0, v0

    .line 399
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 401
    .local v2, "tmp":D
    div-double v4, v2, v0

    return-wide v4
.end method

.method public static setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V
    .registers 6
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "resource_id"    # I
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 918
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 933
    :cond_9
    :goto_9
    return-void

    .line 921
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 922
    .local v0, "nav":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1c

    .line 923
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 925
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 926
    if-eqz v0, :cond_9

    .line 927
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 928
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9
.end method

.method public static unRegisterGCM(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 747
    const-string v1, "GCM"

    const-string v2, "Call unRegisterGCM()"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 754
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_33

    .line 759
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnRegister from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 761
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/samsung/privilege/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 763
    invoke-static {p0}, Lcom/samsung/privilege/util/BBUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    .line 765
    :cond_33
    return-void
.end method


# virtual methods
.method public createRoundedCornerBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "radius"    # F
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 101
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 102
    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 103
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v1

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .local v3, "rect":Landroid/graphics/RectF;
    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-virtual {v0, v3, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    invoke-virtual {v0, p2, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    return-object v4
.end method
