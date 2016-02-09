.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$jsonRoot:Lorg/json/JSONObject;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    iput p3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    iput-object p4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1881
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$12(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 1894
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$idMarketReviewList;->tvNoReview:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1895
    .local v1, "tvNoReview":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1897
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_aa

    .line 1898
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1899
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$12(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 1908
    .end local v1    # "tvNoReview":Landroid/widget/TextView;
    :cond_6b
    :goto_6b
    :try_start_6b
    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    if-lez v2, :cond_91

    .line 1909
    sget-object v2, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    iget v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1910
    const-string v0, "comment"

    .line 1911
    .local v0, "strFrom":Ljava/lang/String;
    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$14(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1913
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_91
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a0

    .line 1914
    sget-object v2, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1916
    :cond_a0
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->playPointsAndBadge()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$15(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a9} :catch_f5

    .line 1920
    :goto_a9
    return-void

    .line 1901
    .restart local v1    # "tvNoReview":Landroid/widget/TextView;
    :cond_aa
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1902
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$6(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$16(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)V

    .line 1903
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$9(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$12(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_6b

    .line 1917
    .end local v1    # "tvNoReview":Landroid/widget/TextView;
    :catch_f5
    move-exception v2

    goto :goto_a9
.end method
