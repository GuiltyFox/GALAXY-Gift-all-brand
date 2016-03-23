.class public Lcom/bzbs/lib/survey/bean/TagLikeCampaignReview;
.super Ljava/lang/Object;
.source "TagLikeCampaignReview.java"


# instance fields
.field public campaignReview:Lcom/bzbs/lib/survey/bean/CampaignReview;

.field public imgLike:Landroid/widget/ImageView;

.field public layoutLike:Landroid/widget/RelativeLayout;

.field public pbImgLike:Landroid/widget/ProgressBar;

.field public retry_count:I

.field public tvLike:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/TagLikeCampaignReview;->retry_count:I

    return-void
.end method
