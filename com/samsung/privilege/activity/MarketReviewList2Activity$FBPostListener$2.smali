.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$jsonRoot:Lorg/json/JSONObject;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    iput p3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    iput-object p4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1178
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$11(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1181
    :try_start_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$12(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1183
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$6(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$12(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4a} :catch_e6

    .line 1189
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 1190
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1191
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$11(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;->notifyDataSetChanged()V

    .line 1200
    :cond_7b
    :goto_7b
    :try_start_7b
    iget v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    if-lez v0, :cond_8a

    .line 1201
    sget-object v0, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$points:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_8a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_99

    .line 1204
    sget-object v0, Lcom/samsung/privilege/AppSetting;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_99} :catch_e4

    .line 1209
    :cond_99
    :goto_99
    return-void

    .line 1193
    :cond_9a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->val$jsonRoot:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1194
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$3(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$13(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;)V

    .line 1195
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gListMarketReview:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$6(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$11(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Lcom/samsung/privilege/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7b

    .line 1206
    :catch_e4
    move-exception v0

    goto :goto_99

    .line 1185
    :catch_e6
    move-exception v0

    goto/16 :goto_4a
.end method
