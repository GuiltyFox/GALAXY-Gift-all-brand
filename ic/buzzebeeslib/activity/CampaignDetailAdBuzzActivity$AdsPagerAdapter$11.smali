.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->initialViewVideo(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    .registers 2

    .prologue
    .line 1681
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 1738
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 1685
    return-void
.end method

.method public onPageSelected(I)V
    .registers 11
    .param p1, "i"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1689
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    iget-object v4, v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 1691
    .local v0, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1692
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1694
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    if-eqz v4, :cond_8d

    .line 1696
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$id;->layoutprev_01:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$id;->layoutnext_01:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    iget-object v4, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1700
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-static {v4, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$8(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 1701
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-static {v4, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$9(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 1702
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 1733
    :goto_74
    return-void

    .line 1705
    :cond_75
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-static {v4, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$9(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 1706
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_74

    .line 1709
    :cond_8d
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-boolean v4, v4, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-nez v4, :cond_e1

    .line 1710
    const-string v3, ""

    .line 1711
    .local v3, "txtAlert":Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 1712
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->no_network_connection_toast:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1716
    :goto_bd
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1717
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11$1;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1723
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1724
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1726
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "txtAlert":Ljava/lang/String;
    :cond_e1
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    invoke-static {v4, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$8(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V

    .line 1728
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 1730
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$id;->layoutprev_01:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$id;->layoutnext_01:I

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_74

    .line 1714
    .restart local v3    # "txtAlert":Ljava/lang/String;
    :cond_117
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$11;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v3, v4, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_bd
.end method
