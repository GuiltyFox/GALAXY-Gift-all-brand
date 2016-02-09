.class Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
.super Landroid/widget/BaseAdapter;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CampaignBranchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
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

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V
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
    .line 3400
    .local p2, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/PlaceNewDetail;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3396
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->formatter:Ljava/text/NumberFormat;

    .line 3397
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 3401
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 3402
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    .line 3403
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 3412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3417
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

    .line 3430
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    .line 3432
    .local v2, "placeNewDetail":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const/4 v1, 0x0

    .line 3433
    .local v1, "holder":Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    move-object v3, p2

    .line 3435
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_fb

    .line 3436
    :cond_17
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300af

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3437
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;

    .end local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;)V

    .line 3438
    .restart local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    const v4, 0x7f400009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->layoutMain:Landroid/widget/RelativeLayout;

    .line 3439
    const v4, 0x7f40000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    .line 3440
    const v4, 0x7f40000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    .line 3441
    const v4, 0x7f40000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    .line 3442
    const v4, 0x7f40000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->imgIconMap:Landroid/widget/ImageView;

    .line 3445
    :try_start_5d
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$26(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3446
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$26(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3447
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$26(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3449
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3450
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3451
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_ab} :catch_187

    .line 3456
    :goto_ab
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3461
    :goto_ae
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3473
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvPeopleCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3474
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3475
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->imgIconMap:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3477
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3478
    .local v0, "color":I
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_RESTAURANT"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 3479
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3489
    :goto_f5
    iget-object v4, v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;->tvBranchName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3498
    return-object v3

    .line 3458
    .end local v0    # "color":I
    :cond_fb
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    check-cast v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;

    .restart local v1    # "holder":Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter$ViewHolderCampaignBranch;
    goto :goto_ae

    .line 3480
    .restart local v0    # "color":I
    :cond_102
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_DESSERTS"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 3481
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3482
    goto :goto_f5

    :cond_12a
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_BEAUTY"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 3483
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3484
    goto :goto_f5

    :cond_152
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "GIFT_CAT_MUSIC"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 3485
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3486
    goto/16 :goto_f5

    .line 3487
    :cond_17b
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_f5

    .line 3452
    .end local v0    # "color":I
    :catch_187
    move-exception v4

    goto/16 :goto_ab
.end method
