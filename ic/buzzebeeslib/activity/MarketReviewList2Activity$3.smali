.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 789
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$21(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/buzz?RowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$22(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$23(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/app/ProgressDialog;)V

    .line 793
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 794
    return-void
.end method
