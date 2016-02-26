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
    .registers 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/bean/CampaignView;

    .line 224
    .local v8, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    const/4 v13, 0x0

    .line 225
    .local v13, "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v15, p2

    .line 227
    .local v15, "view":Landroid/view/View;
    if-eqz p2, :cond_17

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_158

    .line 228
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->gInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300b4

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 229
    new-instance v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .end local v13    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;)V

    .line 230
    .restart local v13    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    const/high16 v2, 0x7f4d0000

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 231
    const v2, 0x7f430002

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    .line 232
    const v2, 0x7f430004

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    .line 233
    const v2, 0x7f430005

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    .line 234
    const v2, 0x7f430001

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    .line 237
    :try_start_62
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7d} :catch_207

    .line 244
    :goto_7d
    invoke-virtual {v15, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    :goto_80
    const v14, 0x7f020320

    .line 251
    .local v14, "resource_back":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080037

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 252
    .local v9, "color":I
    iget-object v2, v8, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GIFT_CAT_RESTAURANT"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080033

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 255
    const v14, 0x7f020321

    .line 275
    :goto_ba
    :try_start_ba
    invoke-virtual {v15, v14}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_204

    .line 280
    :goto_bd
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvAgencyName:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvCampaignName:Landroid/widget/TextView;

    iget-object v4, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 286
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v12, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 287
    .local v12, "formatter":Ljava/text/DecimalFormat;
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    const v6, 0x7f09030f

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    int-to-long v6, v5

    invoke-virtual {v12, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    .end local v12    # "formatter":Ljava/text/DecimalFormat;
    :goto_119
    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v10, v4, v6

    .line 295
    .local v10, "dblRemain":D
    iget v2, v8, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    const/4 v4, 0x2

    if-gt v2, v4, :cond_1fb

    const-wide/16 v4, 0x0

    cmpl-double v2, v10, v4

    if-lez v2, :cond_1fb

    .line 296
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    :goto_142
    invoke-virtual {v8}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlMedium()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$5(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    iget-object v4, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lcom/bitmapfun/util/ImageFetcher;->IMAGE_LOADING_TRANS:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 305
    return-object v15

    .line 246
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v9    # "color":I
    .end local v10    # "dblRemain":D
    .end local v14    # "resource_back":I
    :cond_158
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    check-cast v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;

    .restart local v13    # "holder":Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_80

    .line 256
    .restart local v9    # "color":I
    .restart local v14    # "resource_back":I
    :cond_160
    iget-object v2, v8, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GIFT_CAT_DESSERTS"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 259
    const v14, 0x7f020322

    .line 260
    goto/16 :goto_ba

    :cond_18a
    iget-object v2, v8, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GIFT_CAT_BEAUTY"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 263
    const v14, 0x7f020323

    .line 264
    goto/16 :goto_ba

    :cond_1b4
    iget-object v2, v8, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GIFT_CAT_MUSIC"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080036

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 267
    const v14, 0x7f020324

    .line 268
    goto/16 :goto_ba

    .line 270
    :cond_1de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080037

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 271
    const v14, 0x7f020320

    goto/16 :goto_ba

    .line 291
    :cond_1f2
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->tvRemaining:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_119

    .line 298
    .restart local v10    # "dblRemain":D
    :cond_1fb
    iget-object v2, v13, Lcom/samsung/privilege/activity/AdminCampaignActivity$CampaignListAdapter$ViewHolderMarketPlaceRow;->imageNew:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_142

    .line 276
    .end local v10    # "dblRemain":D
    :catch_204
    move-exception v2

    goto/16 :goto_bd

    .line 240
    .end local v9    # "color":I
    .end local v14    # "resource_back":I
    :catch_207
    move-exception v2

    goto/16 :goto_7d
.end method
