.class Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    iput p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$points:I

    iput-object p3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 441
    :try_start_0
    iget v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$points:I

    if-lez v1, :cond_40

    .line 442
    const-string v1, "buzzebees.places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  points = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$points:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    iget v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$points:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v0, "comment"

    .line 445
    .local v0, "strFrom":Ljava/lang/String;
    iget v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$points:I

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v3}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v3

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 447
    .end local v0    # "strFrom":Ljava/lang/String;
    :cond_40
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_69

    .line 448
    const-string v1, "buzzebees.places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  badgeAlerts.size() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_69
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/fragment/PlaceMainFragment;->playPointsAndBadge()V
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    .line 455
    :goto_72
    return-void

    .line 452
    :catch_73
    move-exception v1

    goto :goto_72
.end method
