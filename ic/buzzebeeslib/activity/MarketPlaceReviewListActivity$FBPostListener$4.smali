.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$4;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

.field private final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$4;->val$error:Ljava/lang/String;

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1478
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST ERROR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$FBPostListener$4;->val$error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    .line 1479
    return-void
.end method
