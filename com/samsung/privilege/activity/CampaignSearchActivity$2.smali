.class Lcom/samsung/privilege/activity/CampaignSearchActivity$2;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "CampaignSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignSearchActivity;->doSearch(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignSearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignSearchActivity;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->a(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doSearch|onFailure)response_code="

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

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    const-string/jumbo v1, "Search Campaign Fail!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->a(Lcom/samsung/privilege/activity/CampaignSearchActivity;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->b(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    return-void
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->a(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(doSearch|onComplete)response_code="

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

    .line 85
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;->a:Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->b(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    return-void
.end method
