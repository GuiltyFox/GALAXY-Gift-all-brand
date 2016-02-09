.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    iput p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->val$position:I

    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$3(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1572
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MarketReview;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$31(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/MarketReview;)V

    .line 1574
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1575
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->openContextMenu(Landroid/view/View;)V

    .line 1576
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1578
    :cond_3e
    return-void
.end method
