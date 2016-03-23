.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->initialViewVideo(Lcom/bzbs/lib/survey/bean/AdBuzzItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 3102
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 3042
    return-void
.end method

.method public onPageSelected(I)V
    .registers 11
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 3047
    const/4 v3, 0x1

    .line 3048
    .local v3, "isFinishPage":Z
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, p1, :cond_16

    .line 3049
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v5, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 3097
    :goto_15
    return-void

    .line 3052
    :cond_16
    const/4 v3, 0x0

    .line 3055
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->gAdBuzzItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;

    .line 3057
    .local v0, "adBuzzItem":Lcom/bzbs/lib/survey/bean/AdBuzzItem;
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3058
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3060
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-boolean v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->isVideo:Z

    if-ne v5, v7, :cond_4c

    if-ne p1, v7, :cond_4c

    .line 3061
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgBack:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1200(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3064
    :cond_4c
    if-nez v3, :cond_59

    .line 3065
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->imgNext:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$1100(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3067
    :cond_59
    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraAdItem:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    if-eqz v5, :cond_89

    .line 3069
    iget-object v5, v0, Lcom/bzbs/lib/survey/bean/AdBuzzItem;->campaignExtraAdItem:Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    const-string/jumbo v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 3070
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v5, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 3071
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_15

    .line 3073
    :cond_7d
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    goto :goto_15

    .line 3076
    :cond_89
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-boolean v5, v5, Lcom/bzbs/lib/survey/bean/Campaign;->IsConditionPass:Z

    if-nez v5, :cond_e1

    .line 3077
    const-string/jumbo v4, ""

    .line 3078
    .local v4, "txtAlert":Ljava/lang/String;
    const-string/jumbo v5, "OAT"

    const-string/jumbo v6, "Error part 3"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 3080
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v6, Lcom/bzbs/lib/survey/R$string;->no_network_connection_toast:I

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3084
    :goto_be
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3085
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string/jumbo v6, "OK"

    new-instance v7, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28$1;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3091
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3092
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3094
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "txtAlert":Ljava/lang/String;
    :cond_e1
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->nextPosition:I
    invoke-static {v5, p1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3102(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;I)I

    .line 3095
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gView_pager:Lcom/bzbs/lib/survey/control/CustomPager;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$300(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/control/CustomPager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/bzbs/lib/survey/control/CustomPager;->setPagingEnabled(Z)V

    goto/16 :goto_15

    .line 3082
    .restart local v4    # "txtAlert":Ljava/lang/String;
    :cond_f5
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$28;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v5

    iget-object v4, v5, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_be
.end method
