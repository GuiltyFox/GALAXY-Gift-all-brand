.class Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$ReviewViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/CampaignReview;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;Lcom/bzbs/bean/CampaignReview;)V
    .registers 3

    .prologue
    .line 590
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;->a:Lcom/bzbs/bean/CampaignReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;->a:Lcom/bzbs/bean/CampaignReview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    .line 594
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->notifyDataSetChanged()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 598
    :goto_10
    return-void

    .line 595
    :catch_11
    move-exception v0

    .line 596
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter$2;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->b:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception|doSeeMore):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
