.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(ILcom/bzbs/bean/NFCTag;ZZ)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/widget/ProgressBar;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/bzbs/bean/NFCTag;

.field final synthetic g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;JLandroid/widget/ProgressBar;ZZILcom/bzbs/bean/NFCTag;)V
    .registers 9

    .prologue
    .line 902
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->a:J

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->b:Landroid/widget/ProgressBar;

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->c:Z

    iput-boolean p6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->d:Z

    iput p7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->e:I

    iput-object p8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->f:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 942
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 945
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 946
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "loadCampaign"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_66

    .line 951
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getCampaign|onFailure)response_code="

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

    .line 953
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->j(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 961
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 964
    :cond_60
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 965
    return-void

    .line 947
    :catch_66
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 906
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 907
    const-string/jumbo v2, "Campaign"

    const-string/jumbo v3, "loadCampaign"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_4d

    .line 912
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(getCampaign|onComplete)response_code="

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

    .line 914
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    invoke-direct {v1, p0, p4, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void

    .line 908
    :catch_4d
    move-exception v0

    goto :goto_18
.end method
