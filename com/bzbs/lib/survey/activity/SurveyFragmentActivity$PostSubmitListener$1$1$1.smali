.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;)V
    .registers 2

    .prologue
    .line 3271
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 3275
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3276
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3278
    sget-object v0, Lcom/bzbs/lib/survey/LibConst;->g:Ljava/lang/String;

    const-string/jumbo v1, "GalaxyReward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 3279
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3280
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3281
    const-string/jumbo v0, "campaignId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3282
    const-string/jumbo v0, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "paramCampaign.ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 3286
    :cond_c1
    return-void
.end method
