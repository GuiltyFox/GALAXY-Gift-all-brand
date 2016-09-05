.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2981
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2985
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2986
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2987
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 2988
    if-lez v0, :cond_29

    .line 2989
    const-string/jumbo v1, ""

    .line 2990
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 2993
    :cond_29
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getCampaign|goGetPoint"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 2998
    :goto_4f
    return-void

    .line 2995
    :catch_50
    move-exception v0

    goto :goto_4f
.end method
