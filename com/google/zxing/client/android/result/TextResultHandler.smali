.class public final Lcom/google/zxing/client/android/result/TextResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "TextResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/google/zxing/client/android/R$string;->button_web_search:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 34
    sget v2, Lcom/google/zxing/client/android/R$string;->button_share_by_email:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 35
    sget v2, Lcom/google/zxing/client/android/R$string;->button_share_by_sms:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 36
    sget v2, Lcom/google/zxing/client/android/R$string;->button_custom_product_search:I

    aput v2, v0, v1

    .line 32
    sput-object v0, Lcom/google/zxing/client/android/result/TextResultHandler;->buttons:[I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/TextResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/zxing/client/android/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/google/zxing/client/android/result/TextResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public getButtonText(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/google/zxing/client/android/result/TextResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .registers 2

    .prologue
    .line 74
    sget v0, Lcom/google/zxing/client/android/R$string;->result_text:I

    return v0
.end method

.method public handleButtonPress(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/TextResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "text":Ljava/lang/String;
    packed-switch p1, :pswitch_data_20

    .line 70
    :goto_b
    return-void

    .line 58
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/TextResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_b

    .line 61
    :pswitch_10
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/TextResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_b

    .line 64
    :pswitch_14
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/TextResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_b

    .line 67
    :pswitch_18
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/TextResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/TextResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_b

    .line 56
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method
