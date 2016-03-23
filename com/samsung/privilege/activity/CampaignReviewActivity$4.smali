.class Lcom/samsung/privilege/activity/CampaignReviewActivity$4;
.super Ljava/lang/Object;
.source "CampaignReviewActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->bindingEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->mReviewAdapter:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$700(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;->getItem(I)Lcom/bzbs/bean/CampaignReview;
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
