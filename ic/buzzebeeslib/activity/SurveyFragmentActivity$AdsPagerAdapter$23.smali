.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewPhoto(Lic/buzzebeeslib/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;)Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;
    .registers 2

    .prologue
    .line 1903
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 1981
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 1907
    return-void
.end method

.method public onPageSelected(I)V
    .registers 12
    .param p1, "i"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1911
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/AdBuzzItem;

    .line 1913
    .local v0, "adBuzzItem":Lic/buzzebeeslib/bean/AdBuzzItem;
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1914
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1916
    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    if-eqz v5, :cond_11a

    .line 1918
    iget-object v5, v0, Lic/buzzebeeslib/bean/AdBuzzItem;->campaignExtraAdItem:Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1919
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 1976
    :cond_43
    :goto_43
    return-void

    .line 1923
    :cond_44
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    invoke-static {v5, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 1924
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    .line 1927
    const/4 v3, 0x0

    .line 1928
    .local v3, "intLast":I
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_8f

    .line 1929
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 1931
    :cond_8f
    if-lez v3, :cond_9e

    .line 1932
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1935
    :cond_9e
    const-string v5, "campaign.adbuzz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onPageSelected "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    if-nez p1, :cond_d2

    .line 1937
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1938
    if-eq p1, v3, :cond_43

    .line 1939
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_43

    .line 1942
    :cond_d2
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    iget-boolean v5, v5, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->isVideo:Z

    if-eqz v5, :cond_fd

    const/4 v5, 0x1

    if-ne p1, v5, :cond_fd

    .line 1943
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1947
    :goto_ec
    if-ne p1, v3, :cond_10b

    .line 1948
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_43

    .line 1945
    :cond_fd
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$7(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ec

    .line 1950
    :cond_10b
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$6(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_43

    .line 1955
    .end local v3    # "intLast":I
    :cond_11a
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-boolean v5, v5, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-nez v5, :cond_16e

    .line 1956
    const-string v4, ""

    .line 1957
    .local v4, "txtAlert":Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_186

    .line 1958
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    sget v6, Lic/buzzebeeslib/R$string;->no_network_connection_toast:I

    invoke-virtual {v5, v6}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1962
    :goto_14a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1963
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "OK"

    new-instance v7, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23$1;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1969
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1970
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1973
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "txtAlert":Ljava/lang/String;
    :cond_16e
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    invoke-static {v5, p1}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity;I)V

    .line 1974
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$3(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lic/buzzebeeslib/control/CustomPager;->setPagingEnabled(Z)V

    goto/16 :goto_43

    .line 1960
    .restart local v4    # "txtAlert":Ljava/lang/String;
    :cond_186
    iget-object v5, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;->access$1(Lic/buzzebeeslib/activity/SurveyFragmentActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v4, v5, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_14a
.end method
