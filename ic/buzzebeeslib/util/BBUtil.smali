.class public Lic/buzzebeeslib/util/BBUtil;
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

.field private static xx1:F

.field private static xx2:F

.field private static xxx1:F

.field private static xxx2:F

.field private static y1:F

.field private static y2:F

.field private static yy1:F

.field private static yy2:F

.field private static yyy1:F

.field private static yyy2:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 197
    sput v0, Lic/buzzebeeslib/util/BBUtil;->a1:F

    .line 199
    sput v0, Lic/buzzebeeslib/util/BBUtil;->b1:F

    .line 488
    sput v0, Lic/buzzebeeslib/util/BBUtil;->xx1:F

    .line 490
    sput v0, Lic/buzzebeeslib/util/BBUtil;->yy1:F

    .line 514
    sput v0, Lic/buzzebeeslib/util/BBUtil;->xxx1:F

    .line 516
    sput v0, Lic/buzzebeeslib/util/BBUtil;->yyy1:F

    .line 540
    sput v0, Lic/buzzebeeslib/util/BBUtil;->x1:F

    .line 542
    sput v0, Lic/buzzebeeslib/util/BBUtil;->y1:F

    .line 543
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CDateToTime(JLandroid/content/Context;)Ljava/lang/String;
    .registers 21
    .param p0, "epochTime"    # J
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 333
    new-instance v7, Ljava/util/Date;

    const-wide/16 v14, 0x3e8

    mul-long v14, v14, p0

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 335
    .local v7, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 336
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 337
    .local v2, "current":J
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 338
    .local v12, "update":J
    sub-long v14, v2, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    .line 340
    .local v10, "timeago":J
    const-wide/32 v14, 0x5265c00

    div-long v14, v10, v14

    long-to-int v6, v14

    .line 341
    .local v6, "int_diff_days_now_and_parameter":I
    const/4 v14, 0x7

    if-lt v6, v14, :cond_39

    .line 342
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd HH:mm"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, p0

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 388
    :goto_38
    return-object v14

    .line 343
    :cond_39
    const/4 v14, 0x2

    if-lt v6, v14, :cond_5f

    .line 355
    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "EEEE \'at\' HH:mm"

    aput-object v15, v5, v14

    .line 356
    .local v5, "formats":[Ljava/lang/String;
    array-length v14, v5

    if-eqz v14, :cond_13f

    const/4 v14, 0x0

    aget-object v4, v5, v14

    .line 357
    .local v4, "format":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v4, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 359
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/util/Date;

    const-wide/16 v15, 0x3e8

    mul-long v15, v15, p0

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    .line 361
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "formats":[Ljava/lang/String;
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5f
    const/4 v14, 0x1

    if-lt v6, v14, :cond_77

    .line 362
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "\'yesterday\' \'at\' HH:mm"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, p0

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    .line 364
    :cond_77
    const-wide/32 v14, 0xea60

    cmp-long v14, v10, v14

    if-gtz v14, :cond_b3

    .line 365
    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    long-to-int v9, v14

    .line 366
    .local v9, "time":I
    const/4 v14, 0x1

    if-ne v9, v14, :cond_8f

    .line 367
    sget v14, Lic/buzzebeeslib/R$string;->facebook_lable_time_1:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    .line 369
    :cond_8f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lic/buzzebeeslib/R$string;->facebook_lable_time_2:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_38

    .line 371
    .end local v9    # "time":I
    :cond_b3
    const-wide/32 v14, 0x36ee80

    cmp-long v14, v10, v14

    if-gtz v14, :cond_f9

    const-wide/32 v14, 0xea60

    cmp-long v14, v10, v14

    if-ltz v14, :cond_f9

    .line 372
    const-wide/32 v14, 0xea60

    div-long v14, v10, v14

    long-to-int v9, v14

    .line 373
    .restart local v9    # "time":I
    const/4 v14, 0x1

    if-ne v9, v14, :cond_d4

    .line 374
    sget v14, Lic/buzzebeeslib/R$string;->facebook_lable_time_3:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_38

    .line 376
    :cond_d4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lic/buzzebeeslib/R$string;->facebook_lable_time_4:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_38

    .line 378
    .end local v9    # "time":I
    :cond_f9
    const-wide/32 v14, 0x5265c00

    cmp-long v14, v10, v14

    if-gtz v14, :cond_13f

    const-wide/32 v14, 0x36ee80

    cmp-long v14, v10, v14

    if-ltz v14, :cond_13f

    .line 379
    const-wide/32 v14, 0x36ee80

    div-long v14, v10, v14

    long-to-int v9, v14

    .line 380
    .restart local v9    # "time":I
    const/4 v14, 0x1

    if-ne v9, v14, :cond_11a

    .line 381
    sget v14, Lic/buzzebeeslib/R$string;->facebook_lable_time_5:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_38

    .line 383
    :cond_11a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lic/buzzebeeslib/R$string;->facebook_lable_time_6:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_38

    .line 388
    .end local v9    # "time":I
    :cond_13f
    const-string v14, ""

    goto/16 :goto_38
.end method

.method public static CDateToTimeOLD(J)Ljava/lang/String;
    .registers 13
    .param p0, "epochTime"    # J

    .prologue
    .line 294
    new-instance v3, Ljava/util/Date;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, p0

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 296
    .local v3, "nTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 297
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 298
    .local v1, "current":J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 299
    .local v7, "update":J
    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 301
    .local v5, "timeago":J
    const-wide/32 v9, 0xea60

    cmp-long v9, v5, v9

    if-gtz v9, :cond_44

    .line 302
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 303
    .local v4, "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2c

    .line 304
    const-string v9, "a second ago"

    .line 327
    :goto_2b
    return-object v9

    .line 306
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

    .line 308
    .end local v4    # "time":I
    :cond_44
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    if-gtz v9, :cond_76

    const-wide/32 v9, 0xea60

    cmp-long v9, v5, v9

    if-ltz v9, :cond_76

    .line 309
    const-wide/32 v9, 0xea60

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 310
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5e

    .line 311
    const-string v9, "about a minute ago"

    goto :goto_2b

    .line 313
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

    .line 315
    .end local v4    # "time":I
    :cond_76
    const-wide/32 v9, 0x5265c00

    cmp-long v9, v5, v9

    if-gtz v9, :cond_a8

    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    if-ltz v9, :cond_a8

    .line 316
    const-wide/32 v9, 0x36ee80

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 317
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_90

    .line 318
    const-string v9, "about an hour ago"

    goto :goto_2b

    .line 320
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

    .line 323
    .end local v4    # "time":I
    :cond_a8
    const-wide/32 v9, 0x5265c00

    div-long v9, v5, v9

    long-to-int v4, v9

    .line 324
    .restart local v4    # "time":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_b5

    .line 325
    const-string v9, "yesterday"

    goto/16 :goto_2b

    .line 327
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
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 44
    :goto_8
    return-object v1

    .line 43
    :catch_9
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_8
.end method

.method public static CTypeFloat(Ljava/lang/String;)F
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 68
    :goto_4
    return v1

    .line 67
    :catch_5
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 52
    :goto_8
    return-object v1

    .line 51
    :catch_9
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8
.end method

.method public static CTypeLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 60
    :goto_8
    return-object v1

    .line 59
    :catch_9
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_8
.end method

.method public static CheckNetworkType()I
    .registers 4

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 395
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 396
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_f

    .line 397
    :cond_d
    const/4 v2, -0x1

    .line 402
    :goto_e
    return v2

    .line 401
    :cond_f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 402
    .local v2, "netType":I
    goto :goto_e
.end method

.method public static CheckSlideDirection(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 546
    const/16 v3, 0x1e

    .line 548
    .local v3, "intDifferenceInXMoreThanInY":I
    const-string v2, ""

    .line 549
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_66

    .line 581
    :goto_c
    return-object v2

    .line 551
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->x1:F

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->y1:F

    goto :goto_c

    .line 555
    :pswitch_1a
    const-string v2, ""

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->x2:F

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->y2:F

    .line 558
    sget v4, Lic/buzzebeeslib/util/BBUtil;->x2:F

    sget v5, Lic/buzzebeeslib/util/BBUtil;->x1:F

    sub-float v0, v4, v5

    .line 559
    .local v0, "differenceInX":F
    sget v4, Lic/buzzebeeslib/util/BBUtil;->y2:F

    sget v5, Lic/buzzebeeslib/util/BBUtil;->y1:F

    sub-float v1, v4, v5

    .line 562
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5b

    .line 563
    cmpl-float v4, v0, v6

    if-lez v4, :cond_47

    .line 564
    const-string v2, "right"

    .line 565
    goto :goto_c

    .line 566
    :cond_47
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_58

    .line 567
    const-string v2, "left"

    .line 568
    goto :goto_c

    .line 569
    :cond_58
    const-string v2, ""

    .line 572
    goto :goto_c

    .line 573
    :cond_5b
    cmpl-float v4, v1, v6

    if-lez v4, :cond_62

    .line 574
    const-string v2, "down"

    .line 575
    goto :goto_c

    .line 576
    :cond_62
    const-string v2, "up"

    goto :goto_c

    .line 549
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1a
    .end packed-switch
.end method

.method public static CtypeBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 76
    :goto_4
    return v1

    .line 75
    :catch_5
    move-exception v0

    .line 76
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
    .line 111
    :try_start_0
    const-string v3, ""

    if-ne p1, v3, :cond_6

    .line 112
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 114
    :cond_6
    const-string v3, ""

    if-ne p2, v3, :cond_c

    .line 115
    const-string p2, "dd/MM/yyyy HH:mm"

    .line 118
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_18

    .line 119
    const-string p1, "yyyy-MM-dd"

    .line 120
    const-string p2, "dd MMM yyyy"

    .line 123
    :cond_18
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v3

    .line 127
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2a
    return-object v3

    .line 126
    :catch_2b
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_2a
.end method

.method public static CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 84
    :goto_4
    return-object v1

    .line 83
    :catch_5
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_4
.end method

.method public static GetDateFromString(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 142
    .local v3, "formatDate":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_c

    .line 143
    const-string v3, "yyyy-MM-dd"

    .line 145
    :cond_c
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object v4, p0

    .line 148
    .local v4, "strDate":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 152
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatDate":Ljava/lang/String;
    .end local v4    # "strDate":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 150
    :catch_17
    move-exception v2

    .line 151
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

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static GetKeyFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 595
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "strKey":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1f

    .line 597
    const/4 v1, 0x0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_1f
    return-object v0
.end method

.method public static GetTimeCurrentString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 133
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

    .line 134
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

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_6e

    .line 239
    :cond_9
    :goto_9
    return v3

    .line 207
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->a1:F

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->b1:F

    goto :goto_9

    .line 211
    :pswitch_17
    const-string v2, ""

    .line 212
    .local v2, "direction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->a2:F

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sput v4, Lic/buzzebeeslib/util/BBUtil;->b2:F

    .line 214
    sget v4, Lic/buzzebeeslib/util/BBUtil;->a2:F

    sget v5, Lic/buzzebeeslib/util/BBUtil;->a1:F

    sub-float v0, v4, v5

    .line 215
    .local v0, "differenceInX":F
    sget v4, Lic/buzzebeeslib/util/BBUtil;->b2:F

    sget v5, Lic/buzzebeeslib/util/BBUtil;->b1:F

    sub-float v1, v4, v5

    .line 218
    .local v1, "differenceInY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_64

    .line 219
    cmpl-float v4, v0, v6

    if-lez v4, :cond_61

    .line 220
    const-string v2, "right"

    .line 232
    :goto_43
    const-string v4, "BBUtil_MotionEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "direction_IsClick "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v4, "up"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 234
    const/4 v3, 0x1

    goto :goto_9

    .line 222
    :cond_61
    const-string v2, "left"

    .line 224
    goto :goto_43

    .line 225
    :cond_64
    cmpl-float v4, v1, v6

    if-lez v4, :cond_6b

    .line 226
    const-string v2, "down"

    .line 227
    goto :goto_43

    .line 228
    :cond_6b
    const-string v2, "up"

    goto :goto_43

    .line 205
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_17
    .end packed-switch
.end method

.method public static IsSamsungMobile()Z
    .registers 6

    .prologue
    .line 406
    const/4 v3, 0x1

    .line 408
    .local v3, "isCheckSamsung":Z
    :try_start_1
    const-string v1, "samsung"

    .line 409
    if-eqz v1, :cond_15

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 411
    const/4 v3, 0x1

    .line 430
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :goto_12
    return v3

    .line 413
    .restart local v1    # "MANUFACTURER":Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    .line 415
    goto :goto_12

    .line 416
    :cond_15
    const-string v0, "samsung"

    .line 417
    if-eqz v0, :cond_29

    .line 418
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_2b

    move-result v4

    if-eqz v4, :cond_27

    .line 419
    const/4 v3, 0x1

    .line 420
    goto :goto_12

    .line 421
    :cond_27
    const/4 v3, 0x0

    .line 423
    goto :goto_12

    .line 424
    :cond_29
    const/4 v3, 0x0

    goto :goto_12

    .line 427
    .end local v0    # "BRAND":Ljava/lang/String;
    .end local v1    # "MANUFACTURER":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 428
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

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 511
    :cond_8
    :goto_8
    return v1

    .line 496
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->xx1:F

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->yy1:F

    goto :goto_8

    .line 500
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->xx2:F

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->yy2:F

    .line 503
    sget v2, Lic/buzzebeeslib/util/BBUtil;->yy2:F

    sget v3, Lic/buzzebeeslib/util/BBUtil;->yy1:F

    sub-float v0, v2, v3

    .line 505
    .local v0, "differenceInY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 506
    const/4 v1, 0x1

    goto :goto_8

    .line 494
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

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 537
    :cond_8
    :goto_8
    return v1

    .line 522
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->xxx1:F

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->yyy1:F

    goto :goto_8

    .line 526
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->xxx2:F

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sput v2, Lic/buzzebeeslib/util/BBUtil;->yyy2:F

    .line 529
    sget v2, Lic/buzzebeeslib/util/BBUtil;->yyy1:F

    sget v3, Lic/buzzebeeslib/util/BBUtil;->yyy2:F

    sub-float v0, v2, v3

    .line 531
    .local v0, "differenceInY":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    .line 532
    const/4 v1, 0x1

    goto :goto_8

    .line 520
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static daysBetweenDates(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "pD1"    # Ljava/lang/String;
    .param p1, "pD2"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Lic/buzzebeeslib/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 164
    .local v0, "d1":Ljava/util/Date;
    invoke-static {p1}, Lic/buzzebeeslib/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 166
    .local v1, "d2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 168
    .local v2, "days":I
    return v2
.end method

.method public static daysBetweenDates(Ljava/util/Date;Ljava/util/Date;)I
    .registers 7
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 159
    .local v0, "days":I
    return v0
.end method

.method private static deg2rad(D)D
    .registers 6
    .param p0, "deg"    # D

    .prologue
    .line 286
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
    .line 184
    invoke-static {p0}, Lic/buzzebeeslib/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 185
    .local v2, "d1":Ljava/util/Date;
    invoke-static {p1}, Lic/buzzebeeslib/util/BBUtil;->GetDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 187
    .local v3, "d2":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 188
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 190
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 192
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 194
    .local v4, "diff":J
    return-wide v4
.end method

.method public static diffMinutes(Ljava/util/Date;Ljava/util/Date;)J
    .registers 10
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 176
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 178
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    .line 180
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
    .line 276
    sub-double v2, p2, p6

    .line 277
    .local v2, "theta":D
    invoke-static {p0, p1}, Lic/buzzebeeslib/util/BBUtil;->deg2rad(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Lic/buzzebeeslib/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {p0, p1}, Lic/buzzebeeslib/util/BBUtil;->deg2rad(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p4, p5}, Lic/buzzebeeslib/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/BBUtil;->deg2rad(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 278
    .local v0, "dist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 279
    invoke-static {v0, v1}, Lic/buzzebeeslib/util/BBUtil;->rad2deg(D)D

    move-result-wide v0

    .line 280
    const-wide/high16 v4, 0x404e000000000000L

    mul-double/2addr v4, v0

    const-wide v6, 0x3ff26c8b43958106L

    mul-double v0, v4, v6

    .line 281
    const-wide v4, 0x3ff9bfdf7e8038a0L

    mul-double/2addr v0, v4

    .line 282
    return-wide v0
.end method

.method public static dp_to_px(DLandroid/content/Context;)I
    .registers 8
    .param p0, "dp"    # D
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 586
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
    .line 263
    const-wide v10, 0x40aeed8000000000L

    .line 264
    .local v10, "earthRadius":D
    sub-double v13, p4, p0

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 265
    .local v4, "dLat":D
    sub-double v13, p6, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 266
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

    .line 267
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

    .line 268
    .local v2, "c":D
    mul-double v8, v10, v2

    .line 270
    .local v8, "dist":D
    const/16 v12, 0x649

    .line 272
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

    .line 434
    const/16 v4, 0x3e7

    if-ge p0, v4, :cond_d

    .line 435
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    :goto_c
    return-object v4

    .line 438
    :cond_d
    const/16 v4, 0x270f

    if-ge p0, v4, :cond_57

    .line 439
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "str2":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 443
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

    .line 445
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

    .line 449
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_57
    const v4, 0x1869f

    if-ge p0, v4, :cond_78

    .line 450
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 452
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

    .line 455
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_78
    const v4, 0xf423f

    if-ge p0, v4, :cond_9a

    .line 456
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 458
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

    .line 461
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_9a
    const v4, 0x98967f

    if-ge p0, v4, :cond_e7

    .line 462
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 464
    .restart local v1    # "str1":Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 465
    .restart local v2    # "str2":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 466
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

    .line 468
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

    .line 472
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_e7
    const v4, 0x5f5e0ff

    if-ge p0, v4, :cond_109

    .line 473
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 475
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

    .line 478
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_109
    const v4, 0x3b9ac9ff

    if-ge p0, v4, :cond_12b

    .line 479
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 480
    .restart local v3    # "strNumber":Ljava/lang/String;
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 481
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

    .line 484
    .end local v1    # "str1":Ljava/lang/String;
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_12b
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "###,###,###"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 485
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
    .line 621
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 622
    const-wide/16 v2, 0x0

    .line 623
    .local v2, "result":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 624
    .local v0, "fileList":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v4, v0

    if-lt v1, v4, :cond_11

    .line 635
    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "result":J
    :goto_10
    return-wide v2

    .line 626
    .restart local v0    # "fileList":[Ljava/io/File;
    .restart local v1    # "i":I
    .restart local v2    # "result":J
    :cond_11
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 627
    aget-object v4, v0, v1

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 624
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 630
    :cond_23
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_20

    .line 635
    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "result":J
    :cond_2b
    const-wide/16 v2, 0x0

    goto :goto_10
.end method

.method public static getKMFromM(F)D
    .registers 7
    .param p0, "pM"    # F

    .prologue
    .line 243
    const-wide/16 v1, 0x0

    .line 246
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

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result-wide v1

    .line 251
    :goto_1e
    return-wide v1

    .line 247
    :catch_1f
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_1e
.end method

.method public static getUnitFileSize(JI)D
    .registers 23
    .param p0, "pBytes"    # J
    .param p2, "pEnumType"    # I

    .prologue
    .line 640
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 641
    .local v0, "bytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v6, v0, v18

    .line 642
    .local v6, "kilobytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v8, v6, v18

    .line 643
    .local v8, "megabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v4, v8, v18

    .line 644
    .local v4, "gigabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v12, v4, v18

    .line 645
    .local v12, "terabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v10, v12, v18

    .line 646
    .local v10, "petabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v2, v10, v18

    .line 647
    .local v2, "exabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v16, v2, v18

    .line 648
    .local v16, "zettabytes":D
    const-wide/high16 v18, 0x4090000000000000L

    div-double v14, v16, v18

    .line 650
    .local v14, "yottabytes":D
    packed-switch p2, :pswitch_data_48

    .line 672
    const-wide/16 v0, 0x0

    .end local v0    # "bytes":D
    :goto_35
    :pswitch_35
    return-wide v0

    .restart local v0    # "bytes":D
    :pswitch_36
    move-wide v0, v6

    .line 654
    goto :goto_35

    :pswitch_38
    move-wide v0, v8

    .line 656
    goto :goto_35

    :pswitch_3a
    move-wide v0, v4

    .line 658
    goto :goto_35

    :pswitch_3c
    move-wide v0, v12

    .line 660
    goto :goto_35

    :pswitch_3e
    move-wide v0, v10

    .line 662
    goto :goto_35

    :pswitch_40
    move-wide v0, v2

    .line 664
    goto :goto_35

    :pswitch_42
    move-wide/from16 v0, v16

    .line 666
    goto :goto_35

    :pswitch_45
    move-wide v0, v14

    .line 668
    goto :goto_35

    .line 650
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
    .registers 7
    .param p0, "px"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 591
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
    .line 290
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
    .line 255
    const-wide/high16 v4, 0x4024000000000000L

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v0, v4

    .line 256
    .local v0, "p":D
    mul-double/2addr p0, v0

    .line 257
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 259
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
    .line 603
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    .line 604
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    :cond_9
    :goto_9
    return-void

    .line 606
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    .local v0, "nav":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1c

    .line 608
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 610
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    if-eqz v0, :cond_9

    .line 612
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 613
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

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 91
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 92
    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 93
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 96
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v6, v5

    int-to-float v7, v1

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .local v3, "rect":Landroid/graphics/RectF;
    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    invoke-virtual {v0, v3, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    invoke-virtual {v0, p2, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    return-object v4
.end method
