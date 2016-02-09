.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->addHeaderAndFooter()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/buzz/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$4(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/comments?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$7(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 705
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTxtPostComment:Landroid/widget/TextView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$7(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 708
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gBtnPostComment:Landroid/widget/Button;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$8(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PostCommentURL="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "message="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {v3, v4, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 714
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$5;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 715
    return-void
.end method
