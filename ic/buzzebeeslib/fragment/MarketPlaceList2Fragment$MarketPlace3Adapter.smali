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
    .registers 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1155
    const/4 v7, 0x0

    .line 1157
    .local v7, "campaign":Lic/buzzebeeslib/bean/Campaign;
    :try_start_1
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    move-object v7, v0
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_15} :catch_1f3

    .line 1162
    :goto_15
    const/4 v10, 0x0

    .line 1163
    .local v10, "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    move-object/from16 v13, p2

    .line 1165
    .local v13, "view":Landroid/view/View;
    if-eqz p2, :cond_20

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f9

    .line 1166
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->gInflater:Landroid/view/LayoutInflater;

    sget v2, Lic/buzzebeeslib/R$layout;->bz_market_place_list2_row:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1167
    new-instance v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .end local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    const/4 v1, 0x0

    invoke-direct {v10, p0, v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;)V

    .line 1168
    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    sget v1, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    .line 1169
    sget v1, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    .line 1170
    sget v1, Lic/buzzebeeslib/R$id;->tvType:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    .line 1171
    sget v1, Lic/buzzebeeslib/R$id;->tvPrice:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    .line 1172
    sget v1, Lic/buzzebeeslib/R$id;->tvPoint:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    .line 1173
    sget v1, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    .line 1174
    sget v1, Lic/buzzebeeslib/R$id;->imgRibbon:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    .line 1176
    invoke-virtual {v13, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1183
    :goto_78
    :try_start_78
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/kit55p.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 1185
    .local v9, "font":Landroid/graphics/Typeface;
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1186
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1187
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1188
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1189
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a1} :catch_413

    .line 1201
    .end local v9    # "font":Landroid/graphics/Typeface;
    :goto_a1
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 1202
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "DRAW"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1229
    :goto_c1
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d5

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_315

    .line 1230
    :cond_d5
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EARN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " POINTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :goto_fb
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0e3f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0e3f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    iget-object v2, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1245
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a1

    .line 1246
    :cond_15c
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    :goto_168
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1c1

    .line 1255
    iget-wide v1, v7, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v11, v1

    .line 1256
    .local v11, "intRemain":D
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3b1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3b1

    .line 1257
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_dayremain:I

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1270
    .end local v11    # "intRemain":D
    :cond_1c1
    :goto_1c1
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_403

    .line 1271
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    iget-object v2, v7, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    :goto_1d9
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->access$7(Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v1

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgCampaign:Landroid/widget/ImageView;

    const/4 v4, 0x0

    sget v5, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1281
    return-object v13

    .line 1158
    .end local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .end local v13    # "view":Landroid/view/View;
    :catch_1f3
    move-exception v8

    .line 1159
    .local v8, "e1":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_15

    .line 1178
    .end local v8    # "e1":Ljava/lang/CloneNotSupportedException;
    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    .restart local v13    # "view":Landroid/view/View;
    :cond_1f9
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    check-cast v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;

    .restart local v10    # "holder":Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;
    goto/16 :goto_78

    .line 1204
    :cond_201
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_223

    .line 1205
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "FREE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1207
    :cond_223
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_237

    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 1208
    :cond_237
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "EARN"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1210
    :cond_24f
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_293

    .line 1211
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27b

    .line 1212
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "EARN"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xff

    const/16 v3, 0xae

    const/16 v4, 0xe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1215
    :cond_27b
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "FREE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1218
    :cond_293
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 1219
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1221
    :cond_2b5
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2fd

    .line 1222
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatter:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1225
    :cond_2fd
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvType:Landroid/widget/TextView;

    const/16 v2, 0xdf

    const/16 v3, 0x58

    const/16 v4, 0x28

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c1

    .line 1231
    :cond_315
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_379

    .line 1232
    iget-object v1, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_351

    .line 1233
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EARN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " POINTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fb

    .line 1235
    :cond_351
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " POINTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fb

    .line 1238
    :cond_379
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v4, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " POINTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fb

    .line 1249
    :cond_3a1
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPrice:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvPriceFull:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_168

    .line 1259
    .restart local v11    # "intRemain":D
    :cond_3b1
    const-wide/16 v1, 0x0

    cmpl-double v1, v11, v1

    if-lez v1, :cond_3d6

    const-wide/high16 v1, 0x4024000000000000L

    cmpg-double v1, v11, v1

    if-gez v1, :cond_3d6

    .line 1260
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_itemremain:I

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_1c1

    .line 1262
    :cond_3d6
    iget v1, v7, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3fa

    const-wide/16 v1, 0x0

    cmpl-double v1, v11, v1

    if-lez v1, :cond_3fa

    .line 1263
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_ribbon_new:I

    iget-object v3, p0, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_1c1

    .line 1266
    :cond_3fa
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->imgRibbon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c1

    .line 1274
    .end local v11    # "intRemain":D
    :cond_403
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v1, v10, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment$MarketPlace3Adapter$ViewHolderMarketPlaceRow;->tvCaption:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1d9

    .line 1190
    :catch_413
    move-exception v1

    goto/16 :goto_a1
.end method
