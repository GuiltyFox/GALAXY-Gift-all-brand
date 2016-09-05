.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;
.super Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 1686
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1687
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->n(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    .line 1692
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0

    .line 1689
    :catch_13
    move-exception v0

    goto :goto_11
.end method
