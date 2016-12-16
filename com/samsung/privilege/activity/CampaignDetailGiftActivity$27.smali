.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;
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
    .line 2896
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->a:J

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 2915
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2918
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2919
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "redeemCampaign"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_c8

    .line 2924
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doRedeem|onFailure)response_code="

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

    .line 2926
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2929
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2930
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2931
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2932
    const-string/jumbo v2, "message"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 2933
    const-string/jumbo v0, "1411"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2934
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2935
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v2, 0x7f090350

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2947
    :goto_8e
    return-void

    .line 2937
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_94} :catch_95

    goto :goto_8e

    .line 2944
    :catch_95
    move-exception v0

    .line 2945
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8e

    .line 2939
    :cond_9c
    :try_start_9c
    const-string/jumbo v0, "1201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2940
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "CampaignDetailGiftActivity"

    const-string/jumbo v4, "redeem"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 2942
    :cond_c2
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_c7} :catch_95

    goto :goto_8e

    .line 2920
    :catch_c8
    move-exception v0

    goto/16 :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 2900
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2901
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "redeemCampaign"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_4f

    .line 2906
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doRedeem|onComplete)response_code="

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

    .line 2908
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2910
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p4, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    .line 2911
    return-void

    .line 2902
    :catch_4f
    move-exception v0

    goto :goto_18
.end method
