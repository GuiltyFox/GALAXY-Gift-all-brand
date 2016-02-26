.class Lcom/samsung/privilege/activity/CampaignListActivity$27;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerByCat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$cat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->val$cat:Ljava/lang/String;

    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2299
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    if-eqz v2, :cond_17

    .line 2300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->getCount()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_3e

    move-result v2

    if-lt v0, v2, :cond_18

    .line 2315
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return-void

    .line 2302
    .restart local v0    # "i":I
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 2303
    .local v1, "objCat":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    iget v2, v1, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->val$cat:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3b

    .line 2304
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$27;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_39} :catch_3a

    goto :goto_17

    .line 2307
    .end local v1    # "objCat":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :catch_3a
    move-exception v2

    .line 2300
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2312
    .end local v0    # "i":I
    :catch_3e
    move-exception v2

    goto :goto_17
.end method
