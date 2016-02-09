.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

.field private final synthetic val$marketReview:Lic/buzzebeeslib/bean/CampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;Lic/buzzebeeslib/bean/CampaignReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->val$marketReview:Lic/buzzebeeslib/bean/CampaignReview;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 743
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->val$marketReview:Lic/buzzebeeslib/bean/CampaignReview;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gAdapter:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$2(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$MarketReviewOfReviewAdapter;->notifyDataSetChanged()V

    .line 746
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->header_no_review_ListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$idHeaderNoReview;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$4(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v0

    iget v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    .line 749
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvCommentCount:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$5(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$PostReviewOfReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->paramMarketReview:Lic/buzzebeeslib/bean/CampaignReview;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$4(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lic/buzzebeeslib/bean/CampaignReview;

    move-result-object v1

    iget v1, v1, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    return-void
.end method
