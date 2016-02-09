.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$jsonRoot:Lorg/json/JSONObject;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    iput p3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$points:I

    iput-object p4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1409
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$12(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 1422
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gTvNoReview:Landroid/widget/TextView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1424
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a6

    .line 1425
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1426
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$12(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 1435
    :cond_67
    :goto_67
    :try_start_67
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$points:I

    if-lez v1, :cond_8d

    .line 1436
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$points:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1437
    const-string v0, "comment"

    .line 1438
    .local v0, "strFrom":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$points:I

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1440
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_8d
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9c

    .line 1441
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1443
    :cond_9c
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPointsAndBadge()V
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a5} :catch_f1

    .line 1447
    :goto_a5
    return-void

    .line 1428
    :cond_a6
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/bean/CampaignReview;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lic/buzzebeeslib/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1429
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$4(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$17(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;)V

    .line 1430
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gListMarketReview:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$7(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$12(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$MarketReviewAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_67

    .line 1444
    :catch_f1
    move-exception v1

    goto :goto_a5
.end method
