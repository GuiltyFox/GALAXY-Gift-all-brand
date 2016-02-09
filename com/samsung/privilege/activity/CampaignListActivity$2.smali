.class Lcom/samsung/privilege/activity/CampaignListActivity$2;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->processJsonCategory(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$currText:Landroid/widget/TextView;

.field private final synthetic val$listCats:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$listCats:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 459
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 454
    return-void
.end method

.method public onPageSelected(I)V
    .registers 9
    .param p1, "arg0"    # I

    .prologue
    .line 406
    const/4 v1, 0x2

    if-lt p1, v1, :cond_c2

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$listCats:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 409
    .local v0, "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    iget v1, v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v2, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    if-ne v1, v2, :cond_a7

    .line 410
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 411
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    const/16 v4, 0x83

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    :goto_29
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CATE_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name_en:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Dashboard"

    const-string v3, "View"

    iget-object v4, v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name_en:Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_c0

    .line 429
    .end local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :goto_58
    if-nez p1, :cond_83

    .line 431
    :try_start_5a
    sget-object v1, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    if-eqz v1, :cond_63

    .line 432
    sget-object v1, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getHistoryByCatch()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_db

    .line 438
    :cond_63
    :goto_63
    :try_start_63
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Menu"

    const-string v3, "View"

    const-string v4, "Setting"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Menu"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 442
    :cond_83
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a6

    .line 443
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Dashboard"

    const-string v3, "View"

    const-string v4, "Hot Privileges"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "Dashboard"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 449
    :cond_a6
    :goto_a6
    return-void

    .line 416
    .restart local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :cond_a7
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f02009f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 417
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_29

    .line 446
    .end local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :catch_c0
    move-exception v1

    goto :goto_a6

    .line 424
    :cond_c2
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f02009f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 425
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_d9} :catch_c0

    goto/16 :goto_58

    .line 434
    :catch_db
    move-exception v1

    goto :goto_63
.end method
