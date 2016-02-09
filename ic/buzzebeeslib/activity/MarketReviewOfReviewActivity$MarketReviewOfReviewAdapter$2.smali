.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->val$position:I

    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1748
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1749
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/CampaignReview;

    invoke-static {v1, v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$31(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/CampaignReview;)V

    .line 1751
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1752
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->openContextMenu(Landroid/view/View;)V

    .line 1753
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1755
    :cond_3e
    return-void
.end method
