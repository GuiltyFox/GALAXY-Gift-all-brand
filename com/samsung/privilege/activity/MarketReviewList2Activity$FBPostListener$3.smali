.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1219
    :try_start_0
    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    if-lez v1, :cond_26

    .line 1220
    sget-object v1, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v0, ""

    .line 1222
    .local v0, "strFrom":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$points:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->this$1:Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1224
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_26
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1225
    sget-object v1, Lcom/samsung/privilege/AppSetting;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 1231
    :cond_35
    :goto_35
    return-void

    .line 1228
    :catch_36
    move-exception v1

    goto :goto_35
.end method
