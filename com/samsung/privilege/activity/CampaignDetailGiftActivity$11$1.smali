.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 925
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 928
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-boolean v3, v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->c:Z

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-boolean v4, v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZZ)V

    .line 933
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "campaign_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/LocalFileHelper;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_40} :catch_4d

    .line 938
    :goto_40
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;->c:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->g:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 947
    return-void

    .line 934
    :catch_4d
    move-exception v0

    goto :goto_40
.end method
