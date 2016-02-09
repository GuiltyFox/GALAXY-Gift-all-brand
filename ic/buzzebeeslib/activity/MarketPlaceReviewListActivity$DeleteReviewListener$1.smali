.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 950
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->doRefresh(Landroid/view/View;)V

    .line 951
    return-void
.end method
