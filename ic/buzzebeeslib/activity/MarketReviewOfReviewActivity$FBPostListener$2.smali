.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

.field private final synthetic val$jsonRoot:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1829
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 1830
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_a4

    .line 1832
    :try_start_2d
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 1834
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_82

    .line 1847
    :cond_50
    :goto_50
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_dd

    .line 1848
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1849
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V

    .line 1856
    :cond_81
    :goto_81
    return-void

    .line 1836
    :catch_82
    move-exception v1

    .line 1837
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setLayoutByReview|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 1841
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_a4
    :try_start_a4
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/View;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b9} :catch_ba

    goto :goto_50

    .line 1842
    :catch_ba
    move-exception v0

    .line 1843
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setLayoutByReview|Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 1851
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_dd
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1852
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$32(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)V

    .line 1853
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_81
.end method
