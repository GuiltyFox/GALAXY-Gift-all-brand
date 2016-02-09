.class public Lcom/samsung/privilege/bean/TagLikeMarketReview;
.super Ljava/lang/Object;
.source "TagLikeMarketReview.java"


# instance fields
.field public imgLike:Landroid/widget/ImageView;

.field public layoutLike:Landroid/widget/RelativeLayout;

.field public marketReview:Lcom/samsung/privilege/bean/MarketReview;

.field public pbImgLike:Landroid/widget/ProgressBar;

.field public retry_count:I

.field public tvLike:Landroid/widget/TextView;

.field public viewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->retry_count:I

    .line 9
    return-void
.end method
