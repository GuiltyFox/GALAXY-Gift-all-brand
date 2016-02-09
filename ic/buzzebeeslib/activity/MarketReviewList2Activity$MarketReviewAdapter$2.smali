.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->val$position:I

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1459
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$12(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1460
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-static {v1, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$13(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/bean/CampaignReview;)V

    .line 1462
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 1463
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->openContextMenu(Landroid/view/View;)V

    .line 1464
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$MarketReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1466
    :cond_3e
    return-void
.end method
