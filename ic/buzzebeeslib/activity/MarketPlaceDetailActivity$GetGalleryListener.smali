.class public Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetGalleryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 3214
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    .registers 2

    .prologue
    .line 3214
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 3218
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetGalleryListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v6, "onComplete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, " !isFinishing() "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v5, 0x0

    :goto_34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 3223
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_b7

    .line 3224
    :try_start_4b
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$17(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/util/ArrayList;)V

    .line 3230
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_6e

    .line 3239
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    new-instance v6, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;)V

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6b} :catch_9d

    .line 3261
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_6b
    :goto_6b
    return-void

    .line 3220
    :cond_6c
    const/4 v5, 0x1

    goto :goto_34

    .line 3232
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_6e
    :try_start_6e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 3233
    .local v4, "json_market_gallery":Lorg/json/JSONObject;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$18(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/bean/CampaignGallery;

    invoke-direct {v6, v4}, Lic/buzzebeeslib/bean/CampaignGallery;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_80} :catch_83

    .line 3230
    .end local v4    # "json_market_gallery":Lorg/json/JSONObject;
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 3234
    :catch_83
    move-exception v0

    .line 3235
    .local v0, "e":Lorg/json/JSONException;
    :try_start_84
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetMarketGalleryListener|onComplete|for|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_9c} :catch_9d

    goto :goto_80

    .line 3256
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_9d
    move-exception v0

    .line 3257
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "MyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(GetListener|onComplete|JSONException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 3246
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_b7
    :try_start_b7
    const-string v1, "Error while load market gallery..."

    .line 3252
    .local v1, "err_message":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_be} :catch_9d

    goto :goto_6b
.end method
