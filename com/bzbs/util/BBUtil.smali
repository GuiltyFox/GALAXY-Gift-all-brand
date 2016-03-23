.class public Lcom/bzbs/util/BBUtil;
.super Ljava/lang/Object;
.source "BBUtil.java"


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

    .line 235
    sput v0, Lcom/bzbs/util/BBUtil;->x1:F

    .line 237
    sput v0, Lcom/bzbs/util/BBUtil;->y1:F

    .line 308
    sput v0, Lcom/bzbs/util/BBUtil;->a1:F

    .line 310
    sput v0, Lcom/bzbs/util/BBUtil;->b1:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CDateToTime(J)Ljava/lang/String;
    .registers 14
    .param p0, "epochTime"    # J

    .prologue
    .line 425
    new-instance v1, Ljava/util/Date;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, p0

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 427
    .local v1, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 428
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 429
    .local v2, "current":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 430
    .local v8, "update":J
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 432
    .local v6, "timeago":J
    const-wide/32 v10, 0xea60

    cmp-long v5, v6, v10

    if-gtz v5, :cond_46

    .line 433
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 434
    .local v4, "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 435
    const-string/jumbo v5, "a second ago"

    .line 458
    :goto_2c
    return-object v5

    .line 437
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " seconds ago"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 439
    .end local v4    # "time":I
    :cond_46
    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-gtz v5, :cond_7a

    const-wide/32 v10, 0xea60

    cmp-long v5, v6, v10

    if-ltz v5, :cond_7a

    .line 440
    const-wide/32 v10, 0xea60

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 441
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_61

    .line 442
    const-string/jumbo v5, "about a minute ago"

    goto :goto_2c

    .line 444
    :cond_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " minutes ago"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 446
    .end local v4    # "time":I
    :cond_7a
    const-wide/32 v10, 0x5265c00

    cmp-long v5, v6, v10

    if-gtz v5, :cond_af

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_af

    .line 447
    const-wide/32 v10, 0x36ee80

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 448
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_95

    .line 449
    const-string/jumbo v5, "about an hour ago"

    goto :goto_2c

    .line 451
    :cond_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " hours ago"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2c

    .line 454
    .end local v4    # "time":I
    :cond_af
    const-wide/32 v10, 0x5265c00

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 455
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_bd

    .line 456
    const-string/jumbo v5, "yesterday"

    goto/16 :goto_2c

    .line 458
    :cond_bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " days ago"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2c
.end method

.method public static CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 43
    :goto_1c
    return-object v1

    .line 42
    :catch_1d
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1c
.end method

.method public static CTypeFloat(Ljava/lang/String;)F
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v1

    .line 67
    :goto_18
    return v1

    .line 66
    :catch_19
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 51
    :goto_1c
    return-object v1

    .line 50
    :catch_1d
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1c
.end method

.method public static CTypeLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 59
    :goto_1c
    return-object v1

    .line 58
    :catch_1d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1c
.end method

.method public static CheckNetworkType()I
    .registers 4

    .prologue
    .line 464
    const/4 v1, 0x0

    .line 467
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 468
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_f

    .line 469
    :cond_d
    const/4 v2, -0x1

    .line 474
    :goto_e
    return v2

    .line 473
    :cond_f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 474
    .local v2, "netType":I
    goto :goto_e
.end method

.method public static CtypeBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 75
    :goto_4
    return v1

    .line 74
    :catch_5
    move-exception v0

    .line 75
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
    .line 108
    :try_start_0
    const-string/jumbo v3, ""

    if-ne p1, v3, :cond_8

    .line 109
    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 111
    :cond_8
    const-string/jumbo v3, ""

    if-ne p2, v3, :cond_10

    .line 112
    const-string/jumbo p2, "dd/MM/yyyy HH:mm"

    .line 115
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1e

    .line 116
    const-string/jumbo p1, "yyyy-MM-dd"

    .line 117
    const-string/jumbo p2, "dd MMM yyyy"

    .line 120
    :cond_1e
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v3

    .line 124
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_30
    return-object v3

    .line 123
    :catch_31
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    goto :goto_30
.end method

