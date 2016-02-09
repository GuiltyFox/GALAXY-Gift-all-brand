.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

.field private final synthetic val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v0, :cond_55

    .line 687
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 688
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iput-boolean v2, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    .line 694
    :goto_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v0, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    if-gez v0, :cond_27

    .line 695
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iput v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 698
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v1, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v0, :cond_67

    .line 701
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    const v1, 0x7f02031a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 707
    :goto_54
    return-void

    .line 690
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 691
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    goto :goto_19

    .line 704
    :cond_67
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_54
.end method
