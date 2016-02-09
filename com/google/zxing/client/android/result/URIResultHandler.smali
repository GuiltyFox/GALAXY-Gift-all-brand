.class public final Lcom/google/zxing/client/android/result/URIResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "URIResultHandler.java"


# static fields
.field private static final SECURE_PROTOCOLS:[Ljava/lang/String;

.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    .line 37
    const-string v1, "otpauth:"

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 41
    sget v1, Lcom/google/zxing/client/android/R$string;->button_open_browser:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/google/zxing/client/android/R$string;->button_share_by_email:I

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 43
    sget v2, Lcom/google/zxing/client/android/R$string;->button_share_by_sms:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 44
    sget v2, Lcom/google/zxing/client/android/R$string;->button_search_book_contents:I

    aput v2, v0, v1

    .line 40
    sput-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 49
    return-void
.end method


# virtual methods
.method public areContentsSecure()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/client/result/URIParsedResult;

    .line 92
    .local v2, "uriResult":Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v2}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "uri":Ljava/lang/String;
    sget-object v5, Lcom/google/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_15
    if-lt v4, v6, :cond_18

    .line 98
    :goto_17
    return v3

    .line 93
    :cond_18
    aget-object v0, v5, v4

    .line 94
    .local v0, "secure":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 95
    const/4 v3, 0x1

    goto :goto_17

    .line 93
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15
.end method

.method public getButtonCount()I
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    .line 56
    :goto_13
    return v0

    :cond_14
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method public getButtonText(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .registers 2

    .prologue
    .line 86
    sget v0, Lcom/google/zxing/client/android/R$string;->result_uri:I

    return v0
.end method

.method public handleButtonPress(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/URIParsedResult;

    .line 67
    .local v1, "uriResult":Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "uri":Ljava/lang/String;
    packed-switch p1, :pswitch_data_1e

    .line 82
    :goto_d
    return-void

    .line 70
    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_d

    .line 73
    :pswitch_12
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_d

    .line 76
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_d

    .line 79
    :pswitch_1a
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->searchBookContents(Ljava/lang/String;)V

    goto :goto_d

    .line 68
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method
