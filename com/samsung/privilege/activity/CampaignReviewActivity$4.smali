.class Lcom/samsung/privilege/activity/CampaignReviewActivity$4;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;->a:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->a(I)Lcom/bzbs/bean/CampaignReview;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 153
    :goto_9
    return-void

    .line 150
    :catch_a
    move-exception v0

    goto :goto_9
.end method
