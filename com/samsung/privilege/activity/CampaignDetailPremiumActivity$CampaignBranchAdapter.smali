.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;
.super Landroid/widget/BaseAdapter;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CampaignBranchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/PlaceNewDetail;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/PlaceNewDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2551
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/PlaceNewDetail;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2547
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->formatter:Ljava/text/NumberFormat;

    .line 2548
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 2552
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 2553
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    .line 2554
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2568
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f090037

    const/16 v7, 0x8

    .line 2581
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    .line 2583
    .local v2, "placeNewDetail":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const/4 v1, 0x0

    .line 2584
    .local v1, "holder":Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    move-object v3, p2

    .line 2586
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_fb

    .line 2587
    :cond_17
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2588
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;

    .end local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;)V

    .line 2589
    .restart local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    const v4, 0x7f400009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->layoutMain:Landroid/widget/RelativeLayout;

    .line 2590
    const v4, 0x7f40000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    .line 2591
    const v4, 0x7f40000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    .line 2592
    const v4, 0x7f40000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    .line 2593
    const v4, 0x7f40000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->imgIconMap:Landroid/widget/ImageView;

    .line 2596
    :try_start_5d
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$24(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2597
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$24(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2598
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$24(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2600
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2601
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2602
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_ab} :catch_187

    .line 2607
    :goto_ab
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2612
    :goto_ae
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2624
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2625
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2626
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->imgIconMap:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2628
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2629
    .local v0, "color":I
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_RESTAURANT"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 2630
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2640
    :goto_f5
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2649
    return-object v3

    .line 2609
    .end local v0    # "color":I
    :cond_fb
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    check-cast v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;

    .restart local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    goto :goto_ae

    .line 2631
    .restart local v0    # "color":I
    :cond_102
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_DESSERTS"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 2632
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2633
    goto :goto_f5

    :cond_12a
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_BEAUTY"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 2634
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2635
    goto :goto_f5

    :cond_152
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_MUSIC"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 2636
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2637
    goto/16 :goto_f5

    .line 2638
    :cond_17b
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_f5

    .line 2603
    .end local v0    # "color":I
    :catch_187
    move-exception v4

    goto/16 :goto_ab
.end method
