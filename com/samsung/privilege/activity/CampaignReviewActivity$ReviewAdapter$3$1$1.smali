.class Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 626
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 628
    .line 629
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 665
    :goto_b
    return-void

    .line 633
    :cond_c
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 634
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_19} :catch_49

    .line 637
    :try_start_19
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_72
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1f} :catch_49

    move-result-object v0

    .line 640
    :try_start_20
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_74
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_26} :catch_49

    move-result v1

    .line 641
    if-lez v1, :cond_29

    .line 651
    :cond_29
    :goto_29
    :try_start_29
    const-string/jumbo v1, "new_user_rank"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 652
    const-string/jumbo v1, "rank"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_46} :catch_47
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_46} :catch_49

    goto :goto_b

    .line 654
    :catch_47
    move-exception v0

    goto :goto_b

    .line 661
    :catch_49
    move-exception v0

    .line 662
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 658
    :catch_72
    move-exception v0

    goto :goto_b

    .line 646
    :catch_74
    move-exception v1

    goto :goto_29
.end method
