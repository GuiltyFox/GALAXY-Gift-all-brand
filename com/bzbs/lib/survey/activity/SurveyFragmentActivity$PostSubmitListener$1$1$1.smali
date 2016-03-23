.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;)V
    .registers 2
    .param p1, "this$3"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    .prologue
    .line 3271
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3274
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 3275
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3276
    .local v0, "LaunchIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3278
    const-string/jumbo v3, "GalaxyReward"

    const-string/jumbo v4, "GalaxyReward"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 3279
    const-string/jumbo v3, "content://someURI"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3280
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3281
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "campaignId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3282
    const-string/jumbo v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "paramCampaign.ID= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1$1;->this$3:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;->this$2:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 3286
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_c2
    return-void
.end method
