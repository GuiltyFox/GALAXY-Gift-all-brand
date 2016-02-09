.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    .line 1245
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

    .line 1247
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$37(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeleteReview url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$38(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/app/ProgressDialog;)V

    .line 1253
    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$7;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1254
    return-void
.end method
