.class Lcom/samsung/privilege/activity/CampaignReviewActivity$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V
    .registers 3

    .prologue
    .line 372
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->a:I

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(loadCampaignReview|onFailure)response_code="

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

    .line 416
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const-string/jumbo v1, "Load History Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z

    .line 429
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(loadCampaignReview|onComplete)response_code="

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

    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 379
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method
