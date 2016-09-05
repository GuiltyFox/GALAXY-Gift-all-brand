.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;)V
    .registers 2

    .prologue
    .line 4227
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4229
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4230
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1$1;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener$1;->b:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$GetCampaignListener;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0, v1, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZ)V

    .line 4231
    return-void
.end method
