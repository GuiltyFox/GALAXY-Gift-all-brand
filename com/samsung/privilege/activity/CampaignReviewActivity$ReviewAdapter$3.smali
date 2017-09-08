.class Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/CampaignReview;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V
    .registers 3

    .prologue
    .line 601
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->a:Lcom/bzbs/bean/CampaignReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 604
    :try_start_0
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "api/buzz/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->a:Lcom/bzbs/bean/CampaignReview;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/like"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->a:Lcom/bzbs/bean/CampaignReview;

    iget-boolean v2, v2, Lcom/bzbs/bean/CampaignReview;->IsLiked:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "api/buzz/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->a:Lcom/bzbs/bean/CampaignReview;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/like"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "delete"

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 612
    :cond_5f
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v3, v3, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .line 613
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->V:Z

    .line 614
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 615
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .line 617
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 618
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;)V

    .line 619
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    .line 684
    :goto_9c
    return-void

    .line 681
    :catch_9d
    move-exception v0

    .line 682
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$3;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|doLike):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method
