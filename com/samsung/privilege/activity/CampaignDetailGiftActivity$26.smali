.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Lcom/bzbs/lib/http/okhttp/HttpParams;Lcom/bzbs/bean/Campaign;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V
    .registers 4

    .prologue
    .line 3119
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 3138
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 3141
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3142
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "redeemCampaign"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_c9

    .line 3147
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(goRedeemCampaignSSLPinning|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3152
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3153
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3154
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3155
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 3156
    const-string/jumbo v0, "1411"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 3157
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3158
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3170
    :goto_8e
    return-void

    .line 3160
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_94} :catch_95

    goto :goto_8e

    .line 3167
    :catch_95
    move-exception v0

    .line 3168
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8e

    .line 3162
    :cond_9c
    :try_start_9c
    const-string/jumbo v0, "1201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 3163
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "CampaignDetailGiftActivity"

    const-string/jumbo v4, "redeem"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8e

    .line 3165
    :cond_c3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_c8} :catch_95

    goto :goto_8e

    .line 3143
    :catch_c9
    move-exception v0

    goto/16 :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 3123
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 3124
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "redeemCampaign"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_4f

    .line 3129
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(goRedeemCampaignSSLPinning|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p4, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    .line 3134
    return-void

    .line 3125
    :catch_4f
    move-exception v0

    goto :goto_18
.end method
