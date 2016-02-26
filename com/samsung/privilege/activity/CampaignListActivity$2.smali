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

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 468
    return-void
.end method

.method public onPageSelected(I)V
    .registers 7
    .param p1, "arg0"    # I

    .prologue
    .line 420
    const/4 v1, 0x2

    if-lt p1, v1, :cond_4f

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$listCats:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 423
    .local v0, "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    iget v1, v0, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    sget v2, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    if-ne v1, v2, :cond_35

    .line 424
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 425
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    const/16 v4, 0x83

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_4d

    .line 443
    .end local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :goto_29
    if-nez p1, :cond_34

    .line 445
    :try_start_2b
    sget-object v1, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    if-eqz v1, :cond_34

    .line 446
    sget-object v1, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getHistoryByCatch()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_67

    .line 463
    :cond_34
    :goto_34
    return-void

    .line 430
    .restart local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 431
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_29

    .line 460
    .end local v0    # "objCampaignCategoryDynamic":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    :catch_4d
    move-exception v1

    goto :goto_34

    .line 438
    :cond_4f
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 439
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$2;->val$currText:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_66} :catch_4d

    goto :goto_29

    .line 448
    :catch_67
    move-exception v1

    goto :goto_34
.end method
