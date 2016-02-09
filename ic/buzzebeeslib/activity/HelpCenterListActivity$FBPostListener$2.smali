.class Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

.field private final synthetic val$jsonRoot:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1613
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$12(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1616
    :try_start_27
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$13(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1618
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$14(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$13(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4a} :catch_c6

    .line 1624
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 1625
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1626
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$12(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 1648
    :cond_7b
    :goto_7b
    return-void

    .line 1628
    :cond_7c
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1629
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$3(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$15(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;)V

    .line 1630
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gListOrder:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$14(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gAdapter:Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$12(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Lic/buzzebeeslib/activity/HelpCenterListActivity$MarketReviewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7b

    .line 1620
    :catch_c6
    move-exception v0

    goto :goto_4a
.end method
