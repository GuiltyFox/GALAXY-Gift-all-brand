.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1930
    :try_start_0
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    if-lez v1, :cond_26

    .line 1931
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1932
    const-string v0, "comment"

    .line 1933
    .local v0, "strFrom":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$14(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1935
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_26
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1936
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1938
    :cond_35
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->playPointsAndBadge()V
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$15(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 1942
    :goto_3e
    return-void

    .line 1939
    :catch_3f
    move-exception v1

    goto :goto_3e
.end method
