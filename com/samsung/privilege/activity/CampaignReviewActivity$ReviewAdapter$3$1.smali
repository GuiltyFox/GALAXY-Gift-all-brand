.class Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;)V
    .registers 2

    .prologue
    .line 619
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 671
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLike|onFailure)response_code="

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

    .line 675
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 677
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const-string/jumbo v1, "Like Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 622
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doLike|onComplete)response_code="

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

    .line 624
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 626
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method
