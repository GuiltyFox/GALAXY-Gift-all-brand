.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

.field private final synthetic val$marketReview:Lcom/samsung/privilege/bean/MarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;Lcom/samsung/privilege/bean/MarketReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->val$marketReview:Lcom/samsung/privilege/bean/MarketReview;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->val$marketReview:Lcom/samsung/privilege/bean/MarketReview;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gAdapter:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$3(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V

    .line 706
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$4(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f200001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$5(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/bean/MarketReview;

    move-result-object v0

    iget v1, v0, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    .line 709
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$6(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lcom/samsung/privilege/bean/MarketReview;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$5(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/samsung/privilege/bean/MarketReview;

    move-result-object v1

    iget v1, v1, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method
