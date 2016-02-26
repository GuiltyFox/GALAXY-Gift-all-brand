.class Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceList2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketPlace3Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    }
.end annotation


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1127
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1124
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    .line 1125
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 1128
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    .line 1130
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lic/buzzebeeslib/bean/Campaign;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1137
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->getItem(I)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1155
    const/4 v8, 0x0

    .line 1157
    .local v8, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    move-object v8, v0
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_17} :catch_1f5

    .line 1162
    :goto_17
    const/4 v11, 0x0

    .line 1163
    .local v11, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v14, p2

    .line 1165
    .local v14, "view":Landroid/view/View;
    if-eqz p2, :cond_22

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1fb

    .line 1166
    :cond_22
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_market_place_list2_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1167
    new-instance v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v2, 0x0

    invoke-direct {v11, p0, v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1168
    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1169
    sget v2, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1170
    sget v2, Lic/buzzebeeslib/R$id;->tvType:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    .line 1171
    sget v2, Lic/buzzebeeslib/R$id;->tvPrice:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    .line 1172
    sget v2, Lic/buzzebeeslib/R$id;->tvPoint:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    .line 1173
    sget v2, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    .line 1174
    sget v2, Lic/buzzebeeslib/R$id;->imgRibbon:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1176
    invoke-virtual {v14, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1183
    :goto_7a
    :try_start_7a
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    .line 1185
    .local v10, "font":Landroid/graphics/Typeface;
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1186
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1187
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1188
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1189
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a3} :catch_415

    .line 1201
    .end local v10    # "font":Landroid/graphics/Typeface;
    :goto_a3
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    .line 1202
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "DRAW"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1229
    :goto_c3
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 1230
    :cond_d7
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EARN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " POINTS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :goto_fd
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0e3f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0e3f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    iget-object v3, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1245
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15e

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a3

    .line 1246
    :cond_15e
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    :goto_16a
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1c3

    .line 1255
    iget-wide v2, v8, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v12, v2

    .line 1256
    .local v12, "intRemain":D
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3b3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3b3

    .line 1257
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_dayremain:I

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1270
    .end local v12    # "intRemain":D
    :cond_1c3
    :goto_1c3
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_405

    .line 1271
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v3, v8, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    :goto_1db
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v2

    invoke-virtual {v8}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1281
    return-object v14

    .line 1158
    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v14    # "view":Landroid/view/View;
    :catch_1f5
    move-exception v9

    .line 1159
    .local v9, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v9}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_17

    .line 1178
    .end local v9    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v14    # "view":Landroid/view/View;
    :cond_1fb
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v11    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_7a

    .line 1204
    :cond_203
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 1205
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "FREE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1207
    :cond_225
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_239

    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_251

    .line 1208
    :cond_239
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "EARN"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1210
    :cond_251
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_295

    .line 1211
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 1212
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "EARN"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xae

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1215
    :cond_27d
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "FREE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1218
    :cond_295
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 1219
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1221
    :cond_2b7
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 1222
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v5, 0x5

    invoke-static {v6, v7, v5}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1225
    :cond_2ff
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v3, 0xdf

    const/16 v4, 0x58

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c3

    .line 1231
    :cond_317
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37b

    .line 1232
    iget-object v2, v8, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_353

    .line 1233
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EARN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " POINTS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    .line 1235
    :cond_353
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "USE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " POINTS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    .line 1238
    :cond_37b
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "USE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v5, v8, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " POINTS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    .line 1249
    :cond_3a3
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16a

    .line 1259
    .restart local v12    # "intRemain":D
    :cond_3b3
    const-wide/16 v2, 0x0

    cmpl-double v2, v12, v2

    if-lez v2, :cond_3d8

    const-wide/high16 v2, 0x4024000000000000L

    cmpg-double v2, v12, v2

    if-gez v2, :cond_3d8

    .line 1260
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_itemremain:I

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_1c3

    .line 1262
    :cond_3d8
    iget v2, v8, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3fc

    const-wide/16 v2, 0x0

    cmpl-double v2, v12, v2

    if-lez v2, :cond_3fc

    .line 1263
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v3, Lic/buzzebeeslib/R$drawable;->bz_ribbon_new:I

    iget-object v4, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v4}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_1c3

    .line 1266
    :cond_3fc
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c3

    .line 1274
    .end local v12    # "intRemain":D
    :cond_405
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v2, v11, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1db

    .line 1190
    :catch_415
    move-exception v2

    goto/16 :goto_a3
.end method
