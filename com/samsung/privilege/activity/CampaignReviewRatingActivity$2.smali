.class Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;
.super Ljava/lang/Object;
.source "CampaignReviewRatingActivity.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 4

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->c:Lcom/samsung/privilege/activity/CampaignReviewRatingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 60
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    :goto_12
    return-void

    .line 63
    :cond_13
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_24

    .line 64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_12

    .line 67
    :cond_24
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewRatingActivity$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_12
.end method
