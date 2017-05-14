.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ProgressBar;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 5

    .prologue
    .line 2350
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->b:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2376
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 2378
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(UNLIKE|onFailure)response_code="

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

    .line 2380
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v1, "UNLIKE Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    .line 2382
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2389
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2353
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(UNLIKE|onComplete)response_code="

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

    .line 2355
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2371
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 2372
    return-void
.end method
