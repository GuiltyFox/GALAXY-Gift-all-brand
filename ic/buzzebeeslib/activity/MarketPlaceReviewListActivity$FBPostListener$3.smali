.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$points:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1457
    :try_start_0
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$points:I

    if-lez v1, :cond_26

    .line 1458
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$points:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1459
    const-string v0, "comment"

    .line 1460
    .local v0, "strFrom":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$points:I

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1462
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_26
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1463
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1465
    :cond_35
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->playPointsAndBadge()V
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 1469
    :goto_3e
    return-void

    .line 1466
    :catch_3f
    move-exception v1

    goto :goto_3e
.end method
