.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->a:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2419
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2420
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    .line 2423
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget v1, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    .line 2424
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<font color=\'#3ba9f6\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f09018a

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget v2, v2, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2427
    :try_start_7d
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2428
    const-string/jumbo v1, "buzzebees"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2429
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 2430
    if-lez v0, :cond_a6

    .line 2431
    const-string/jumbo v1, "like"

    .line 2432
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a6} :catch_a7

    .line 2437
    :cond_a6
    :goto_a6
    return-void

    .line 2434
    :catch_a7
    move-exception v0

    goto :goto_a6
.end method
