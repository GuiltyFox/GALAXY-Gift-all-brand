.class public final Lcom/google/zxing/client/android/result/ResultHandlerFactory;
.super Ljava/lang/Object;
.source "ResultHandlerFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$client$result$ParsedResultType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$client$result$ParsedResultType()[I
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->$SWITCH_TABLE$com$google$zxing$client$result$ParsedResultType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/zxing/client/result/ParsedResultType;->values()[Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_8a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_88

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_86

    :goto_28
    :try_start_28
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_84

    :goto_31
    :try_start_31
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_82

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_80

    :goto_44
    :try_start_44
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_7e

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_7c

    :goto_57
    :try_start_57
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_60} :catch_7a

    :goto_60
    :try_start_60
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_69} :catch_78

    :goto_69
    :try_start_69
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_76

    :goto_73
    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->$SWITCH_TABLE$com$google$zxing$client$result$ParsedResultType:[I

    goto :goto_4

    :catch_76
    move-exception v1

    goto :goto_73

    :catch_78
    move-exception v1

    goto :goto_69

    :catch_7a
    move-exception v1

    goto :goto_60

    :catch_7c
    move-exception v1

    goto :goto_57

    :catch_7e
    move-exception v1

    goto :goto_4e

    :catch_80
    move-exception v1

    goto :goto_44

    :catch_82
    move-exception v1

    goto :goto_3b

    :catch_84
    move-exception v1

    goto :goto_31

    :catch_86
    move-exception v1

    goto :goto_28

    :catch_88
    move-exception v1

    goto :goto_1f

    :catch_8a
    move-exception v1

    goto :goto_15
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static makeResultHandler(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;
    .registers 5
    .param p0, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 35
    .local v0, "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-static {}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->$SWITCH_TABLE$com$google$zxing$client$result$ParsedResultType()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 57
    :pswitch_15
    new-instance v1, Lcom/google/zxing/client/android/result/TextResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/TextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    :goto_1a
    return-object v1

    .line 37
    :pswitch_1b
    new-instance v1, Lcom/google/zxing/client/android/result/AddressBookResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 39
    :pswitch_21
    new-instance v1, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 41
    :pswitch_27
    new-instance v1, Lcom/google/zxing/client/android/result/ProductResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/ProductResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    goto :goto_1a

    .line 43
    :pswitch_2d
    new-instance v1, Lcom/google/zxing/client/android/result/URIResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 45
    :pswitch_33
    new-instance v1, Lcom/google/zxing/client/android/result/WifiResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/WifiResultHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 47
    :pswitch_39
    new-instance v1, Lcom/google/zxing/client/android/result/GeoResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/GeoResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 49
    :pswitch_3f
    new-instance v1, Lcom/google/zxing/client/android/result/TelResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/TelResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 51
    :pswitch_45
    new-instance v1, Lcom/google/zxing/client/android/result/SMSResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/SMSResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 53
    :pswitch_4b
    new-instance v1, Lcom/google/zxing/client/android/result/CalendarResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_1a

    .line 55
    :pswitch_51
    new-instance v1, Lcom/google/zxing/client/android/result/ISBNResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/ISBNResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    goto :goto_1a

    .line 35
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_15
        :pswitch_39
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_33
        :pswitch_51
    .end packed-switch
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2
    .param p0, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
