.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

.field final synthetic val$campaign:Lcom/bzbs/lib/survey/bean/Campaign;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;Lcom/bzbs/lib/survey/bean/Campaign;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    .prologue
    .line 4217
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->val$campaign:Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 4219
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->val$campaign:Lcom/bzbs/lib/survey/bean/Campaign;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->checkNextRedeem(Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4900(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/bean/Campaign;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    move-result-object v1

    .line 4220
    .local v1, "mEnum":Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    sget-object v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->CONTINUE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    if-ne v1, v3, :cond_16

    .line 4221
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->reset()V

    .line 4234
    :goto_15
    return-void

    .line 4223
    :cond_16
    const-string/jumbo v2, "Close"

    .line 4224
    .local v2, "strButtomClose":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4225
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->val$campaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/lib/survey/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->val$campaign:Lcom/bzbs/lib/survey/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/lib/survey/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->strMsgAlert:Ljava/lang/String;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4227
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;

    invoke-direct {v4, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4232
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_15
.end method
