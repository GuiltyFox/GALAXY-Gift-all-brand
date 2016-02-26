.class Lcom/samsung/privilege/activity/CampaignListActivity$26;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->val$position:I

    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2284
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->val$position:I

    .line 2285
    .local v0, "categoryNo":I
    if-gez v0, :cond_16

    .line 2286
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2290
    :goto_15
    return-void

    .line 2288
    :cond_16
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_15
.end method
