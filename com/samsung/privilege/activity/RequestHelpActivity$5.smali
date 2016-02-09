.class Lcom/samsung/privilege/activity/RequestHelpActivity$5;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

.field private final synthetic val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 771
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v0, :cond_55

    .line 772
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 773
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iput-boolean v2, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    .line 779
    :goto_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v0, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    if-gez v0, :cond_27

    .line 780
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iput v2, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 783
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v1, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v0, :cond_67

    .line 786
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    const v1, 0x7f02031a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 792
    :goto_54
    return-void

    .line 775
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 776
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    goto :goto_19

    .line 789
    :cond_67
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->imgLike:Landroid/widget/ImageView;

    const v1, 0x7f02031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 790
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;->val$pTagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->tvLike:Landroid/widget/TextView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_54
.end method
