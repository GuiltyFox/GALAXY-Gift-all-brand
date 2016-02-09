.class Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "StickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/StickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetStickerOrderListener"
.end annotation


# instance fields
.field private gAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;->gAppContext:Landroid/content/Context;

    .line 197
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 201
    const-string v3, "vat_vat"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(GetStickerOrderListener|onComplete)response={"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_6c

    .line 205
    :try_start_22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "vat_vat"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JsonUtil.getString(jsonRoot, \"sticker_order\") "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "sticker_order"

    invoke-static {v1, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;->gAppContext:Landroid/content/Context;

    const-string v4, "sticker_order"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetStickerOrder(Landroid/content/Context;Ljava/lang/String;)Z

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/stickerset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerOrderListener;->gAppContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6c} :catch_6d

    .line 219
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :cond_6c
    :goto_6c
    return-void

    .line 213
    :catch_6d
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.sticker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(GetStickerOrderListener|onComplete|Exception):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c
.end method
