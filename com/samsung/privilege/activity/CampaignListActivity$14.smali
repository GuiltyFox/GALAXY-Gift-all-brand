.class Lcom/samsung/privilege/activity/CampaignListActivity$14;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$imgCircle:[Landroid/widget/ImageView;

.field private final synthetic val$in_:Landroid/content/Intent;

.field private final synthetic val$paramsShadow:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/content/Intent;Landroid/widget/RelativeLayout$LayoutParams;[Landroid/widget/ImageView;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$in_:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$paramsShadow:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$imgCircle:[Landroid/widget/ImageView;

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 1504
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1499
    return-void
.end method

.method public onPageSelected(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1472
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$in_:Landroid/content/Intent;

    const-string v2, "msg_newbie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$in_:Landroid/content/Intent;

    const-string v2, "msg_newbie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Newbie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1473
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6e

    .line 1474
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$paramsShadow:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$11(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/high16 v4, 0x41300000

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1478
    :goto_38
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$10(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$paramsShadow:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    :cond_43
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-ne p1, v1, :cond_65

    .line 1481
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->contentQT:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$9(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1482
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$10(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-boolean v5, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1485
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 1487
    :cond_65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_66
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_74

    .line 1494
    return-void

    .line 1476
    .end local v0    # "i":I
    :cond_6e
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$paramsShadow:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_38

    .line 1488
    .restart local v0    # "i":I
    :cond_74
    if-ne v0, p1, :cond_83

    .line 1489
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020380

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1487
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1491
    :cond_83
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$14;->val$imgCircle:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02037f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_80
.end method
