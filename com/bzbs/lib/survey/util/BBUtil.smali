.class public Lcom/bzbs/lib/survey/util/BBUtil;
.super Ljava/lang/Object;
.source "BBUtil.java"


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final MINUTES:J = 0xea60L

.field private static a1:F

.field private static a2:F

.field private static b1:F

.field private static b2:F

.field private static xx1:F

.field private static xx2:F

.field private static xxx1:F

.field private static xxx2:F

.field private static yy1:F

.field private static yy2:F

.field private static yyy1:F

.field private static yyy2:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 196
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->a1:F

    .line 198
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->b1:F

    .line 487
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->xx1:F

    .line 489
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->yy1:F

    .line 513
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->xxx1:F

    .line 515
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->yyy1:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CDateToTime(JLandroid/content/Context;)Ljava/lang/String;
    .registers 25
    .param p0, "epochTime"    # J
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 332
    new-instance v10, Ljava/util/Date;

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, p0

    move-wide/from16 v0, v18

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 334
    .local v10, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 335
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 336
    .local v6, "current":J
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 337
    .local v16, "update":J
    sub-long v18, v6, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 339
    .local v14, "timeago":J
    const-wide/32 v18, 0x5265c00

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 340
    .local v9, "int_diff_days_now_and_parameter":I
    const/4 v13, 0x7

    if-lt v9, v13, :cond_46

    .line 341
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy-MM-dd HH:mm"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/Date;

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 387
    :goto_45
    return-object v13

    .line 342
    :cond_46
    const/4 v13, 0x2

    if-lt v9, v13, :cond_72

    .line 354
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v18, "EEEE \'at\' HH:mm"

    aput-object v18, v8, v13

    .line 355
    .local v8, "formats":[Ljava/lang/String;
    array-length v13, v8

    const/16 v18, 0x0

    move/from16 v0, v18

    if-ge v0, v13, :cond_17d

    aget-object v5, v8, v18

    .line 356
    .local v5, "format":Ljava/lang/String;
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 358
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/util/Date;

    const-wide/16 v18, 0x3e8

    mul-long v18, v18, p0

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto :goto_45

    .line 360
    .end local v5    # "format":Ljava/lang/String;
    .end local v8    # "formats":[Ljava/lang/String;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_72
    const/4 v13, 0x1

    if-lt v9, v13, :cond_93

    .line 361
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "\'yesterday\' \'at\' HH:mm"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/Date;

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto :goto_45

    .line 363
    :cond_93
    const-wide/32 v18, 0xea60

    cmp-long v13, v14, v18

    if-gtz v13, :cond_db

    .line 364
    const-wide/16 v18, 0x3e8

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 365
    .local v12, "time":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_ad

    .line 366
    sget v13, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_45

    .line 368
    :cond_ad
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v18, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_2:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_45

    .line 370
    .end local v12    # "time":I
    :cond_db
    const-wide/32 v18, 0x36ee80

    cmp-long v13, v14, v18

    if-gtz v13, :cond_12c

    const-wide/32 v18, 0xea60

    cmp-long v13, v14, v18

    if-ltz v13, :cond_12c

    .line 371
    const-wide/32 v18, 0xea60

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 372
    .restart local v12    # "time":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_fe

    .line 373
    sget v13, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_3:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_45

    .line 375
    :cond_fe
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v18, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_4:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_45

    .line 377
    .end local v12    # "time":I
    :cond_12c
    const-wide/32 v18, 0x5265c00

    cmp-long v13, v14, v18

    if-gtz v13, :cond_17d

    const-wide/32 v18, 0x36ee80

    cmp-long v13, v14, v18

    if-ltz v13, :cond_17d

    .line 378
    const-wide/32 v18, 0x36ee80

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 379
    .restart local v12    # "time":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_14f

    .line 380
    sget v13, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_5:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_45

    .line 382
    :cond_14f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v18, Lcom/bzbs/lib/survey/R$string;->facebook_lable_time_6:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_45

    .line 387
    .end local v12    # "time":I
    :cond_17d
    const-string/jumbo v13, ""

    goto/16 :goto_45
.end method

.method public static CDateToTimeOLD(J)Ljava/lang/String;
    .registers 14
    .param p0, "epochTime"    # J

    .prologue
    .line 293
    new-instance v1, Ljava/util/Date;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, p0

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 295
    .local v1, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 296
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 297
    .local v2, "current":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 298
    .local v8, "update":J
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 300
    .local v6, "timeago":J
    const-wide/32 v10, 0xea60

    cmp-long v5, v6, v10

    if-gtz v5, :cond_46

    .line 301
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 302
    .local v4, "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 303
    const-string/jumbo v5, "a second ago"

    .line 326
    :goto_2c
    return-object v5

    .line 305
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

    .line 307
    .end local v4    # "time":I
    :cond_46
    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-gtz v5, :cond_7a

    const-wide/32 v10, 0xea60

    cmp-long v5, v6, v10

    if-ltz v5, :cond_7a

    .line 308
    const-wide/32 v10, 0xea60

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 309
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_61

    .line 310
    const-string/jumbo v5, "about a minute ago"

    goto :goto_2c

    .line 312
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

    .line 314
    .end local v4    # "time":I
    :cond_7a
    const-wide/32 v10, 0x5265c00

    cmp-long v5, v6, v10

    if-gtz v5, :cond_af

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v6, v10

    if-ltz v5, :cond_af

    .line 315
    const-wide/32 v10, 0x36ee80

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 316
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_95

    .line 317
    const-string/jumbo v5, "about an hour ago"

    goto :goto_2c

    .line 319
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

    .line 322
    .end local v4    # "time":I
    :cond_af
    const-wide/32 v10, 0x5265c00

    div-long v10, v6, v10

    long-to-int v4, v10

    .line 323
    .restart local v4    # "time":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_bd

    .line 324
    const-string/jumbo v5, "yesterday"

    goto/16 :goto_2c

    .line 326
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
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 43
    :goto_8
    return-object v1

    .line 42
    :catch_9
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_8
.end method

.method public static CTypeFloat(Ljava/lang/String;)F
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 67
    :goto_4
    return v1

    .line 66
    :catch_5
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 51
    :goto_8
    return-object v1

    .line 50
    :catch_9
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8
.end method

.method public static CTypeLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 59
    :goto_8
    return-object v1

    .line 58
    :catch_9
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_8
.end method

.method public static CheckNetworkType()I
    .registers 4

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 394
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 395
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_f

    .line 396
    :cond_d
    const/4 v2, -0x1

    .line 401
    :goto_e
    return v2

    .line 400
    :cond_f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 401
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
    .line 110
    :try_start_0
    const-string/jumbo v3, ""

    if-ne p1, v3, :cond_8

    .line 111
    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 113
    :cond_8
    const-string/jumbo v3, ""

    if-ne p2, v3, :cond_10

    .line 114
    const-string/jumbo p2, "dd/MM/yyyy HH:mm"

    .line 117
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1e

    .line 118
    const-string/jumbo p1, "yyyy-MM-dd"

    .line 119
    const-string/jumbo p2, "dd MMM yyyy"

    .line 122
    :cond_1e
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v3

    .line 126
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_30
    return-object v3

    .line 125
    :catch_31
    move-exception v1

    .line 126
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
    .line 140
    :try_start_0
    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 141
    .local v3, "formatDate":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_e

    .line 142
    const-string/jumbo v3, "yyyy-MM-dd"

    .line 144
    :cond_e
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object v4, p0

    .line 147
    .local v4, "strDate":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 151
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatDate":Ljava/lang/String;
    .end local v4    # "strDate":Ljava/lang/String;
    :goto_18
    return-object v0

    .line 149
    :catch_19
    move-exception v2

    .line 150
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

    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static GetKeyFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 550
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "strKey":Ljava/lang/String;
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    .line 552
    const/4 v1, 0x0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_22
    return-object v0
.end method

.method public static GetTimeCurrentString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 132
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

    .line 133
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

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    .line 238
    :cond_9
    :goto_9
    return v3

    .line 206
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/lib/survey/util/BBUtil;->a1:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/lib/survey/util/BBUtil;->b1:F

    goto :goto_9

    .line 210
    :pswitch_17
    const-string/jumbo v2, ""

    .line 211
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lcom/bzbs/lib/survey/util/BBUtil;->a2:F

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lcom/bzbs/lib/survey/util/BBUtil;->b2:F

    .line 213
    sget v4, Lcom/bzbs/lib/survey/util/BBUtil;->a2:F

    sget v5, Lcom/bzbs/lib/survey/util/BBUtil;->a1:F

    sub-float v0, v4, v5

    .line 214
    .local v0, "differenceInX":F
    sget v4, Lcom/bzbs/lib/survey/util/BBUtil;->b2:F

    sget v5, Lcom/bzbs/lib/survey/util/BBUtil;->b1:F

    sub-float v1, v4, v5

    .line 217
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 218
    cmpl-float v4, v0, v6

    if-lez v4, :cond_6a

    .line 219
    const-string/jumbo v2, "right"

    .line 231
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

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v4, "up"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 233
    const/4 v3, 0x1

    goto :goto_9

    .line 221
    :cond_6a
    const-string/jumbo v2, "left"

    goto :goto_45

    .line 224
    :cond_6e
    cmpl-float v4, v1, v6

    if-lez v4, :cond_76

    .line 225
    const-string/jumbo v2, "down"

    goto :goto_45

    .line 227
    :cond_76
    const-string/jumbo v2, "up"

    goto :goto_45

    .line 204
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_17
    .end packed-switch
.end method

.method public static IsSamsungMobile()Z
    .registers 6

    .prologue
    .line 405
    const/4 v3, 0x1

    .line 407
    .local v3, "isCheckSamsung":Z
    :try_start_1
    const-string v1, "samsung"

    .line 408
    .local v1, "MANUFACTURER":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 409
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 410
    const/4 v3, 0x1

    .line 429
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :goto_13
    return v3

    .line 412
    .restart local v1    # "MANUFACTURER":Ljava/lang/String;
    :cond_14
    const/4 v3, 0x0

    goto :goto_13

    .line 415
    :cond_16
    const-string v0, "samsung"

    .line 416
    .local v0, "BRAND":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 417
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_2d

    move-result v4

    if-eqz v4, :cond_29

    .line 418
    const/4 v3, 0x1

    goto :goto_13

    .line 420
    :cond_29
    const/4 v3, 0x0

    goto :goto_13

    .line 423
    :cond_2b
    const/4 v3, 0x0

    goto :goto_13

    .line 426
    .end local v0    # "BRAND":Ljava/lang/String;
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :catch_2d
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static IsSlideToDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 510
    :cond_8
    :goto_8
    return v1

    .line 495
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->xx1:F

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->yy1:F

    goto :goto_8

    .line 499
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->xx2:F

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->yy2:F

    .line 502
    sget v2, Lcom/bzbs/lib/survey/util/BBUtil;->yy2:F

    sget v3, Lcom/bzbs/lib/survey/util/BBUtil;->yy1:F

    sub-float v0, v2, v3

    .line 504
    .local v0, "differenceInY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 505
    const/4 v1, 0x1

    goto :goto_8

    .line 493
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static IsSlideToUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 536
    :cond_8
    :goto_8
    return v1

    .line 521
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->xxx1:F

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->yyy1:F

    goto :goto_8

    .line 525
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->xxx2:F

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lcom/bzbs/lib/survey/util/BBUtil;->yyy2:F

    .line 528
    sget v2, Lcom/bzbs/lib/survey/util/BBUtil;->yyy1:F

    sget v3, Lcom/bzbs/lib/survey/util/BBUtil;->yyy2:F

    sub-float v0, v2, v3

    .line 530
    .local v0, "differenceInY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 531
    const/4 v1, 0x1

    goto :goto_8

    .line 519
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static daysBetweenDates(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "pD1"    # Ljava/lang/String;
    .param p1, "pD2"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 163
    .local v0, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 165
    .local v1, "d2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 167
    .local v2, "days":I
    return v2
.end method

.method public static daysBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 8
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 158
    .local v0, "days":I
    return v0
.end method

.method private static deg2rad(D)D
    .registers 6
    .param p0, "deg"    # D

    .prologue
    .line 285
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
    .line 183
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 184
    .local v2, "d1":Ljava/util/Date;
    invoke-static {p1}, Lcom/bzbs/lib/survey/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 186
    .local v3, "d2":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 189
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 191
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 193
    .local v4, "diff":J
    return-wide v4
.end method

.method public static diffMinutes(Ljava/util/Date;Ljava/util/Date;)J
    .registers 10
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 175
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 177
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    .line 179
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
    .line 275
    sub-double v2, p2, p6

    .line 276
    .local v2, "theta":D
    invoke-static {p0, p1}, Lcom/bzbs/lib/survey/util/BBUtil;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Lcom/bzbs/lib/survey/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {p0, p1}, Lcom/bzbs/lib/survey/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p4, p5}, Lcom/bzbs/lib/survey/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 277
    .local v0, "dist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 278
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/BBUtil;->rad2deg(D)D

    move-result-wide v0

    .line 279
    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr v4, v0

    const-wide v6, 0x3ff26c8b43958106L

    mul-double v0, v4, v6

    .line 280
    const-wide v4, 0x3ff9bfdf7e8038a0L

    mul-double/2addr v0, v4

    .line 281
    return-wide v0
.end method

.method public static dp_to_px(DLandroid/content/Context;)I
    .registers 9
    .param p0, "dp"    # D
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 540
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 541
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
    .line 262
    const-wide v10, 0x40aeed8000000000L

    .line 263
    .local v10, "earthRadius":D
    sub-double v14, p4, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 264
    .local v4, "dLat":D
    sub-double v14, p6, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 265
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

    .line 266
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

    .line 267
    .local v2, "c":D
    mul-double v8, v10, v2

    .line 269
    .local v8, "dist":D
    const/16 v12, 0x649

    .line 271
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

    .line 433
    const/16 v4, 0x3e7

    if-ge p0, v4, :cond_d

    .line 434
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 484
    :goto_c
    return-object v4

    .line 437
    :cond_d
    const/16 v4, 0x270f

    if-ge p0, v4, :cond_5b

    .line 438
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "str2":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 442
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

    .line 444
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

    .line 448
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_5b
    const v4, 0x1869f

    if-ge p0, v4, :cond_7d

    .line 449
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 451
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

    .line 454
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_7d
    const v4, 0xf423f

    if-ge p0, v4, :cond_a0

    .line 455
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 457
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

    .line 460
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_a0
    const v4, 0x98967f

    if-ge p0, v4, :cond_f1

    .line 461
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 463
    .restart local v1    # "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 464
    .restart local v2    # "str2":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 465
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

    .line 467
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

    .line 471
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_f1
    const v4, 0x5f5e0ff

    if-ge p0, v4, :cond_114

    .line 472
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 474
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

    .line 477
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_114
    const v4, 0x3b9ac9ff

    if-ge p0, v4, :cond_137

    .line 478
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 480
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

    .line 483
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_137
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v4, "###,###,###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "formatterHasDigi":Ljava/text/NumberFormat;
    int-to-long v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .registers 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 576
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 577
    const-wide/16 v2, 0x0

    .line 578
    .local v2, "result":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 579
    .local v0, "fileList":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v4, v0

    if-ge v1, v4, :cond_2c

    .line 581
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 582
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/bzbs/lib/survey/util/BBUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 579
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 585
    :cond_22
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1f

    .line 590
    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "result":J
    :cond_2a
    const-wide/16 v2, 0x0

    :cond_2c
    return-wide v2
.end method

.method public static getKMFromM(F)D
    .registers 7
    .param p0, "pM"    # F

    .prologue
    .line 242
    const-wide/16 v2, 0x0

    .line 245
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

    invoke-static {v4, v5, v1}, Lcom/bzbs/lib/survey/util/BBUtil;->roundMyData(DI)D
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-result-wide v2

    .line 250
    :goto_23
    return-wide v2

    .line 246
    :catch_24
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_23
.end method

.method public static getUnitFileSize(JI)D
    .registers 23
    .param p0, "pBytes"    # J
    .param p2, "pEnumType"    # I

    .prologue
    .line 595
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 596
    .local v0, "bytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v6, v0, v18

    .line 597
    .local v6, "kilobytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v8, v6, v18

    .line 598
    .local v8, "megabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v4, v8, v18

    .line 599
    .local v4, "gigabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v12, v4, v18

    .line 600
    .local v12, "terabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v10, v12, v18

    .line 601
    .local v10, "petabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v2, v10, v18

    .line 602
    .local v2, "exabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v16, v2, v18

    .line 603
    .local v16, "zettabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v14, v16, v18

    .line 605
    .local v14, "yottabytes":D
    packed-switch p2, :pswitch_data_48

    .line 627
    const-wide/16 v0, 0x0

    .end local v0    # "bytes":D
    :goto_35
    :pswitch_35
    return-wide v0

    .restart local v0    # "bytes":D
    :pswitch_36
    move-wide v0, v6

    .line 609
    goto :goto_35

    :pswitch_38
    move-wide v0, v8

    .line 611
    goto :goto_35

    :pswitch_3a
    move-wide v0, v4

    .line 613
    goto :goto_35

    :pswitch_3c
    move-wide v0, v12

    .line 615
    goto :goto_35

    :pswitch_3e
    move-wide v0, v10

    .line 617
    goto :goto_35

    :pswitch_40
    move-wide v0, v2

    .line 619
    goto :goto_35

    :pswitch_42
    move-wide/from16 v0, v16

    .line 621
    goto :goto_35

    :pswitch_45
    move-wide v0, v14

    .line 623
    goto :goto_35

    .line 605
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method

.method public static px_to_dp(ILandroid/content/Context;)I
    .registers 8
    .param p0, "px"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 546
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
    .line 289
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
    .line 254
    const-wide/high16 v4, 0x4024000000000000L

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v0, v4

    .line 255
    .local v0, "p":D
    mul-double/2addr p0, v0

    .line 256
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 258
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
    .line 558
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    .line 559
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    :cond_9
    :goto_9
    return-void

    .line 561
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 562
    .local v0, "nav":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1c

    .line 563
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 565
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    if-eqz v0, :cond_9

    .line 567
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 568
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9
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
