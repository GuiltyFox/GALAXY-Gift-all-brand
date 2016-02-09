.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;
.super Ljava/lang/Object;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->whoClickLikeList:Landroid/widget/ListView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->gMarketReviewLikes:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeAdapter;-><init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    return-void
.end method
