.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    .line 914
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

    .line 916
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$42(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/buzz?RowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gCurrentReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$43(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const-string v3, ""

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$44(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Landroid/app/ProgressDialog;)V

    .line 920
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$10;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 921
    return-void
.end method