.method public static CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 83
    :goto_4
    return-object v1

    .line 82
    :catch_5
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_4
.end method

.method public static GetDateFromString(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 138
    .local v3, "formatDate":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_e

    .line 139
    const-string/jumbo v3, "yyyy-MM-dd"

    .line 141
    :cond_e
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object v4, p0

    .line 144
    .local v4, "strDate":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 148
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatDate":Ljava/lang/String;
    .end local v4    # "strDate":Ljava/lang/String;
    :goto_18
    return-object v0

    .line 146
    :catch_19
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ERROR="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static GetTimeCurrentString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 130
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02d"

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

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02d"

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

    .line 131
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

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    .line 350
    :cond_9
    :goto_9
    return v3

    .line 318
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->a1:F

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->b1:F

    goto :goto_9

    .line 322
    :pswitch_17
    const-string/jumbo v2, ""

    .line 323
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->a2:F

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->b2:F

    .line 325
    sget v4, Lcom/bzbs/util/BBUtil;->a2:F

    sget v5, Lcom/bzbs/util/BBUtil;->a1:F

    sub-float v0, v4, v5

    .line 326
    .local v0, "differenceInX":F
    sget v4, Lcom/bzbs/util/BBUtil;->b2:F

    sget v5, Lcom/bzbs/util/BBUtil;->b1:F

    sub-float v1, v4, v5

    .line 329
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 330
    cmpl-float v4, v0, v6

    if-lez v4, :cond_6a

    .line 331
    const-string/jumbo v2, "right"

    .line 343
    :goto_45
    const-string/jumbo v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "direction_IsClick "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v4, "up"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 345
    const/4 v3, 0x1

    goto :goto_9

    .line 333
    :cond_6a
    const-string/jumbo v2, "left"

    goto :goto_45

    .line 336
    :cond_6e
    cmpl-float v4, v1, v6

    if-lez v4, :cond_76

    .line 337
    const-string/jumbo v2, "down"

    goto :goto_45

    .line 339
    :cond_76
    const-string/jumbo v2, "up"

    goto :goto_45

    .line 316
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_17
    .end packed-switch
.end method

.method public static IsSamsungMobile()Z
    .registers 6

    .prologue
    .line 490
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 491
    .local v1, "MANUFACTURER":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 493
    const/4 v3, 0x1

    .line 512
    .local v3, "isCheckSamsung":Z
    :goto_12
    return v3

    .line 495
    .end local v3    # "isCheckSamsung":Z
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "isCheckSamsung":Z
    goto :goto_12

    .line 498
    .end local v3    # "isCheckSamsung":Z
    :cond_15
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 499
    .local v0, "BRAND":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 500
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_2c

    move-result v4

    if-eqz v4, :cond_28

    .line 501
    const/4 v3, 0x1

    .restart local v3    # "isCheckSamsung":Z
    goto :goto_12

    .line 503
    .end local v3    # "isCheckSamsung":Z
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "isCheckSamsung":Z
    goto :goto_12

    .line 506
    .end local v3    # "isCheckSamsung":Z
    :cond_2a
    const/4 v3, 0x0

    .restart local v3    # "isCheckSamsung":Z
    goto :goto_12

    .line 509
    .end local v0    # "BRAND":Ljava/lang/String;
    .end local v3    # "isCheckSamsung":Z
    :catch_2c
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "isCheckSamsung":Z
    goto :goto_12
.end method

.method public static IsSlideToDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 305
    :cond_8
    :goto_8
    return v1

    .line 289
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/util/BBUtil;->x1:F

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/util/BBUtil;->y1:F

    goto :goto_8

    .line 293
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/util/BBUtil;->x2:F

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/util/BBUtil;->y2:F

    .line 296
    sget v2, Lcom/bzbs/util/BBUtil;->y2:F

    sget v3, Lcom/bzbs/util/BBUtil;->y1:F

    sub-float v0, v2, v3

    .line 298
    .local v0, "differenceInY":F
    const/high16 v2, 0x41f00000

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 300
    const/4 v1, 0x1

    goto :goto_8

    .line 287
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

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_ea

    .line 283
    :cond_9
    :goto_9
    return v3

    .line 244
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->x1:F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->y1:F

    goto :goto_9

    .line 248
    :pswitch_17
    const-string/jumbo v2, ""

    .line 249
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->x2:F

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/util/BBUtil;->y2:F

    .line 251
    sget v4, Lcom/bzbs/util/BBUtil;->x2:F

    sget v5, Lcom/bzbs/util/BBUtil;->x1:F

    sub-float v0, v4, v5

    .line 252
    .local v0, "differenceInX":F
    sget v4, Lcom/bzbs/util/BBUtil;->y2:F

    sget v5, Lcom/bzbs/util/BBUtil;->y1:F

    sub-float v1, v4, v5

    .line 255
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_dc

    .line 256
    cmpl-float v4, v0, v6

    if-lez v4, :cond_9f

    .line 257
    const-string/jumbo v2, "right"

    .line 274
    :goto_45
    const-string/jumbo v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "direction_IsSlideToLeft "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "direction_IsSlideToLeft_InX "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "direction_IsSlideToLeft_InY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v4, "left"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 278
    const/4 v3, 0x1

    goto/16 :goto_9

    .line 259
    :cond_9f
    const-string/jumbo v4, "BBUtil_IsSlideToLeft"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(Math.abs(differenceInX) - Math.abs(differenceInY)) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    sget v5, Lcom/bzbs/data/AppSetting;->gIntDifferenceInXMoreThanInY:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d7

    .line 261
    const-string/jumbo v2, "left"

    goto/16 :goto_45

    .line 263
    :cond_d7
    const-string/jumbo v2, ""

    goto/16 :goto_45

    .line 267
    :cond_dc
    cmpl-float v4, v1, v6

    if-lez v4, :cond_e5

    .line 268
    const-string/jumbo v2, "down"

    goto/16 :goto_45

    .line 270
    :cond_e5
    const-string/jumbo v2, "up"

    goto/16 :goto_45

    .line 242
    :pswitch_data_ea
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

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "x1":F
    const/4 v5, 0x0

    .line 198
    .local v5, "y1":F
    const-string/jumbo v0, ""

    .line 199
    .local v0, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_54

    .line 228
    :goto_d
    const-string/jumbo v7, "left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 229
    const/4 v7, 0x1

    .line 231
    :goto_17
    return v7

    .line 201
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 203
    goto :goto_d

    .line 205
    :pswitch_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 206
    .local v4, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 207
    .local v6, "y2":F
    sub-float v1, v4, v3

    .line 208
    .local v1, "dx":F
    sub-float v2, v6, v5

    .line 211
    .local v2, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_45

    .line 212
    cmpl-float v7, v1, v9

    if-lez v7, :cond_41

    .line 213
    const-string/jumbo v0, "right"

    goto :goto_d

    .line 215
    :cond_41
    const-string/jumbo v0, "left"

    goto :goto_d

    .line 219
    :cond_45
    cmpl-float v7, v2, v9

    if-lez v7, :cond_4d

    .line 220
    const-string/jumbo v0, "left"

    goto :goto_d

    .line 222
    :cond_4d
    const-string/jumbo v0, "up"

    goto :goto_d

    .line 231
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "x2":F
    .end local v6    # "y2":F
    :cond_51
    const/4 v7, 0x0

    goto :goto_17

    .line 199
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_18
        :pswitch_21
    .end packed-switch
.end method

.method public static daysBetweenDates(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "pD1"    # Ljava/lang/String;
    .param p1, "pD2"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/bzbs/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 160
    .local v0, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/bzbs/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 162
    .local v1, "d2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 164
    .local v2, "days":I
    return v2
.end method

.method public static daysBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 155
    .local v0, "days":I
    return v0
.end method

.method private static deg2rad(D)D
    .registers 6
    .param p0, "deg"    # D

    .prologue
    .line 417
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
    .line 180
    invoke-static {p0}, Lcom/bzbs/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 181
    .local v2, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/bzbs/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 183
    .local v3, "d2":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 186
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 190
    .local v4, "diff":J
    return-wide v4
.end method

.method public static diffMinutes(Ljava/util/Date;Ljava/util/Date;)J
    .registers 10
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 172
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    .line 176
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
    .line 407
    sub-double v2, p2, p6

    .line 408
    .local v2, "theta":D
    invoke-static {p0, p1}, Lcom/bzbs/util/BBUtil;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Lcom/bzbs/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {p0, p1}, Lcom/bzbs/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p4, p5}, Lcom/bzbs/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Lcom/bzbs/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 409
    .local v0, "dist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 410
    invoke-static {v0, v1}, Lcom/bzbs/util/BBUtil;->rad2deg(D)D

    move-result-wide v0

    .line 411
    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr v4, v0

    const-wide v6, 0x3ff26c8b43958106L

    mul-double v0, v4, v6

    .line 412
    const-wide v4, 0x3ff9bfdf7e8038a0L

    mul-double/2addr v0, v4

    .line 413
    return-wide v0
.end method

.method public static dp_to_px(DLandroid/content/Context;)I
    .registers 9
    .param p0, "dp"    # D
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 589
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 590
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method public static findDistFrom(DDDD)D
    .registers 28
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 394
    const-wide v10, 0x40aeed8000000000L

    .line 395
    .local v10, "earthRadius":D
    sub-double v14, p4, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 396
    .local v4, "dLat":D
    sub-double v14, p6, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 397
    .local v6, "dLng":D
    const-wide/high16 v14, 0x4000000000000000L

    div-double v14, v4, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L

    div-double v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L

    div-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L

    div-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v0, v14, v16

    .line 398
    .local v0, "a":D
    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L

    sub-double v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    mul-double v2, v14, v16

    .line 399
    .local v2, "c":D
    mul-double v8, v10, v2

    .line 401
    .local v8, "dist":D
    const/16 v12, 0x649

    .line 403
    .local v12, "meterConversion":I
    new-instance v13, Ljava/lang/Float;

    int-to-double v14, v12

    mul-double/2addr v14, v8

    invoke-direct {v13, v14, v15}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v14, v13

    return-wide v14
.end method

.method public static formatK(I)Ljava/lang/String;
    .registers 10
    .param p0, "number"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    const/16 v4, 0x3e7

    if-ge p0, v4, :cond_d

    .line 517
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    :goto_c
    return-object v4

    .line 520
    :cond_d
    const/16 v4, 0x270f

    if-ge p0, v4, :cond_5b

    .line 521
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "str2":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 527
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 531
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_5b
    const v4, 0x1869f

    if-ge p0, v4, :cond_7d

    .line 532
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 534
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 537
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_7d
    const v4, 0xf423f

    if-ge p0, v4, :cond_a0

    .line 538
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 539
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 543
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_a0
    const v4, 0x98967f

    if-ge p0, v4, :cond_f1

    .line 544
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 546
    .restart local v1    # "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 547
    .restart local v2    # "str2":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 550
    :cond_d0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 554
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_f1
    const v4, 0x5f5e0ff

    if-ge p0, v4, :cond_114

    .line 555
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 557
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 560
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_114
    const v4, 0x3b9ac9ff

    if-ge p0, v4, :cond_137

    .line 561
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 562
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 563
    .restart local v1    # "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 566
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_137
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v4, "###,###,###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 567
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
    .line 374
    const-wide/16 v2, 0x0

    .line 377
    .local v2, "km":D
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x447a0000

    div-float v4, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v1, 0x2

    invoke-static {v4, v5, v1}, Lcom/bzbs/util/BBUtil;->roundMyData(DI)D
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-result-wide v2

    .line 382
    :goto_23
    return-wide v2

    .line 378
    :catch_24
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_23
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .registers 6
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string/jumbo v3, "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})$"

    .line 650
    .local v3, "regExpn":Ljava/lang/String;
    move-object v0, p0

    .line 652
    .local v0, "inputStr":Ljava/lang/CharSequence;
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 653
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 655
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 656
    const/4 v4, 0x1

    .line 658
    :goto_14
    return v4

    :cond_15
    const/4 v4, 0x0

    goto :goto_14
.end method

.method public static px_to_dp(ILandroid/content/Context;)I
    .registers 8
    .param p0, "px"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 595
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private static rad2deg(D)D
    .registers 6
    .param p0, "rad"    # D

    .prologue
    .line 421
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static roundMyData(DI)D
    .registers 11
    .param p0, "Rval"    # D
    .param p2, "numberOfDigitsAfterDecimal"    # I

    .prologue
    .line 386
    const-wide/high16 v4, 0x4024000000000000L

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v0, v4

    .line 387
    .local v0, "p":D
    mul-double/2addr p0, v0

    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 390
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
    .line 571
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    .line 572
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    :cond_9
    :goto_9
    return-void

    .line 574
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 575
    .local v0, "nav":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1c

    .line 576
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 579
    if-eqz v0, :cond_9

    .line 580
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9
.end method

.method public static setNotificationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "epochTime"    # Ljava/lang/String;

    .prologue
    .line 599
    const-string/jumbo v9, ""

    .line 600
    .local v9, "tvTime":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 601
    .local v6, "epoch":J
    new-instance v3, Ljava/util/Date;

    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v6

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 602
    .local v3, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 603
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 604
    .local v4, "current":J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 605
    .local v12, "update":J
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 606
    .local v10, "timeago":J
    const-wide/32 v14, 0xea60

    cmp-long v14, v10, v14

    if-gtz v14, :cond_60

    .line 607
    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v8, v14

    .line 608
    .local v8, "time":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_3a

    .line 609
    const v14, 0x7f090251

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 637
    :goto_39
    return-object v9

    .line 611
    :cond_3a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090252

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_39

    .line 613
    .end local v8    # "time":I
    :cond_60
    const-wide/32 v14, 0x36ee80

    cmp-long v14, v10, v14

    if-gtz v14, :cond_a7

    const-wide/32 v14, 0xea60

    cmp-long v14, v10, v14

    if-ltz v14, :cond_a7

    .line 614
    const-wide/32 v14, 0xea60

    div-long v14, v10, v14

    long-to-int v8, v14

    .line 615
    .restart local v8    # "time":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_81

    .line 616
    const v14, 0x7f090253

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_39

    .line 618
    :cond_81
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090254

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_39

    .line 620
    .end local v8    # "time":I
    :cond_a7
    const-wide/32 v14, 0x5265c00

    cmp-long v14, v10, v14

    if-gtz v14, :cond_f0

    const-wide/32 v14, 0x36ee80

    cmp-long v14, v10, v14

    if-ltz v14, :cond_f0

    .line 621
    const-wide/32 v14, 0x36ee80

    div-long v14, v10, v14

    long-to-int v8, v14

    .line 622
    .restart local v8    # "time":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_c9

    .line 623
    const v14, 0x7f090255

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    .line 625
    :cond_c9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090256

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    .line 628
    .end local v8    # "time":I
    :cond_f0
    const-wide/32 v14, 0x5265c00

    div-long v14, v10, v14

    long-to-int v8, v14

    .line 629
    .restart local v8    # "time":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_104

    .line 630
    const v14, 0x7f090257

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    .line 631
    :cond_104
    const/4 v14, 0x1

    if-eq v8, v14, :cond_131

    const/4 v14, 0x4

    if-ge v8, v14, :cond_131

    .line 632
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f090258

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39

    .line 634
    :cond_131
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "dd/MM/yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v6

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_39
.end method


# virtual methods
.method public createRoundedCornerBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "radius"    # F
    .param p2, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 90
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 91
    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 92
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 95
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v1

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    .local v3, "rect":Landroid/graphics/RectF;
    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v0, v3, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 98
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 99
    invoke-virtual {v0, p2, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 102
    return-object v4
.end method
