.class Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AdminCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AdminCampaignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CampaignListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignView;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/CampaignView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignView;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 197
    iput-object p3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->data:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    .line 199
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 210
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/privilege/bean/CampaignView;

    .line 224
    .local v7, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    const/4 v12, 0x0

    .line 225
    .local v12, "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v14, p2

    .line 227
    .local v14, "view":Landroid/view/View;
    if-eqz p2, :cond_15

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_140

    .line 228
    :cond_15
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b4

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 229
    new-instance v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .end local v12    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    invoke-direct {v12, p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;)V

    .line 230
    .restart local v12    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    const/high16 v1, 0x7f4d0000

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 231
    const v1, 0x7f430002

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f430004

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f430005

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f430001

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    .line 237
    :try_start_5c
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_71} :catch_1e1

    .line 244
    :goto_71
    invoke-virtual {v14, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    :goto_74
    const v13, 0x7f02031e

    .line 251
    .local v13, "resource_back":I
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 252
    .local v8, "color":I
    iget-object v1, v7, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GIFT_CAT_RESTAURANT"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 254
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 255
    const v13, 0x7f02031f

    .line 275
    :goto_a8
    :try_start_a8
    invoke-virtual {v14, v13}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_1de

    .line 280
    :goto_ab
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 286
    new-instance v11, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v11, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 287
    .local v11, "formatter":Ljava/text/DecimalFormat;
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    const v5, 0x7f0a0308

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    int-to-long v4, v4

    invoke-virtual {v11, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    .end local v11    # "formatter":Ljava/text/DecimalFormat;
    :goto_103
    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v9, v3, v5

    .line 295
    .local v9, "dblRemain":D
    iget v1, v7, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1d5

    const-wide/16 v3, 0x0

    cmpl-double v1, v9, v3

    if-lez v1, :cond_1d5

    .line 296
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    :goto_12c
    invoke-virtual {v7}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlMedium()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "img_url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$5(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    iget-object v3, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 305
    return-object v14

    .line 246
    .end local v2    # "img_url":Ljava/lang/String;
    .end local v8    # "color":I
    .end local v9    # "dblRemain":D
    .end local v13    # "resource_back":I
    :cond_140
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    check-cast v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .restart local v12    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_74

    .line 256
    .restart local v8    # "color":I
    .restart local v13    # "resource_back":I
    :cond_148
    iget-object v1, v7, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GIFT_CAT_DESSERTS"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 258
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 259
    const v13, 0x7f020320

    .line 260
    goto/16 :goto_a8

    :cond_16e
    iget-object v1, v7, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GIFT_CAT_BEAUTY"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 262
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 263
    const v13, 0x7f020321

    .line 264
    goto/16 :goto_a8

    :cond_194
    iget-object v1, v7, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GIFT_CAT_MUSIC"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 266
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 267
    const v13, 0x7f020322

    .line 268
    goto/16 :goto_a8

    .line 270
    :cond_1ba
    iget-object v1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 271
    const v13, 0x7f02031e

    goto/16 :goto_a8

    .line 291
    :cond_1cc
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_103

    .line 298
    .restart local v9    # "dblRemain":D
    :cond_1d5
    iget-object v1, v12, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12c

    .line 276
    .end local v9    # "dblRemain":D
    :catch_1de
    move-exception v1

    goto/16 :goto_ab

    .line 240
    .end local v8    # "color":I
    .end local v13    # "resource_back":I
    :catch_1e1
    move-exception v1

    goto/16 :goto_71
.end method
