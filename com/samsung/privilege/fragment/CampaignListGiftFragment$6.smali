.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(I)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;JI)V
    .registers 5

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    iput-wide p2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->a:J

    iput p4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->b:I

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 403
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 404
    const-string/jumbo v2, "CampaignList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadCategory-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v4, v5}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_72

    .line 409
    :goto_35
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->i(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(loadCampaignList|onFailure)response_code="

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

    .line 411
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->l(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z

    .line 427
    return-void

    .line 405
    :catch_72
    move-exception v0

    goto :goto_35
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 326
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 327
    const-string/jumbo v2, "CampaignList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadCategory-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v4, v5}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_69

    .line 332
    :goto_32
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->i(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(loadCampaignList|onComplete)response_code="

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

    .line 336
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->l(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$1;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void

    .line 328
    :catch_69
    move-exception v0

    goto :goto_32
.end method
