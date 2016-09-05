.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/bean/Campaign;

.field final synthetic b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;Lcom/bzbs/lib/survey/bean/Campaign;)V
    .registers 3

    .prologue
    .line 4217
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->a:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->a:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    move-result-object v0

    .line 4220
    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    if-ne v0, v1, :cond_16

    .line 4221
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a()V

    .line 4234
    :goto_15
    return-void

    .line 4223
    :cond_16
    const-string/jumbo v0, "Close"

    .line 4224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4225
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->a:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v2, v2, Lcom/bzbs/lib/survey/bean/Campaign;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->a:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->O(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4227
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_15
.end method
